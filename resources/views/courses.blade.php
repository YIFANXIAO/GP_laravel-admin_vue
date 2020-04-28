@extends('layouts.app')

@section('content')
    <div style="margin: 20px 100px 50px;">
        <div id="gp">
            <el-row class="tac">
                {{--  添加侧边栏组件，定好页面占比  --}}
                <el-col :span="6">
                    <sidebar
                        style="margin-left: 50px; margin-right: 50px"
                    ></sidebar>
                </el-col>
                {{--  添加每页的个性化内容  --}}
                <el-col :span="18">
                {{--  添加一些图表作为首页内容  --}}
                    <course-list></course-list>
                </el-col>
            </el-row>
        </div>
    </div>

@endsection

