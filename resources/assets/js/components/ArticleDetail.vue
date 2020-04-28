<template>
    <div>
        <div style="font-weight:bold;font-size:40px;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
            <span>{{ this.article_detail.title }} </span>
        </div>
        <br/>

        <div>
            <el-tag
                    v-for="item in labels"
                    :key="item.id"
                    :type="'success'"
                    effect="dark">
                {{ item.content }}
            </el-tag>
            &nbsp;&nbsp;&nbsp;
            <span
                    style="font-size:10px;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
            >发布时间：{{ this.article_detail.created_at }} </span>
        </div>
        <br />

        <div v-html="articleContent"
             style="font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
        >
        </div>

        <br/>
        <el-divider content-position="left">精彩评论</el-divider>
        <br/>
        <div v-for="comment in comments"
             style="font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
        >
            <el-col style="color: #F2F6FC">
                <el-card shadow="always" style="margin : 10px;">
                    <div style="margin : 10px; font-weight:normal; font-size:10px;">
                        <el-col span="16">
                            <i class="el-icon-user"></i>&nbsp;<span>{{ comment.p_comment.username }}  </span>
                        </el-col>
                        <el-col span="8">
                            <span>{{ comment.p_comment.created_at }}  </span>
                        </el-col>
                    </div>
                    <br/>
                    <div style="margin : 10px; font-weight:bold; font-size:15px;">
                        <span>{{ comment.p_comment.content }}</span>
                    </div>
                </el-card>
            </el-col>
            <div v-for="childComment in comment.child_comments">
                <el-col style="color: #F2F6FC">
                    <el-card shadow="always" style="margin : 10px;">
                        <div style="margin : 10px; font-weight:normal; font-size:10px;">
                            <el-col span="16">
                                <i class="el-icon-user"></i>&nbsp;<span>{{ childComment.username }}  回复：“{{ childComment.replyComment }}”</span>
                            </el-col>
                            <el-col span="8">
                                <span>{{ comment.p_comment.created_at }}  </span>
                            </el-col>
                        </div>
                        <br/>
                        <div style="margin : 10px; font-weight:bold; font-size:15px;">
                            <span>{{ childComment.content }}</span>
                        </div>
                    </el-card>
                </el-col>
            </div>
        </div>
        <br/>
        <br/>
    </div>
</template>

<script>

    import { getArticleById, getArticleComments, getArticleLabels} from "../api/front_all";
    import marked from 'marked'

    export default {
        created() {
            this.getArticle(this.article_request_data);
            this.getComments(this.article_request_data);
            this.getLabels(this.article_request_data);
        },
        data() {
            return {
                article_request_data : {
                    article_id : this.$parent.article_id,
                },
                article_id : this.$parent.article_id,
                article_detail : [],
                comments : [],
                articleContent: [],
                labels : [],
            }
        },
        methods : {
            getArticle(article_request_data) {
                getArticleById(article_request_data)
                    .then(response => {
                        this.article_detail = response.article;
                        this.articleContent = marked(this.article_detail.content);
                })
            },
            getComments(article_request_data) {
                getArticleComments(article_request_data)
                    .then(response => {
                        this.comments = response;
                    })
            },
            getLabels(article_request_data) {
                getArticleLabels(article_request_data)
                    .then(response => {
                        this.labels = response;
                    })
            }
        }
    }
</script>