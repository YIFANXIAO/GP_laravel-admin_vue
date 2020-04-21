<template>
    <el-table
            :data="tableData"
            stripe
            border
            style="width: 100%">
        <el-table-column
                prop="name"
                label="班级名称"
                width="210">
        </el-table-column>
        <el-table-column
                prop="info"
                label="班级介绍"
                width="210">
        </el-table-column>
        <el-table-column
                prop="updated_at"
                label="修改日期">
        </el-table-column>
        <el-table-column
                fixed="right"
                label="操作"
                width="120">
            <template slot-scope="scope">
<!--                <el-button-->
<!--                        @click.native.prevent="squadDetailView(scope.$index, tableData)"-->
<!--                        type="text"-->
<!--                        size="small">-->
<!--                    移除-->
<!--                </el-button>-->
<!--                <el-link v-bind:href="baseHttpUrl+scope.row.id" :underline="false">查看详情</el-link>-->
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
            squadDetailView(index, rows) {
                return redirect('/articles');
                // redirect: '/articles';
                // rows[index].id;
                // rows.splice(index, 1);
            }
        }

    }
</script>

<style scoped>

</style>