@extends('dashboard.body.main')

@section('container')
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-12">
            <div class="card">
                <div class="card-header d-flex justify-content-between">
                    <div class="header-title">
                        <h4 class="card-title">Edit System Settings</h4>
                    </div>
                </div>

                <div class="card-body">
                    <form action="{{ route('system.settings.update') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')

                        <div class="form-group">
                            <label for="main_tag_line">Main Tag Line</label>
                            <input type="text" name="main_tag_line" class="form-control" value="{{ old('main_tag_line', $setting->main_tag_line) }}">
                        </div>

                        <div class="form-group">
                            <label for="location_pos">Location POS</label>
                            <input type="text" name="location_pos" class="form-control" value="{{ old('location_pos', $setting->location_pos) }}">
                        </div>

                        <div class="form-group">
                            <label for="ntn_number">NTN Number</label>
                            <input type="text" name="ntn_number" class="form-control" value="{{ old('ntn_number', $setting->ntn_number) }}">
                        </div>

                        <div class="form-group">
                            <label for="logo">Logo</label>
                            @if($setting->logo)
                                <img src="{{ asset('/logos/'.$setting->logo) }}" alt="Logo" class="mb-3" style="max-width: 100px;">
                            @endif
                            <input type="file" name="logo" class="form-control">
                        </div>

                        <div class="form-group">
                            <label for="tax">Tax (VAT %)</label>
                            <input type="number" name="tax" class="form-control" value="{{ old('tax', $setting->tax) }}">
                        </div>

                        <div class="form-group">
                            <label for="pos">POS</label>
                            <textarea id="editor" name="pos" class="form-control">{{ old('pos', $setting->pos) }}</textarea>
                        </div>

                        <button type="submit" class="btn btn-primary">Update Settings</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="https://cdn.ckeditor.com/4.20.2/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace('editor');
</script>
@endsection
