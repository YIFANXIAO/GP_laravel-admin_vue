<template>
    <div>
        <el-row :gutter="40">
            <el-col :span="2"><span class="col-span">课程全称</span></el-col>
            <el-col :span="7"><el-input v-model="coursePageData.full_name" placeholder="请输入课程全称" /></el-col>
            <el-col :span="2"><span class="col-span">课程属性</span></el-col>
            <el-col :span="7"><el-input v-model="coursePageData.attribute" placeholder="请输入课程属性" /></el-col>
            <el-col :span="2"><el-button type="primary" class="search-btn" @click="formSearch">查询</el-button></el-col>
        </el-row>
        <el-table
                :data="tableData"
                stripe
                border
                style="width: 100%">
            <el-table-column
                    prop="full_name"
                    label="课程全称"
                    width="170">
            </el-table-column>
            <el-table-column
                    prop="attribute"
                    label="课程属性"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="credit"
                    label="学分"
                    width="60">
            </el-table-column>
            <el-table-column
                    prop="course_type_name"
                    label="课程类型"
                    width="80">
            </el-table-column>
            <el-table-column
                    prop="location"
                    label="授课地点"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="Schedule_text"
                    label="时间安排">
            </el-table-column>
<!--            <el-table-column-->
<!--                    fixed="right"-->
<!--                    label="操作"-->
<!--                    width="100">-->
<!--                <template slot-scope="scope">-->
<!--                    <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/squad_detail/' + scope.row.id">查看分数</a>-->
<!--                </template>-->
<!--            </el-table-column>-->
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

    import { getCoursesInfoByUser } from "../api/front_all";

    export default {
        created() {
            this.loadData(this.coursePageData);
        },
        data() {
            return {
                coursePageData : {
                    full_name : '',
                    attribute : '',
                    row : 5,
                    page : 1,
                },
                tableData: [],
                baseHttpUrl : this.COMMON.httpUrl,
                currentPage: 1,
                currentSize: 2,
                total: null,
                isSizeChange: false
            }
        },
        methods : {
            loadData(coursePageData) {
                getCoursesInfoByUser(coursePageData)
                    .then(response => {
                    this.tableData = response.data;
                    this.total = response.total;
                    this.currentPage = response.current_page;
                }).catch(err => {
                    console.log(err)
                })
            },
            handleSizeChange(val) {
                this.coursePageData.row = val;
                this.coursePageData.page = 1;
                this.isSizeChange = true;
                this.loadData(this.coursePageData);
            },
            handleCurrentChange(val) {
                if (!this.isSizeChange) {
                    this.coursePageData.page = val;
                    this.loadData(this.coursePageData);
                } else {
                    this.coursePageData.page = 1;
                    this.isSizeChange = false;
                }
            },
            formSearch() {
                this.coursePageData.page = 1;
                this.loadData(this.coursePageData);
            }
        }

    }
</script>

<style scoped>

</style>