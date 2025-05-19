@extends('layouts.backend.main')

@section('title', 'Tambah Data Pengunjung')

@section('content')
<div class="d-flex flex-wrap align-items-center justify-content-between gap-3 mb-24">
    <h6 class="fw-semibold mb-0">@yield('title')</h6>
    <ul class="d-flex align-items-center gap-2">
        <li class="fw-medium">
            <a href="{{ route('dashboard') }}" class="d-flex align-items-center gap-1 hover-text-primary">
                <iconify-icon icon="solar:home-smile-angle-outline" class="icon text-lg"></iconify-icon>
                Dashboard
            </a>
        </li>
        <li>-</li>
        <li class="fw-medium">@yield('title')</li>
    </ul>
</div>

<div class="row gy-4">
    <div class="col-lg-6">
        <div class="card">
            <div class="card-body mt-3">
                <form action="{{ route('visitors.store') }}" class="row gy-3 needs-validation" method="post">
                    @csrf
                    <div class="col-sm-12">
                        <label class="form-label">Tanggal</label>
                        <div class="form-group">
                            <input type="date" class="form-control @error('date') is-invalid @enderror" name="date" value="{{ old('date') }}">
                            @error('date')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <label class="form-label">Jam Mulai</label>
                        <div class="form-group">
                            <input type="time" class="form-control @error('start_time') is-invalid @enderror" name="start_time" value="{{ old('start_time') }}">
                            @error('start_time')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <label class="form-label">Jam Selesai</label>
                        <div class="form-group">
                            <input type="time" class="form-control @error('end_time') is-invalid @enderror" name="end_time" value="{{ old('end_time') }}">
                            @error('end_time')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <label class="form-label">Jumlah Pengunjung</label>
                        <div class="form-group">
                            <input type="number" class="form-control @error('visitor_count') is-invalid @enderror" name="visitor_count" value="{{ old('visitor_count') }}" placeholder="Jumlah Pengunjung">
                            @error('visitor_count')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>
                    <div class="col-12 mb-3 mt-3">
                        <button class="btn btn-primary-600 w-100" type="submit">Simpan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>      
</div>
@endsection
