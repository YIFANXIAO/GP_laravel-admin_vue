<template>
    <div>
        <div v-for="(v, i) in articles">
            <div id="app4" v-pre="articles[i]">
            </div>
        </div>
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
                    this.articles = response;
                }).catch(err => {
                    console.log(err)
                })
            },
        }
    }
</script>

<style>
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