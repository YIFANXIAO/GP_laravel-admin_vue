<template>
    <div>
        <el-menu
            default-active="1-4-1"
            class="el-menu-vertical-demo"
            @open="handleOpen"
            @close="handleClose">
            <el-menu-item index="1">
                <i class="el-icon-s-data"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/home'">首页</a>
                </span>
            </el-menu-item>
            <el-menu-item index="2">
                <i class="el-icon-reading"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/articles'">课程资源</a>
                </span>
            </el-menu-item>
            <el-menu-item index="3">
                <i class="el-icon-s-order"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/courses'">课程信息</a>
                </span>
            </el-menu-item>
            <el-menu-item index="4">
                <i class="el-icon-s-custom"></i>
                <span slot="title">
                    <a style="color:#606266; text-decoration: none" v-bind:href="baseHttpUrl + '/squads'">班级信息</a>
                </span>
            </el-menu-item>
        </el-menu>
    </div>

</template>

<style>
    .el-menu-vertical-demo {
        width: 180px;
        min-height: 700px;
    }
</style>

<script>

    export default {
        data() {
            return {
                baseHttpUrl : this.COMMON.httpUrl
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