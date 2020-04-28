// 引入工具类-目录自定义
import fetch from '../utils/fetch'

export function getTestList() {
    const TMPURL = '/getTestList'; // url地址
    const params = {}; // 参数
    return fetch.post(TMPURL, params);
}

export function getArticleList(ArticleListRequestData) {
    const TMPURL = '/front/getArticleList'; // url地址
    const params = { ArticleListRequestData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getSquadByUser(squadPageData) {
    const TMPURL = '/front/getSquadByUser'; // url地址
    const params = { squadPageData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getSquadInfo(squad_id) {
    const TMPURL = '/front/getSquadInfo'; // url地址
    const params = { squad_id }; // 参数
    return fetch.post(TMPURL, params);
}

export function getProfessionInfo(squad_id) {
    const TMPURL = '/front/getProfessionInfo'; // url地址
    const params = { squad_id }; // 参数
    return fetch.post(TMPURL, params);
}

export function getSquadStudents(studentPageData) {
    const TMPURL = '/front/getSquadStudents'; // url地址
    const params = { studentPageData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getCoursesInfoByUser(coursePageData) {
    const TMPURL = '/front/getCoursesInfoByUser'; // url地址
    const params = { coursePageData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getFormulaLeftDatas(fractionRequestData) {
    const TMPURL = '/front/getFormulaLeftDatas'; // url地址
    const params = { fractionRequestData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getFractionListByUser(fractionListRequestData) {
    const TMPURL = '/front/getFractionListByUser'; // url地址
    const params = { fractionListRequestData }; // 参数
    return fetch.post(TMPURL, params);
}

export function getArticleById(article_request_data) {
    const TMPURL = '/front/getArticleById'; // url地址
    const params = { article_request_data }; // 参数
    return fetch.post(TMPURL, params);
}

export function getArticleComments(article_request_data) {
    const TMPURL = '/front/getArticleComments'; // url地址
    const params = { article_request_data }; // 参数
    return fetch.post(TMPURL, params);
}

export function getArticleLabels(article_request_data) {
    const TMPURL = '/front/getArticleLabels'; // url地址
    const params = { article_request_data }; // 参数
    return fetch.post(TMPURL, params);
}

export function backToCourseListView() {
    const TMPURL = '/front/backToCourseListView'; // url地址
    const params = {}; // 参数
    return fetch.post(TMPURL, params);
}