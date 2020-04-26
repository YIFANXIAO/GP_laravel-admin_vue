<template>
    <div>
        <article-row
            v-for="article in articles"
            v-bind:key="article.id"
            v-bind:title="article.title"
            v-bind:created_at="article.created_at"
            v-bind:intro="article.intro"
            v-bind:banner="article.banner"
            v-bind:id="article.id"
            style="margin : 20px"
        ></article-row>
    </div>
</template>

<script>

    import { getArticleList } from '../api/front_all'

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
            }
        }
    }
</script>