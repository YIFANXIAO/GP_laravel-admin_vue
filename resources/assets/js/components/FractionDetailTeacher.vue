<template>
    <div>
        <div style="margin: 0px 0px 15px 0px; font-size:25px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
            各班级分数详情
        </div>

        <div>
            <el-card>
                <el-collapse accordion v-model="activeNames">
                    <div style="margin: 0px 0px 0px 15px;" v-for="squadFraction in squadFractions">
                        <el-collapse-item>
                            <template slot="title">
                                <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
                                    <i class="el-icon-data-analysis"></i>&nbsp;&nbsp;{{ squadFraction.name }}
                                </div>
                            </template>
                            <div style="margin: 0px 0px 10px 0px;" v-for=" fraction in squadFraction.data">
                                <el-col :span="8" >
                                    <el-card shadow="always" style="margin : 15px">
                                        <div style="font-size:18px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;" slot="header" class="clearfix">
                                            <span>{{ fraction.name }}：{{fraction.is_complete}}</span>
                                        </div>
                                        <div style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;" class="text item">
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
                                        stripe
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
            </el-card>
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