<template>
    <div>
        <el-collapse v-model="this.activeNames" accordion>
            <el-collapse-item name="1">
                <template slot="title">
                    <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        &nbsp;<i class="el-icon-data-analysis"></i>&nbsp;&nbsp;分析概况
                    </div>
                </template>
                <div style="margin: 0px 10px 0px 10px;" v-for=" fraction in fractions">
                    <el-col :span="12" >
                        <el-card shadow="always" style="margin: 0px 10px 10px 0px;">
                            <div slot="header" class="clearfix">
                                <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    {{ fraction.name }}：{{fraction.isComplete}}
                                </div>
                            </div>
                            <div class="text item">
                                <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    {{ fraction.fraction }}
                                </div>
                            </div>
                        </el-card>
                    </el-col>
                </div>
            </el-collapse-item>
            <el-collapse-item name="2">
                <template slot="title">
                    <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                        &nbsp;<i class="el-icon-s-grid"></i>&nbsp;&nbsp;分数详情
                    </div>
                </template>
                <div style="margin: 0px 10px 0px 10px;">
                    <el-row style="margin: 20px 0px 20px 0px;">
                        <el-col :span="11">
                            <el-col :span = '6'>
                                <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    分数类型：
                                </div>
                            </el-col>
                            <el-col :span = '16' style="margin: 0px 10px 0px 0px;">
                                <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    <el-input v-model="fractionListRequestData.cal_type_name" placeholder="请输入分数类型" />
                                </div>
                            </el-col>

                        </el-col>
                        <el-col :span="11">
                            <el-col :span = '6'>
                                <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    次序：
                                </div>
                            </el-col>
                            <el-col :span = '16' style="margin: 0px 10px 0px 0px;">
                                <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    <el-input v-model="fractionListRequestData.order" placeholder="请输入次序" />
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
                            :data="fractionList"
                            height="280"
                            border
                            stripe
                            style="width: 100%">
                        <el-table-column
                                prop="user_name"
                                label="学生姓名"
                                width="180">
                        </el-table-column>
                        <el-table-column
                                prop="full_name"
                                label="课程名称"
                                width="180">
                        </el-table-column>
                        <el-table-column
                                prop="name"
                                label="分数类型"
                                width="180">
                        </el-table-column>
                        <el-table-column
                                prop="order"
                                label="次序"
                                width="180">
                        </el-table-column>
                        <el-table-column
                                prop="fraction"
                                label="分数"
                                width="180">
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
            </el-collapse-item>
        </el-collapse>
    </div>
</template>

<script>

    import { getFormulaLeftDatas, getFractionListByUser, backToCourseListView } from "../api/front_all";

    export default {
        created() {
            this.getFormulaLeftData(this.fractionRequestData);
            this.loadData(this.fractionListRequestData);
        },
        data() {
            return {
                fractionRequestData : {
                    course_id : this.$parent.course_id,
                },
                fractionListRequestData : {
                    course_id : this.$parent.course_id,
                    cal_type_name : '',
                    order : '',
                    row : 5,
                    page : 1,
                },
                course_id : this.$parent.course_id,
                fractions : [],
                fractionList : [],
                currentPage: 1,
                currentSize: 2,
                total: null,
                isSizeChange: false,
                activeNames: ['1']
            }
        },
        methods : {
            goBack() {
                backToCourseListView();
            },
            getFormulaLeftData(fractionRequestData)
            {
                getFormulaLeftDatas(fractionRequestData)
                    .then(response => {
                        this.fractions = response;
                })
            },
            loadData( fractionListRequestData )
            {
                getFractionListByUser(fractionListRequestData)
                    .then(response => {
                        this.fractionList = response.data;
                        this.total = response.total;
                        this.currentPage = response.current_page;
                    })
            },
            handleSizeChange(val) {
                this.fractionListRequestData.row = val;
                this.fractionListRequestData.page = 1;
                this.isSizeChange = true;
                this.loadData(this.fractionListRequestData);
            },
            handleCurrentChange(val) {
                if (!this.isSizeChange) {
                    this.fractionListRequestData.page = val;
                    this.loadData(this.fractionListRequestData);
                } else {
                    this.fractionListRequestData.page = 1;
                    this.isSizeChange = false;
                }
            },
            formSearch() {
                this.fractionListRequestData.page = 1;
                this.loadData(this.fractionListRequestData);
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