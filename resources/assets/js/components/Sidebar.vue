<template>
    <div>
        <el-menu default-active="1-4-1" class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose" :collapse="isCollapse">
            <el-menu-item index="1">
                <i class="el-icon-s-data"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" href="http://127.0.0.1:8000/">首页</a>
                </span>
            </el-menu-item>
            <el-menu-item index="2">
                <i class="el-icon-reading"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" href="http://127.0.0.1:8000/">博文随笔</a>
                </span>
            </el-menu-item>
            <el-menu-item index="3">
                <i class="el-icon-s-custom"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" href="http://127.0.0.1:8000/">班级信息</a>
                </span>
            </el-menu-item>
            <el-menu-item index="4">
                <i class="el-icon-s-order"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" href="http://127.0.0.1:8000/">课程信息</a>
                </span>
            </el-menu-item>
        </el-menu>
    </div>

</template>

<style>
    .el-menu-vertical-demo:not(.el-menu--collapse) {
        width: 200px;
        min-height: 400px;
    }
</style>

<script>

    export default {
        data() {
            return {
                isCollapse: false,
            }
        },

        methods: {
            handleOpen(key, keyPath) {
                console.log(key, keyPath);
            },
            handleClose(key, keyPath) {
                console.log(key, keyPath);
            }
        }
    }
</script>