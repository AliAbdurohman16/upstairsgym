@extends('layouts.frontend.main')

@section('css')
<!-- Apex Chart css -->
<link rel="stylesheet" href="{{ asset('backend') }}/assets/css/lib/apexcharts.css">
@endsection

@section('content')
<div class="row gy-4">
    <!-- Chart Bar start -->
    <div class="col-xxl-12">
        <div class="d-flex align-items-center justify-content-between radius-8">
              <a href="{{ $previousDate ? url()->current() . '?date=' . $previousDate : '#' }}"
              class="btn btn-secondary rounded-circle d-flex justify-content-center align-items-center {{ !$previousDate ? 'disabled' : '' }}"
              style="width: 40px; height: 40px;">
                  <iconify-icon icon="mdi:chevron-left" class="text-white" width="24" height="24"></iconify-icon>
              </a>
    
              <div class="text-center">
                  <div class="text-secondary-light fw-semibold fs-5">Tanggal</div>
                  <div class="text-secondary-light">
                      {{ \Carbon\Carbon::parse($selectedDate)->translatedFormat('l, d F Y') }}
                  </div>
              </div>
    
              <a href="{{ $nextDate ? url()->current() . '?date=' . $nextDate : '#' }}"
              class="btn btn-secondary rounded-circle d-flex justify-content-center align-items-center {{ !$nextDate ? 'disabled' : '' }}"
              style="width: 40px; height: 40px;">
                  <iconify-icon icon="mdi:chevron-right" class="text-white" width="24" height="24"></iconify-icon>
              </a>
          </div>
        </div>

        <div class="card h-100 radius-8 border-0">
            <div id="barChart"></div>
        </div>

        <div class="d-flex justify-content-center gap-3 mt-4">
            <a href="https://www.instagram.com/upstairsgym?igsh=NTU3MHhsbnV5cTY1&utm_source=qr" target="_blank"
              class="d-flex justify-content-center align-items-center radius-8"
              style="width: 48px; height: 48px; background-color: #222;">
                <i class="ri-instagram-line text-white" style="font-size: 24px;"></i>
            </a>
        
            <a href="https://www.tiktok.com/@upstairsgym?_t=ZS-8wTZaUopbLM&_r=1" target="_blank"
              class="d-flex justify-content-center align-items-center radius-8"
              style="width: 48px; height: 48px; background-color: #222;">
                <i class="ri-tiktok-line text-white" style="font-size: 24px;"></i>
            </a>
        </div>
      
    </div>
    <!-- Chart Bar End -->
</div>
@endsection

@section('js')
<!-- Apex Chart js -->
<script src="{{ asset('backend') }}/assets/js/lib/apexcharts.min.js"></script>
<script>
    var options = {
      chart: {
        type: 'bar',
        height: 500,
        stacked: true,
        toolbar: { show: false },
      },
      plotOptions: {
        bar: {
          horizontal: true,
          barHeight: '60%',
        },
      },
      colors: ['#70f35f', '#4fd1ff', '#ff4d6d'],
      series: [
        {
          name: 'Sepi',
          data: @json($sepi)
        },
        {
          name: 'Normal',
          data: @json($normal)
        },
        {
          name: 'Ramai',
          data: @json($ramai)
        },
      ],
      xaxis: {
        categories: @json($categories),
        labels: { style: { colors: '#ffffff' } }
      }
    };
  
    var chart = new ApexCharts(document.querySelector("#barChart"), options);
    chart.render();
</script>
@endsection