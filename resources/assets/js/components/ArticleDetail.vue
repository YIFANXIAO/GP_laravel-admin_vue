<template>
    <div>
        <div style="margin: 0px 0px 15px 0px;font-weight:bold;font-size:40px;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;">
            <span>{{ this.article_detail.title }} </span>
        </div>
        <div>
            <el-row style = "margin: 0px 0px 15px 0px;">
                <el-col :span="18">
                    <el-tag
                            v-for="item in labels"
                            :key="item.id"
                            :type="'info'"
                            size="mini"
                            effect="dark"
                            style="margin: 0px 10px 0px 0px;">
                        {{ item.content }}
                    </el-tag>
                </el-col>
                <el-col :span="6">
                    <span
                            style="font-size:12px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                    >发布时间：{{ this.article_detail.created_at }} </span>
                </el-col>
            </el-row>
        </div>

        <el-divider></el-divider>

        <div v-html="articleContent"
             style="font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
        >
        </div>

        <br/>
        <span
                style="font-size:18px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
        >精彩评论</span>
        <el-divider></el-divider>
        <div v-for="comment in comments">
            <el-col>
                <el-card shadow="always" style="margin: 0px 0px 10px 0px;">
                    <div style="margin: 0px 0px 20px 0px;">
                        <el-col span="16">
                            <div
                                style="font-size:15px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                            ><i class="el-icon-user"></i>&nbsp;&nbsp;<span>{{ comment.p_comment.username }}</span></div>
                        </el-col>
                        <el-col span="8">
                            <div
                                style="font-size:15px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                            >{{ comment.p_comment.created_at }}</div>
                        </el-col>
                    </div>
                    <br/>
                    <div
                        style="font-size:18px; font-weight:normal; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                    >{{ comment.p_comment.content }}</div>
                </el-card>
            </el-col>
            <div v-for="childComment in comment.child_comments">
                <el-col>
                    <el-card shadow="always"  style="margin: 0px 0px 10px 0px;">
                        <div style="margin: 0px 0px 20px 0px;">
                            <el-col span="16">
                                <div
                                    style="font-size:15px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                                ><i class="el-icon-user"></i>&nbsp;&nbsp;<span>{{ childComment.username }}  回复：“{{ childComment.replyComment }}”</span></div>
                            </el-col>
                            <el-col span="8">
                                <div
                                    style="font-size:15px; font-weight:bold; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                                >{{ childComment.created_at }}</div>
                            </el-col>
                        </div>
                        <br/>
                        <div
                            style="font-size:18px; font-weight:normal; font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                        >{{ childComment.content }}</div>
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