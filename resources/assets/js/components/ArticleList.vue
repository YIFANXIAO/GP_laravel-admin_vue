<template>

    <div>
        <article-row
            v-for="article in articles"
            v-bind:key="article.id"
            v-bind:title="article.title"
            v-bind:created_at="article.created_at"
            v-bind:intro="article.intro"
        ></article-row>
    </div>
</template>

<script>

    import { getArticleList } from '../api/front_all'

    export default {
        created() {
            this.getArticles();
            this.getPosts();
        },
        data() {
            return {
                title:"测试",
                articles:[],
                posts: []
            }
        },
        methods : {
            getArticles() {
                getArticleList().then(response => {
                    this.articles = response;
                    console.log(this.articles);
                }).catch(err => {
                    console.log(err)
                })
            },
            getPosts() {
                this.posts = [
                    { id: 1, title: 'My journey with Vue' },
                    { id: 2, title: 'Blogging with Vue' },
                    { id: 3, title: 'Why Vue is so fun' }
                ];
            }
        }
    }
</script>