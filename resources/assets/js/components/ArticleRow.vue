<template>
    <div>
        <el-card :body-style="{ padding: '8px' }">
            <el-row>
                <el-col :span="9">
                    <img v-bind:src="baseHttpUrl + '/uploads/' + this.$parent.banner" height="160" width="220" alt="网络图片" />
                </el-col>
                <el-col :span="15">
                    <div style="padding: 15px;">
                        <el-row style = "margin: 0px 0px 15px 0px;">
                            <el-col :span="18">
                                <span
                                        style="font-size:22px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                                ><a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/article_detail/' + this.$parent.id">{{this.$parent.title}}</a></span>
                            </el-col>
                            <el-col :span="6">
                                <span
                                        style="font-size:12px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                                ><p>{{this.$parent.created_at}}</p></span>
                            </el-col>
                        </el-row>
                        <span
                                style="margin: 0px 0px 15px 0px;font-size:16px;font-weight:normal;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                        ><p>{{this.$parent.intro}}</p></span>

                        <div>
                            <el-tag
                                    v-for="item in labels"
                                    :key="item.id"
                                    :type="'info'"
                                    size="mini"
                                    effect="dark"
                                    style="margin: 0px 10px 0px 0px;"
                            >
                                {{ item.content }}
                            </el-tag>
                        </div>

                    </div>
                </el-col>
            </el-row>
        </el-card>

    </div>
</template>

<script>
    import {getArticleLabels} from "../api/front_all";

    export default {
        created() {
            this.getLabels(this.article_request_data);
        },
        data() {
            return {
                baseHttpUrl : this.COMMON.httpUrl,
                article_request_data : {
                    article_id : this.$parent.id,
                },
                labels : [],
            }
        },
        methods : {
            getLabels(article_request_data) {
                getArticleLabels(article_request_data)
                    .then(response => {
                        this.labels = response;
                    })
            }
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