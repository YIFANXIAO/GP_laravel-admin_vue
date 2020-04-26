<template>
    <div>
        文章详情页
        <span>{{ this.article_id }}</span>
    </div>
</template>

<script>

    import { getArticleById, getArticleComments } from "../api/front_all";

    export default {
        created() {
            this.getArticle(this.article_request_data);
            this.getComments(this.article_request_data);
        },
        data() {
            return {
                article_request_data : {
                    article_id : this.$parent.article_id,
                },
                article_id : this.$parent.article_id,
                article_detail : null,
                comments : [],
            }
        },
        methods : {
            getArticle(article_request_data) {
                getArticleById(article_request_data)
                    .then(response => {
                        this.article_detail = response;
                })
            },
            getComments(article_request_data) {
                getArticleComments(article_request_data)
                    .then(response => {
                        this.comments = response;
                    })
            }
        }
    }
</script>