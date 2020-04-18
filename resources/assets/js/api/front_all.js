// 引入工具类-目录自定义
import fetch from '../utils/fetch'

export function getTestList() {
    // 使用
    const TMPURL = '/getTestList'; // url地址
    const params = {}; // 参数
    return fetch.post(TMPURL, params);
}

export function getArticleList() {
    // 使用
    const TMPURL = '/getArticleList'; // url地址
    const params = {}; // 参数
    return fetch.post(TMPURL, params);
}

export function getSquadByUser() {
    // 使用
    const TMPURL = '/getSquadByUser'; // url地址
    const params = {}; // 参数
    return fetch.post(TMPURL, params);
}