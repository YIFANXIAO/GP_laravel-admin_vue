<template>
    <div>
        <el-card :body-style="{ padding: '8px' }">
            <el-row>
                <el-col :span="8">
                    <img v-bind:src="baseHttpUrl + '/uploads/' + this.$parent.banner" height="160" width="200" alt="网络图片" />
                </el-col>
                <el-col :span="16">
                    <div style="padding: 15px;">
                        <p>{{this.$parent.title}}/{{this.$parent.created_at}}</p>
                        <a v-bind:href="baseHttpUrl + '/article_detail/' + this.$parent.id">{{this.$parent.title}}</a>
                        <p>{{this.$parent.intro}}</p>
                    </div>
                </el-col>
            </el-row>
        </el-card>

    </div>
</template>

<script>
    export default {
        created() {

        },
        data() {
            return {
                baseHttpUrl : this.COMMON.httpUrl
            }
        },
        methods : {

        }
    }
</script>

<style>
    .el-col {
        border-radius: 4px;
    }
    .bg-purple-dark {
        background: #99a9bf;
    }
    .bg-purple {
        background: #d3dce6;
    }
    .bg-purple-light {
        background: #e5e9f2;
    }
    .grid-content {
        border-radius: 4px;
        min-height: 36px;
    }
    .row-bg {
        padding: 10px 0;
        background-color: #f9fafc;
    }
    .grid-content-article-list {
        border-radius: 2px;
        min-height: 240px;
    }
    .bg-article-list {
        background: #CDEBE6;
    }
    .ArticleTitle {
        line-height: 90px;
        text-align:left;
        font-weight: bold;
        font-size: 50px;
        font-family: "SimHei";
        color: black;
    }
    .ArticleIntro {
        line-height: 30px;
        text-align:left;
        font-weight: bold;
        font-size: 25px;
        font-family: "SimHei";
        color: black;
    }
    .ArticleLable {
        line-height: 30px;
        text-align:left;
        font-weight: bold;
        font-size: 15px;
        font-family: "SimHei";
        color: black;
    }
</style>