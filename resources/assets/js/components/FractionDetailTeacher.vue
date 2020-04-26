<template>
    <div>
<!--        <h3>教师版-分数详情页</h3>-->
<!--        <h3>{{ this.course_id }}</h3>-->
        <div>
            <el-collapse accordion style="margin : 15px">
                <div v-for="squadFraction in squadFractions">
                    <el-collapse-item>
                        <template slot="title">
                            {{ squadFraction.name }}
                        </template>
                        <div v-for=" fraction in squadFraction.data">
                            <el-col :span="8" >
                                <el-card shadow="always" style="margin : 15px">
                                    <div slot="header" class="clearfix">
                                        <span>{{ fraction.name }}：{{fraction.is_complete}}</span>
                                    </div>
                                    <div class="text item">
                                        <span>{{ fraction.source }}</span>
                                    </div>
                                </el-card>
                            </el-col>
                        </div>
                        <div>
                            <el-table
                                    :data="squadFraction.fractionLists"
                                    height="280"
                                    border
                                    style="width: 100%">
                                <el-table-column
                                        prop="stu_ID"
                                        label="学号"
                                        width="150">
                                </el-table-column>
                                <el-table-column
                                        prop="stu_name"
                                        label="学生姓名"
                                        width="150">
                                </el-table-column>
                                <el-table-column
                                        prop="is_complete"
                                        label="是否最终成绩"
                                        width="150">
                                </el-table-column>
                                <el-table-column
                                        prop="cur_fraction"
                                        label="当前分数">
                                </el-table-column>
                            </el-table>
                        </div>
                    </el-collapse-item>
                </div>
            </el-collapse>
        </div>
    </div>
</template>

<script>

    import { getFormulaLeftDatas } from "../api/front_all";

    export default {
        created() {
            this.getFormulaLeftData(this.fractionRequestData);
        },
        data() {
            return {
                fractionRequestData : {
                    course_id : this.$parent.course_id,
                },
                course_id : this.$parent.course_id,
                activeNames: ['1'],
                squadFractions : []
            }
        },
        methods : {
            getFormulaLeftData(fractionRequestData)
            {
                getFormulaLeftDatas(fractionRequestData)
                    .then(response => {
                        this.squadFractions = response;
                    })
            },
            handleChange(val) {
                console.log(val);
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