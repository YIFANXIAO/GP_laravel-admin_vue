// 引入axios
import axios from 'axios';

// 创建axios实例
const httpService = axios.create({
    // url前缀-'https://some-domain.com/api/'
    baseURL: 'http://127.0.0.1:8000/api/', // 需自定义
    // 请求超时时间
    timeout: 3000 // 需自定义
});

// request拦截器
httpService.interceptors.request.use(
    config => {
        // 根据条件加入token-安全携带
        if (true) { // 需自定义
            // 让每个请求携带token
            config.headers['Authorization'] = 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImp0aSI6IjZmOGFhNjkxNGZiMTZkODcyN2IzMWQ4YjYzZjE1ZGViZjc3ZjlhNTI1NTAzZjczZmViNzA5NDE5NjAxMzQzMzNmMWFkY2Q2Y2IwZTk0ZTgxIn0.eyJhdWQiOiIxIiwianRpIjoiNmY4YWE2OTE0ZmIxNmQ4NzI3YjMxZDhiNjNmMTVkZWJmNzdmOWE1MjU1MDNmNzNmZWI3MDk0MTk2MDEzNDMzM2YxYWRjZDZjYjBlOTRlODEiLCJpYXQiOjE1ODcyNjQyODAsIm5iZiI6MTU4NzI2NDI4MCwiZXhwIjoxNjE4ODAwMjgwLCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.ix2LcKZAs7SpHnMFRtvR_TLqhMnA-xWriwmdyo6T9jxVB3MthHReSYxkWIu6V13pttceVN7-9akjicr-xbwJfIGjlVwKx6w14n_Ptmflrp1EgoQWQe_NO8hTVp4XURBoU-OC7GpXUKio8bsJZs_usZT3Bvde3g8XrvK7GZbOo1ut8b6w-Wj_NywB1SAYmfx5TMsAei44C3injfz7hsipvcET3SX1ItiyknZSWAck5CRKfgHevqfz4wMjFVkQ6Qf5QcLEwM1CcT_DW2O89Khphtzwu3NK3Q5lp_ezBSk2QYCzsK7w7QiNeUpdjcGTmWqBkgozuUvtw6Y3U9NqA4OKM9BQYB-ZxVKQeXcu9T7dIm9wwEf1Yu0kXFDTppZZVkCxVcYEik91WJxt1q_nDTMhfmbO5KXS3rCL9sbPB-DMzkp2IgL9EeLaz2DSsq_00rOm0pa6P8zXmfUwKGdioS-9ZQlEbjPD25uT9YcFbpjDgtjbwDzHEAkSfedyG3eaEfiFD_VRX3UiNHkoBSGKbPnpsBlR9qSpsWEI0ealzElZySgL6-fZCUBzO0bUQeCM-9r35q6qYVpdJud3GlQlwsb-wbTu3k4ZC26F03ew4uBGLd5kETy2eSCffR7M-VnXdjoT7e60aNdMRUqqw09tfETO13ytr_Rlz72UBFqhxcSLX_Y';
        }
        return config;
    },
    error => {
        // 请求错误处理
        Promise.reject(error).then(r => {});
    }
)

// respone拦截器
httpService.interceptors.response.use(
    response => {
        // 统一处理状态
        const res = response.data;
        if (false) { // 需自定义
            // 返回异常
            return Promise.reject({
                status: res,
                message: res.message
            });
        } else {
            return response.data;
        }
    },
    // 处理处理
    error => {
        if (error && error.response) {
            switch (error.response.status) {
                case 400:
                    error.message = '错误请求';
                    break;
                case 401:
                    error.message = '未授权，请重新登录';
                    break;
                case 403:
                    error.message = '拒绝访问';
                    break;
                case 404:
                    error.message = '请求错误,未找到该资源';
                    break;
                case 405:
                    error.message = '请求方法未允许';
                    break;
                case 408:
                    error.message = '请求超时';
                    break;
                case 500:
                    error.message = '服务器端出错';
                    break;
                case 501:
                    error.message = '网络未实现';
                    break;
                case 502:
                    error.message = '网络错误';
                    break;
                case 503:
                    error.message = '服务不可用';
                    break;
                case 504:
                    error.message = '网络超时';
                    break;
                case 505:
                    error.message = 'http版本不支持该请求';
                    break;
                default:
                    error.message = `未知错误${error.response.status}`;
            }
        } else {
            error.message = "连接到服务器失败";
        }
        return Promise.reject(error);
    }
)

/*网络请求部分*/

/*
 *  get请求
 *  url:请求地址
 *  params:参数
 * */
export function get(url, params = {}) {
    return new Promise((resolve, reject) => {
        httpService({
            url: url,
            method: 'get',
            params: params
        }).then(response => {
            resolve(response);
        }).catch(error => {
            reject(error);
        });
    });
}

/*
 *  post请求
 *  url:请求地址
 *  params:参数
 * */
export function post(url, params = {}) {
    return new Promise((resolve, reject) => {
        httpService({
            url: url,
            method: 'post',
            data: params
        }).then(response => {
            resolve(response);
        }).catch(error => {
            reject(error);
        });
    });
}

/*
 *  文件上传
 *  url:请求地址
 *  params:参数
 * */
export function fileUpload(url, params = {}) {
    return new Promise((resolve, reject) => {
        httpService({
            url: url,
            method: 'post',
            data: params,
            headers: { 'Content-Type': 'multipart/form-data' }
        }).then(response => {
            resolve(response);
        }).catch(error => {
            reject(error);
        });
    });
}

export default {
    get,
    post,
    fileUpload
}