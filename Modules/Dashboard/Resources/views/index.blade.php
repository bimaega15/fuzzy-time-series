@extends('layouts.app.index')

@section('title')
    Halaman Dashboard
@endsection


@section('content')
    <div class="container-xxl flex-grow-1 container-p-y">
        <h5>Dashboard</h5>
        @include('dashboard::partials.mainCard')
        @include('dashboard::partials.infoItem')
    </div>
@endsection
