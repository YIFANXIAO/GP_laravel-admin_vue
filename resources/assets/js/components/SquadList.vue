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
                tableData: []
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