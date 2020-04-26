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
                    <article-detail
                        v-bind:article_id = {{ $article_id }}
                    ></article-detail>
                </el-col>
            </el-row>
        </div>
    </div>

@endsection

