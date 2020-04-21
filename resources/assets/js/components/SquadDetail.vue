<template>
    <div>
        <h3>班级详情</h3>
        <el-row :gutter="12">
            <el-col :span="12">
                <el-card shadow="always">
                    <div slot="header" class="clearfix">
                        <span>{{ this.singleSquad.name }}</span>
                    </div>
                    <div class="text item">
                        <span>{{ this.singleSquad.info }}</span>
                    </div>
                </el-card>
            </el-col>
            <el-col :span="12">
                <el-card shadow="always">
                    <div slot="header" class="clearfix">
                        <span>{{ this.singlePeofession.full_name }}</span>
                    </div>
                    <div class="text item">
                        <span>{{ this.singlePeofession.intro }}</span>
                    </div>
                </el-card>
            </el-col>
        </el-row>

        <el-divider content-position="left">班级成员</el-divider>

        <el-table
                :data="students"
                height="300"
                border
                style="width: 100%">
            <el-table-column
                    prop="squad_name"
                    label="班级"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="name"
                    label="姓名"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="username"
                    label="学号"
                    width="180">
            </el-table-column>
            <el-table-column
                    prop="created_at"
                    label="创建日期">
            </el-table-column>
        </el-table>
    </div>
</template>

<script>

    import { getSquadInfo, getProfessionInfo, getSquadStudents } from "../api/front_all";

    export default {
        created() {
            this.getSingleSquad();
            this.getSingleProfession();
            this.getSquadStundents();
        },
        data() {
            return {
                squad_id : this.$parent.squad_id,
                singleSquad : {},
                singlePeofession : {},
                students: []
            }
        },
        methods : {
            getSingleSquad() {
                getSquadInfo(this.squad_id).then(response => {
                    this.singleSquad = response[0];
                })
            },
            getSingleProfession() {
                getProfessionInfo(this.squad_id).then(response => {
                    this.singlePeofession = response[0];
                })
            },
            getSquadStundents() {
                getSquadStudents(this.squad_id).then(response => {
                    this.students = response;
                    console.log(this.students, '学生信息');
                })
            }
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