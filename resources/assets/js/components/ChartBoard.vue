<template>
    <div>
        <el-row>
            <el-col span="12">
                <span
                    style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                >课程-分数填充完成度柱状图</span>
                <ve-histogram :data="chartData" :settings="this.chartSettings"></ve-histogram>
            </el-col>
            <el-col span="12">
                <span
                    style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                >课程、学生选修情况雷达图</span>
                <ve-radar :data="chart2Data"></ve-radar>
            </el-col>
        </el-row>
        <el-row>
            <el-col span="12">
                <span
                    style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                >平均分-年份-多课程折线图</span>
                <ve-line :data="chart3Data" :settings="this.chart3Settings"></ve-line>
            </el-col>
            <el-col span="12">
                <span
                    style="font-size:18px;font-weight:bold;font-family: 'Helvetica Neue',Helvetica,'PingFang SC', 'Hiragino Sans GB','Microsoft YaHei','微软雅黑',Arial,sans-serif;"
                >计算机网络~分数分布漏斗图</span>
                <ve-funnel :data="chart4Data" :settings="this.chart4Settings"></ve-funnel>
            </el-col>
        </el-row>
    </div>
</template>

<script>

    export default {
        created() {

        },
        data() {
            this.chartSettings = {
                showLine: ['填充度']
            }
            this.chart3Settings = {
                stack: { '用户': ['访问用户', '下单用户'] },
                area: false
            }
            this.chart4Settings = {
                sequence: ['期末成绩', '考勤', '实验', '课后作业']
            }
            return {
                chartData: {
                    columns: ['课程', '应导入分数', '填充度', '已导入分数'],
                    rows: [
                        { '课程': '计算机网络', '应导入分数': 30, '填充度': 18, '已导入分数': 18},
                        { '课程': '设计模式', '应导入分数': 50, '填充度': 23, '已导入分数': 23 },
                        { '课程': 'EDA', '应导入分数': 28, '填充度': 14,  '已导入分数': 14 },
                        { '课程': '焊接万用表', '应导入分数': 40, '填充度': 25, '已导入分数': 25 },
                    ]
                },
                chart2Data: {
                    columns: ['课程', '对应专业', '填充度', '选修人数'],
                    rows: [
                        { '课程': '计算机网络', '对应专业': 30, '填充度': 18, '选修人数': 36},
                        { '课程': '设计模式', '对应专业': 50, '填充度': 23, '选修人数': 42 },
                        { '课程': 'EDA', '对应专业': 28, '填充度': 14,  '选修人数': 18 },
                        { '课程': '焊接万用表', '对应专业': 45, '填充度': 25, '选修人数': 20 },
                    ]
                },
                chart3Data: {
                    columns: ['年份', '计算机网络', '设计模式', 'EDA设计'],
                    rows: [
                        { '年份': '2020', '计算机网络': 90.5, '设计模式': 86.3, 'EDA设计': 80 },
                        { '年份': '2019', '计算机网络': 89.1, '设计模式': 78.5, 'EDA设计': 78 },
                        { '年份': '2018', '计算机网络': 82.5, '设计模式': 79.6, 'EDA设计': 83 },
                        { '年份': '2017', '计算机网络': 87.6, '设计模式': 82.6, 'EDA设计': 84 },
                        { '年份': '2016', '计算机网络': 91.6, '设计模式': 84.5, 'EDA设计': 86 },
                        { '年份': '2015', '计算机网络': 88.5, '设计模式': 89.4, 'EDA设计': 75 }
                    ]
                },
                chart4Data: {
                    columns: ['状态', '数值'],
                    rows: [
                        { '状态': '期末成绩', '数值': 60 },
                        { '状态': '考勤', '数值': 10 },
                        { '状态': '实验', '数值': 20 },
                        { '状态': '课后作业', '数值': 10 }
                    ]
                }
            }
        },
        methods : {

        }
    }
</script>