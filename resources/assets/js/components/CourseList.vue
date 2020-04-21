<template>
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
<!--        <el-table-column-->
<!--                prop="info"-->
<!--                label="授课教师"-->
<!--                width="170">-->
<!--        </el-table-column>-->
        <el-table-column
                prop="location"
                label="授课地点"
                width="150">
        </el-table-column>
<!--        <el-table-column-->
<!--                prop="info"-->
<!--                label="授课班级"-->
<!--                width="170">-->
<!--        </el-table-column>-->
        <el-table-column
                prop="Schedule_text"
                label="时间安排">
        </el-table-column>
        <el-table-column
                fixed="right"
                label="操作"
                width="100">
            <template slot-scope="scope">
                <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/squad_detail/' + scope.row.id">查看分数</a>
            </template>
        </el-table-column>
    </el-table>
</template>

<script>

    import { getCoursesInfoByUser } from "../api/front_all";

    export default {
        created() {
            this.getCourses();
        },
        data() {
            return {
                tableData: [],
                baseHttpUrl : this.COMMON.httpUrl
            }
        },
        methods : {
            getCourses() {
                getCoursesInfoByUser().then(response => {
                    this.tableData = response;
                }).catch(err => {
                    console.log(err)
                })
            },
        }

    }
</script>

<style scoped>

</style>