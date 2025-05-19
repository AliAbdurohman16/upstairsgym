<!doctype html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <title>Upstairsgym</title>
    <link rel="icon" type="image/png" href="{{ asset('backend') }}/assets/images/logo-icon.png" sizes="16x16">
    <!-- remix icon font css  -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/remixicon.css">
    <!-- BootStrap css -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/lib/bootstrap.min.css">

    @yield('css')

    <!-- main css -->
    <link rel="stylesheet" href="{{ asset('backend') }}/assets/css/style.css">
</head>
<body>
    @include('layouts.frontend.topbar')
        
    <div class="dashboard-main-body">
        @yield('content')
    </div>

    <!-- jQuery library js -->
    <script src="{{ asset('backend') }}/assets/js/lib/jquery-3.7.1.min.js"></script>
    <!-- Bootstrap js -->
    <script src="{{ asset('backend') }}/assets/js/lib/bootstrap.bundle.min.js"></script>
    <!-- Iconify Font js -->
    <script src="{{ asset('backend') }}/assets/js/lib/iconify-icon.min.js"></script>
    <!-- jQuery UI js -->
    <script src="{{ asset('backend') }}/assets/js/lib/jquery-ui.min.js"></script>

    <!-- main js -->
    <script src="{{ asset('backend') }}/assets/js/app.js"></script>

    @yield('js')
</body>
</html>