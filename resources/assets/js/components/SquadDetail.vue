<template>
    <div>
<!--        <h3>班级详情</h3>-->
        <el-row :gutter="12">
            <el-col :span="12">
                <el-card shadow="always">
                    <div slot="header" class="clearfix">
                        <span>{{ this.singleSquad.name }}</span>
                    </div>
                    <div class="text item">
                        <span>{{ this.singleSquad.info }}</span>
                    </div>
                </el-card>
            </el-col>
            <el-col :span="12">
                <el-card shadow="always">
                    <div slot="header" class="clearfix">
                        <span>{{ this.singlePeofession.full_name }}</span>
                    </div>
                    <div class="text item">
                        <span>{{ this.singlePeofession.intro }}</span>
                    </div>
                </el-card>
            </el-col>
        </el-row>

        <el-divider content-position="left">班级成员</el-divider>

        <el-row :gutter="40">
            <el-col :span="1"><span class="col-span">姓名</span></el-col>
            <el-col :span="7"><el-input v-model="studentPageData.name" placeholder="请输入姓名" /></el-col>
            <el-col :span="1"><span class="col-span">学号</span></el-col>
            <el-col :span="7"><el-input v-model="studentPageData.username" placeholder="请输入学号" /></el-col>
            <el-col :span="2"><el-button type="primary" class="search-btn" @click="formSearch">查询</el-button></el-col>
        </el-row>
        <el-table
                :data="students"
                height="280"
                border
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
        <div class="block">
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