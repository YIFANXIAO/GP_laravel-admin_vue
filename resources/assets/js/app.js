import {getArticleList} from "./api/front_all";

require('./bootstrap');

import Vue from 'vue';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);

import ArticleRow from "./components/ArticleRow";
import Sidebar from "./components/Sidebar";
import ArticleList from "./components/ArticleList";
import common from "./components/common";
import SquadList from "./components/SquadList";
import SquadDetail from "./components/SquadDetail";
import CourseList from "./components/CourseList";

Vue.prototype.COMMON = common;

Vue.component(
    'passport-clients',
    require('./components/passport/Clients.vue')
);

Vue.component(
    'passport-authorized-clients',
    require('./components/passport/AuthorizedClients.vue')
);

Vue.component(
    'passport-personal-access-tokens',
    require('./components/passport/PersonalAccessTokens.vue')
);

// Vue.component('common', {
//     template: '<common/>',
//     components: { common }
// });

Vue.component('sidebar', {
    template: '<Sidebar/>',
    components: { Sidebar }
});

Vue.component('article-list', {
    template: '<ArticleList/>',
    components: { ArticleList }
});

Vue.component('article-row', {
    props: ['title', 'created_at', 'intro'],
    // template: '<h3>{{ title }}</h3>'
    template: '<ArticleRow/>',
    components: { ArticleRow }
});

Vue.component('squad-list', {
    template: '<SquadList/>',
    components: { SquadList }
});

Vue.component('squad-detail', {
    props: ['squad_id'],
    template: '<SquadDetail/>',
    components: { SquadDetail }
});

Vue.component('course-list', {
    template: '<CourseList/>',
    components: { CourseList }
});

new Vue({
    el: '#access-token',

    created() {
        this.getAccessToken();
    },

    data() {
        return {
            form: {
                name: 'personAccessToken',
                scopes: [],
                errors: []
            },
            tokens: [],
        };
    },
    methods: {
        getAccessToken() {
            axios.get('/oauth/personal-access-tokens')
                .then(response => {
                    this.tokens = response.data;

                    // 判断数据库中当前用户是否已有令牌，如果没有，添加一个
                    if (this.tokens.length <= 0) {
                        console.log(this.tokens.length, '长度');
                        axios.post('/oauth/personal-access-tokens', this.form)
                            .then(response => {
                                localStorage.setItem("accessToken", response.data.accessToken);
                                localStorage.setItem("user_id", response.data.token.user_id);
                            })
                            .catch(error => {
                            });
                    }else {
                        // 判断当前本地存储的是否是当前登录用户的令牌，如果不是，更新
                        if (this.tokens[0].user_id != localStorage.getItem("user_id")) {
                            axios.post('/oauth/personal-access-tokens', this.form)
                                .then(response => {
                                    localStorage.setItem("accessToken", response.data.accessToken);
                                    localStorage.setItem("user_id", response.data.token.user_id);
                                })
                                .catch(error => {
                                });
                        }
                    }
                });
        },
    }

});

new Vue({
    el: '#gp'
});

