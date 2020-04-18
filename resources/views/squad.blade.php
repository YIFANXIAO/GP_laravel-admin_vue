@extends('layouts.app')

@section('content')
    <div class="container">
        <div id="gp">
            <el-row class="tac">
                {{--  添加侧边栏组件，定好页面占比  --}}
                <el-col :span="6">
                    <sidebar></sidebar>
                </el-col>
                {{--  添加每页的个性化内容  --}}
                <el-col :span="18">
                {{--  添加一些图表作为首页内容  --}}
                    <squad-list></squad-list>
                </el-col>
            </el-row>
        </div>
    </div>

@endsection

