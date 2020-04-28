<template>
    <div>
        <el-row :gutter="12">
            <el-col :span="12">
                <el-card shadow="always" style="margin: 0px 10px 15px 0px;">
                    <div slot="header" class="clearfix">
                        <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                            {{ this.singleSquad.name }}
                        </div>
                    </div>
                    <div class="text item">
                        <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                            {{ this.singleSquad.info }}
                        </div>
                    </div>
                </el-card>
            </el-col>
            <el-col :span="12">
                <el-card shadow="always" style="margin: 0px 0px 10px 10px;">
                    <div slot="header" class="clearfix">
                        <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                            {{ this.singlePeofession.full_name }}
                        </div>
                    </div>
                    <div class="text item">
                        <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                            {{ this.singlePeofession.intro }}
                        </div>
                    </div>
                </el-card>
            </el-col>
        </el-row>

        <div style="font-size:20px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
            班级成员
        </div>

        <el-divider></el-divider>

        <el-row style="margin: 0px 0px 20px 0px;">
            <el-col :span="11">
                <el-col :span = '6'>
                    <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        姓名：
                    </div>
                </el-col>
                <el-col :span = '16' style="margin: 0px 10px 0px 0px;">
                    <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        <el-input v-model="studentPageData.name" placeholder="请输入姓名" />
                    </div>
                </el-col>

            </el-col>
            <el-col :span="11">
                <el-col :span = '6'>
                    <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        学号：
                    </div>
                </el-col>
                <el-col :span = '16' style="margin: 0px 10px 0px 0px;">
                    <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        <el-input v-model="studentPageData.username" placeholder="请输入学号" />
                    </div>
                </el-col>
            </el-col>
            <el-col :span="2">
                <el-button type="primary" class="search-btn" @click="formSearch">
                    查询
                </el-button>
            </el-col>
        </el-row>

        <el-table
                :data="students"
                height="280"
                border
                stripe
                style="width: 100%">
            <el-table-column
                    prop="squad_name"
                    label="班级"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="姓名"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="username"
                    label="学号"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="created_at"
                    label="创建日期">
            </el-table-column>
        </el-table>
        <div class="block" style="margin: 15px 0px 0px 0px;">
            <el-pagination
                background
                :current-page.sync="currentPage"
                :page-sizes="[5,10,15]"
                :page-size.sync="currentSize"
                layout="total, prev, pager, next,sizes, jumper"
                :total="total"
                @size-change="handleSizeChange"
                @current-change="handleCurrentChange"
            />
        </div>
    </div>
</template>

<script>

    import { getSquadInfo, getProfessionInfo, getSquadStudents } from "../api/front_all";

    export default {
        created() {
            this.getSingleSquad();
            this.getSingleProfession();
            this.loadData(this.studentPageData);
        },
        data() {
            return {
                studentPageData : {
                    squad_id : this.$parent.squad_id,
                    name : '',
                    username : '',
                    row : 5,
                    page : 1,
                },
                squad_id : this.$parent.squad_id,
                singleSquad : {},
                singlePeofession : {},
                students: [],
                currentPage: 1,
                currentSize: 2,
                total: null,
                isSizeChange: false
            }
        },
        methods : {
            getSingleSquad() {
                getSquadInfo(this.squad_id).then(response => {
                    this.singleSquad = response[0];
                })
            },
            getSingleProfession() {
                getProfessionInfo(this.squad_id).then(response => {
                    this.singlePeofession = response[0];
                })
            },
            loadData(studentPageData) {
                getSquadStudents(studentPageData)
                    .then(response => {
                        this.students = response.data;
                        this.total = response.total;
                        this.currentPage = response.current_page;
                    })
            },
            handleSizeChange(val) {
                this.studentPageData.row = val;
                this.studentPageData.page = 1;
                this.isSizeChange = true;
                this.loadData(this.studentPageData);
            },
            handleCurrentChange(val) {
                if (!this.isSizeChange) {
                    this.studentPageData.page = val;
                    this.loadData(this.studentPageData);
                } else {
                    this.studentPageData.page = 1;
                    this.isSizeChange = false;
                }
            },
            formSearch() {
                this.studentPageData.page = 1;
                this.loadData(this.studentPageData);
            }
        }

    }
</script>

<style>
    .text {
        font-size: 14px;
    }

    .item {
        margin-bottom: 10px;
    }
</style>