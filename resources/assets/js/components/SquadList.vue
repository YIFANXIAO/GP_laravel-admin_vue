<template>
    <div>
        <el-row :gutter="40">
            <el-col :span="2"><span class="col-span">专业名称</span></el-col>
            <el-col :span="7"><el-input v-model="squadPageData.profession_name" placeholder="请输入专业名称" /></el-col>
            <el-col :span="2"><span class="col-span">班级名称</span></el-col>
            <el-col :span="7"><el-input v-model="squadPageData.squad_name" placeholder="请输入班级名称" /></el-col>
            <el-col :span="2"><el-button type="primary" class="search-btn" @click="formSearch">查询</el-button></el-col>
        </el-row>
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

    import { getSquadByUser } from "../api/front_all";

    export default {
        created() {
            this.loadData(this.squadPageData);
        },
        data() {
            return {
                squadPageData : {
                    squad_name : '',
                    profession_name : '',
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
            loadData(squadPageData) {
                getSquadByUser(squadPageData)
                    .then(response => {
                    this.tableData = response.data;
                    this.total = response.total;
                    this.currentPage = response.current_page;
                }).catch(err => {
                    console.log(err)
                })
            },
            handleSizeChange(val) {
                this.squadPageData.row = val;
                this.squadPageData.page = 1;
                this.isSizeChange = true;
                this.loadData(this.squadPageData);
            },
            handleCurrentChange(val) {
                if (!this.isSizeChange) {
                    this.squadPageData.page = val;
                    this.loadData(this.squadPageData);
                } else {
                    this.squadPageData.page = 1;
                    this.isSizeChange = false;
                }
            },
            formSearch() {
                this.squadPageData.page = 1;
                this.loadData(this.squadPageData);
            }
        }

    }
</script>

<style scoped>

</style>