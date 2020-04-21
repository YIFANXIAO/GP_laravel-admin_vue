<template>
    <el-table
            :data="tableData"
            stripe
            border
            style="width: 100%">
        <el-table-column
                prop="profession_name"
                label="专业名称"
                width="170">
        </el-table-column>
        <el-table-column
                prop="name"
                label="班级名称"
                width="170">
        </el-table-column>
        <el-table-column
                prop="info"
                label="班级介绍"
                width="170">
        </el-table-column>
        <el-table-column
                prop="updated_at"
                label="修改日期">
        </el-table-column>
        <el-table-column
                fixed="right"
                label="操作"
                width="100">
            <template slot-scope="scope">
                <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/squad_detail/' + scope.row.id">查看详情</a>
            </template>
        </el-table-column>
    </el-table>
</template>

<script>

    import { getSquadByUser } from "../api/front_all";

    export default {
        created() {
            this.getSquads();
        },
        data() {
            return {
                tableData: [],
                baseHttpUrl : this.COMMON.httpUrl
            }
        },
        methods : {
            getSquads() {
                getSquadByUser().then(response => {
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