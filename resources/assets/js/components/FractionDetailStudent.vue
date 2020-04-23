<template>
    <div>
        <h3>学生版-分数详情页</h3>
        <h3>{{ this.course_id }}</h3>



    </div>
</template>

<script>

    import { getSquadStudents } from "../api/front_all";

    export default {
        created() {

        },
        data() {
            return {
                course_id : this.$parent.course_id,
            }
        },
        methods : {

        }
    }
</script>

<style>
    .text {
        font-size: 14px;
    }

    .item {
        margin-bottom: 10px;
    }
</style>