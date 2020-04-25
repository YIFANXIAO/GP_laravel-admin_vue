<template>
    <div>
<!--        <h3>学生版-分数详情页</h3>-->
<!--        <h3>{{ this.course_id }}</h3>-->

        <div v-for=" fraction in fractions">
            <el-col :span="12" >
                <el-card shadow="always" style="margin : 15px">
                    <div slot="header" class="clearfix">
                        <span>{{ fraction.name }}：{{fraction.isComplete}}</span>
                    </div>
                    <div class="text item">
                        <span>{{ fraction.fraction }}</span>
                    </div>
                </el-card>
            </el-col>
        </div>
        <el-row :gutter="40">
            <el-col :span="2"><span class="col-span">分数类型</span></el-col>
            <el-col :span="7"><el-input v-model="fractionListRequestData.cal_type_name" placeholder="请输入分数类型" /></el-col>
            <el-col :span="1"><span class="col-span">次序</span></el-col>
            <el-col :span="7"><el-input v-model="fractionListRequestData.order" placeholder="请输入次序" /></el-col>
            <el-col :span="2"><el-button type="primary" class="search-btn" @click="formSearch">查询</el-button></el-col>
        </el-row>
        <el-table
                :data="fractionList"
                height="280"
                border
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

    import { getFormulaLeftDatas, getFractionListByUser } from "../api/front_all";

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
                isSizeChange: false
            }
        },
        methods : {
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