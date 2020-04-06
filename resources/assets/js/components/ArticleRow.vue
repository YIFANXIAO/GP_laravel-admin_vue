<template>
    <div>
        <el-row v-for="article in articles">
            <el-col :span="8">
                <div class="grid-content-article-list bg-article-list">
                    <img src="http://admin.vue.xiao.com//uploads/images/d10fb8d673e04c2bfdce01955c59bd47.png" height="240" width="292" alt="网络图片" />
                </div>
            </el-col>
            <el-col :span="16">
                <div class="grid-content-article-list bg-article-list">
                    <div class="article-row">
                        <el-row class="ArticleLable">
                            <p>{{article.title}}/{{article.created_at}}</p>
                        </el-row>
                        <el-row class="ArticleTitle">
                            <a href="http://127.0.0.1:8000/test">{{article.title}}</a>
                        </el-row>
                        <el-row class="ArticleIntro">
                            <p>{{article.intro}}</p>
                        </el-row>
                    </div>
                </div>
            </el-col>
        </el-row>

        <el-pagination
                background
                :page-size="1"
                :pager-count="11"
                layout="prev, pager, next">
                :total=this.articles.length>
        </el-pagination>
<!--        <div class="block">-->
<!--&lt;!&ndash;            <span class="demonstration">页数较少时的效果</span>&ndash;&gt;-->
<!--            -->
<!--        </div>-->

    </div>
</template>

<script>

    import { getArticleList } from '../api/test'

    export default {
        created() {
            this.getArticles();
        },
        data() {
            return {
                articles:[],
            }
        },
        methods : {
            getArticles() {
                getArticleList().then(response => {
                    this.articles = response.data;
                }).catch(err => {
                    console.log(err)
                })
            },
        }
    }
</script>

<style>
    .el-row {
        margin-bottom: 20px;
    &:last-child {
         margin-bottom: 0;
     }
    }
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