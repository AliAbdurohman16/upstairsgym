@extends('layouts.backend.main')

@section('title', 'Data Pengunjung')

@section('css')
<link href="{{ asset('backend') }}/assets/css/lib/dataTables.min.css" rel="stylesheet" >
<link href="{{ asset('backend') }}/assets/plugins/sweetalert2/sweetalert2.min.css" rel="stylesheet" >
@endsection

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

<div class="card basic-data-table">
    @if (request()->is('visitors'))
    <div class="card-header">
        <a href="{{ route('visitors.create') }}" class="btn btn-primary mb-2">Tambah Data</a>
    </div>
    @endif
    <div class="card-body">
        <div class="table-responsive">
            <table id="visitor" class="table">
                <thead>
                    <tr>
                        <th width="5%">No</th>
                        <th>Tanggal</th>
                        <th>Jam Mulai</th>
                        <th>Jam Selesai</th>
                        <th>Jumlah Pengunjung</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach ($visitors as $visitor)
                    <tr>
                        <td>{{ $loop->iteration }}</td>
                        <td>{{ date('d/m/y', strtotime($visitor->date)) }}</td>
                        <td>{{ date('H:i', strtotime($visitor->start_time)) }}</td>
                        <td>{{ date('H:i', strtotime($visitor->end_time)) }}</td>
                        <td>{{ $visitor->visitor_count }}</td>
                        <td>
                            <a href="{{ route('visitors.edit', $visitor) }}" class="btn btn-success mb-2"><iconify-icon icon="ic:outline-edit"></iconify-icon></a>
                            <span class="btn btn-danger btn-delete" data-id="{{ $visitor->id }}"><iconify-icon icon="tabler:trash"></iconify-icon></span>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
@endsection

@section('js')
<script src="{{ asset('backend') }}/assets/js/lib/dataTables.min.js"></script>
<script src="{{ asset('backend') }}/assets/plugins/sweetalert2/sweetalert2.min.js"></script>
<script>
    $(document).ready(function() {
        $('#visitor').DataTable();
    });

    @if (Session::has('message'))
    swal.fire({
        icon: "success",
        title: "Berhasil",
        text: "{{ Session::get('message') }}",
    }).then((result) => {
        if (result.isConfirmed) {
            location.reload();
        }
    });
    @endif

    $(".btn-delete").click(function() {
        var id = $(this).data("id");
        Swal.fire({
            title: 'Hapus',
            text: "Apakah anda yakin ingin menghapus?",
            icon: 'warning',
            showCancelButton: true,
            cancelButtonColor: '#d33',
            confirmButtonText: 'Ya, Hapus!',
            cancelButtonText: 'Batal',
        }).then((result) => {
            if (result.isConfirmed) {
                $.ajax({
                    url: "visitors/" + id,
                    type: 'DELETE',
                    data: {
                        "id": id,
                        "_token": $('meta[name="csrf-token"]').attr('content'),
                    },
                    success: function(response) {
                        swal.fire({
                            icon: "success",
                            title: "Berhasil",
                            text: response.message,
                        }).then((result) => {
                            if (result.isConfirmed) {
                                location.reload();
                            }
                        });
                    },
                });
            }
        })
    });
</script>
@endsection