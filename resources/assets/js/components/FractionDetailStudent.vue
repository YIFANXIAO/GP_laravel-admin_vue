<template>
    <div>
<!--        <h3>学生版-分数详情页</h3>-->
<!--        <h3>{{ this.course_id }}</h3>-->

        <div v-for=" fraction in fractions">
            <el-col :span="12" >
                <el-card shadow="always" style="margin : 15px">
                    <div slot="header" class="clearfix">
                        <span>{{ fraction.name }}/{{fraction.isComplete}}</span>
                    </div>
                    <div class="text item">
                        <span>{{ fraction.fraction }}</span>
                    </div>
                </el-card>
            </el-col>
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
                fractions : [],
            }
        },
        methods : {
            getFormulaLeftData(fractionRequestData)
            {
                getFormulaLeftDatas(fractionRequestData)
                    .then(response => {
                        this.fractions = response;
                })
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