import {getArticleList} from "./api/test";

require('./bootstrap');

import Vue from 'vue';
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(ElementUI);

import webHeader from "./components/webHeader";
import Hello2 from "./components/Hello2";
import ArticleList from "./components/ArticleList";
import ArticleRow from "./components/ArticleRow";
import countBtn from "./components/countBtn";
import Sidebar from "./components/Sidebar";

Vue.component('example-component', require('./components/ExampleComponent.vue'));

Vue.component('sidebar', {
    template: '<Sidebar/>',
    components: { Sidebar }
});

Vue.component('blog-post', {
    props: ['title'],
    template: '<h3>{{ title }}</h3>'
});

Vue.component('button-counter', {
    data: function () {
        return {
            count: 0
        }
    },
    template: '<button v-on:click="count++">You clicked me {{ count }} times.</button>'
});

Vue.component('button-counter-father', {
    template: '<countBtn/>',
    components: { countBtn }
});

Vue.component('blog-post', {
    props: ['title'],
    template: '<h3>{{ title }}</h3>'
});

Vue.component('article-row', {
    props: ['title', 'created_at', 'intro'],
    // template :
    template: '<ArticleRow/>',
    components: { ArticleRow }
});

new Vue({
    el: '#components-demo'
});

new Vue({
    el: '#gp'
});

new Vue({
    el: '#articleList',
    created() {
        this.getArticles();
    },
    data: {
        articles: []
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
});

new Vue({
    el: '#webHeader',
    render: h => h(webHeader)
});



// const app3 = new Vue({
//     el: '#app3',
//     render: h => h(ArticleList)
// });
//
// const app4 = new Vue({
//     el: '#app4',
//     render: h => h(ArticleRow)
// });
//
// const app2 = new Vue({
//     el: '#app2',
//     render: h => h(Hello2)
// });
