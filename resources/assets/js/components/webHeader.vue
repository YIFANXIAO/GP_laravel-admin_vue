<template>

    <div>
        <el-row>
            <el-col :span="24">
                <div class="grid-content bg-purple-dark">
                    <div class=" TitleText ">
                        <p>《计算机网络》课程建设网站</p>
                    </div>
                </div>
            </el-col>
        </el-row>
        <el-row gutter="10">
            <el-col :span="6">
                <div class="grid-content-link bg-purple">
                    <div class="LinkText">
                        <a href="http://127.0.0.1:8000/test">测试页</a>
                    </div>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content-link bg-purple">
                    <div class="LinkText">
                        <a href="http://127.0.0.1:8000/test">测试页</a>
                    </div>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content-link bg-purple">
                    <div class="LinkText">
                        <a href="http://127.0.0.1:8000/test">测试页</a>
                    </div>
                </div>
            </el-col>
            <el-col :span="6">
                <div class="grid-content-link bg-purple">
                    <div class="LinkText">
                        <a href="http://127.0.0.1:8000/test">测试页</a>
                    </div>
                </div>
            </el-col>
        </el-row>
    </div>
</template>

<script>
    export default {
        data() {
            return {

            }
        },
        methods : {

        }
    }
</script>

<style>
    .el-row {
        margin-bottom: 0px;
    &:last-child {
         margin-bottom: 0;
     }
    }
    .el-col {
        border-radius: 5px;
    }
    .bg-purple-dark {
        /*background: #99a9bf;*/
        background: black;
        opacity: 0.75;
    ;
    }
    .bg-purple {
        background: #21141C;
    }
    .bg-purple-light {
        background: #e5e9f2;
    }
    .grid-content {
        border-radius: 5px;
        min-height: 360px;
    }
    .grid-content-link {
        border-radius: 2px;
        min-height: 40px;
    }
    .TitleText {
        /*height: 200px;*/
        line-height: 360px;
        text-align:center;
        font-weight: bold;
        font-size: 80px;
        font-family: "SimHei";
        color: white;
    }
    .LinkText {
        line-height: 40px;
        text-align:center;
        font-weight: bold;
        font-size: 20px;
        font-family: "SimHei";
        color: white;
    }
    .row-bg {
        padding: 10px 0;
        background-color: #f9fafc;
    }
</style>