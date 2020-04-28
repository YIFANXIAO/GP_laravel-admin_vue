<template>
    <div>
        <div>
            <article-row
                    v-for="article in articles"
                    v-bind:key="article.id"
                    v-bind:title="article.title"
                    v-bind:created_at="article.created_at"
                    v-bind:intro="article.intro"
                    v-bind:banner="article.banner"
                    v-bind:id="article.id"
                    style="margin: 0px 0px 20px 0px;"
            ></article-row>
        </div>
        <div class="block">
            <el-pagination
                    background
                    :current-page.sync="currentPage"
                    :page-sizes="[5,10,15]"
                    :page-size.sync="currentSize"
                    layout="total, prev, pager, next,sizes, jumper"
                    :total="total"
                    @size-change="handleSizeChange"
                    @current-change="handleCurrentChange"
            />
        </div>
    </div>
</template>

<script>

    import { getArticleList } from '../api/front_all'

    export default {
        created() {
            this.loadData(this.ArticleListRequestData);
        },
        data() {
            return {
                ArticleListRequestData : {
                    row : 5,
                    page : 1,
                },
                articles:[],
                count: 0,
                currentPage: 1,
                currentSize: 2,
                total: null,
                isSizeChange: false
            }
        },
        methods : {
            loadData(ArticleListRequestData) {
                getArticleList(ArticleListRequestData)
                    .then(response => {
                    this.articles = response.data;
                    this.total = response.total;
                    this.currentPage = response.current_page;
                }).catch(err => {
                    console.log(err)
                })
            },
            handleSizeChange(val) {
                this.ArticleListRequestData.row = val;
                this.ArticleListRequestData.page = 1;
                this.isSizeChange = true;
                this.loadData(this.ArticleListRequestData);
            },
            handleCurrentChange(val) {
                if (!this.isSizeChange) {
                    this.ArticleListRequestData.page = val;
                    this.loadData(this.ArticleListRequestData);
                } else {
                    this.ArticleListRequestData.page = 1;
                    this.isSizeChange = false;
                }
            },
        }
    }
</script>