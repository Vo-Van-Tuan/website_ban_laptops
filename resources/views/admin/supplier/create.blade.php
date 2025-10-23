@extends('layouts.app_master_admin')
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>Thêm mới cung cấp</h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="{{  route('admin.ncc.index') }}"> Admin</a></li>
        </ol>
    </section>
    <!-- Main content -->
    <section class="content">
        <!-- Default box -->
        <div class="box">
            <div class="box-header with-border">
                <div class="box-body">
                    <form role="form" action="" method="POST">
                         @csrf
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sl_name') ? 'has-error' : '' }}">
                                <label for="name">Tên nhà cung cấp <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('sl_name') }}" name="sl_name"  placeholder="Tên nhà cung cấp">
                                @if ($errors->first('sl_name'))
                                    <span class="text-danger">{{ $errors->first('sl_name') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sl_phone') ? 'has-error' : '' }}">
                                <label for="name">Số điện thoại <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" value="{{ old('sl_phone') }}"  name="sl_phone"  placeholder="Số điện thoại">
                                @if ($errors->first('sl_phone'))
                                    <span class="text-danger">{{ $errors->first('sl_phone') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sl_email') ? 'has-error' : '' }}">
                                <label for="name">Email <span class="text-danger">(*)</span></label>
                                <input type="email" class="form-control" value="{{ old('sl_email') }}"  name="sl_email"  placeholder="Email ...">
                                @if ($errors->first('sl_email'))
                                    <span class="text-danger">{{ $errors->first('sl_email') }}</span>
                                @endif
                            </div>
                        </div>
                        <div class="col-sm-8">
                            <div class="form-group {{ $errors->first('sl_address') ? 'has-error' : '' }}">
                                <label for="name">Địa chỉ <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" value="{{ old('sl_address') }}"  name="sl_address"  placeholder="Địa chỉ">
                                @if ($errors->first('sl_address'))
                                    <span class="text-danger">{{ $errors->first('sl_address') }}</span>
                                @endif
                            </div>
                        </div>

                        <div class="col-sm-8">
                            <div class="box-footer text-center">
                                <a href="{{ route('admin.ncc.index') }}" class="btn btn-danger">
                                Quay lại <i class="fa fa-undo"></i></a>
                                <button type="submit" class="btn btn-success">Lưu dữ liệu <i class="fa fa-save"></i></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <!-- /.box -->
    </section>
    <!-- /.content -->
@stop
