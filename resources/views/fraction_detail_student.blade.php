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
                    <fraction-detail-student
                        v-bind:course_id = {{ $id }}
                    ></fraction-detail-student>
{{--                    <squad-detail--}}
{{--                        v-bind:squad_id = {{ $id }}--}}
{{--                    ></squad-detail>--}}
                </el-col>
            </el-row>
        </div>
    </div>

@endsection

