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

new Vue({
    el: '#gp'
});

