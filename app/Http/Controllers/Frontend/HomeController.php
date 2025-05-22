<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        // Ambil tanggal yang dipilih dari query, default hari ini
        $selectedDate = $request->query('date') ?? Carbon::today()->toDateString();

        // Ambil semua tanggal unik dari tabel visitors
        $availableDates = DB::table('visitors')
            ->select('date')
            ->distinct()
            ->orderBy('date', 'asc')
            ->pluck('date')
            ->map(fn ($d) => Carbon::parse($d)->toDateString()) // pastikan formatnya sama
            ->toArray();

        // Cari index tanggal saat ini di array tanggal
        $currentIndex = array_search($selectedDate, $availableDates);

        // Tentukan tanggal sebelumnya dan sesudahnya
        $previousDate = $currentIndex > 0 ? $availableDates[$currentIndex - 1] : null;
        $nextDate = $currentIndex < count($availableDates) - 1 ? $availableDates[$currentIndex + 1] : null;

        // Ambil data visitor sesuai tanggal yang dipilih
        $rawData = DB::table('visitors')
            ->whereDate('date', $selectedDate)
            ->select('start_time', 'end_time', 'visitor_count')
            ->orderBy('start_time')
            ->get();

        if ($rawData->isEmpty()) {
            return view('backend.dashboard.index', [
                'categories' => [],
                'sepi' => [],
                'normal' => [],
                'ramai' => [],
                'selectedDate' => $selectedDate,
                'previousDate' => $previousDate,
                'nextDate' => $nextDate,
            ]);
        }

        $categories = [];
        $sepi = [];
        $normal = [];
        $ramai = [];

        foreach ($rawData as $item) {
            $label = Carbon::parse($item->start_time)->format('H:i') . ' - ' .
                     Carbon::parse($item->end_time)->format('H:i');

            $categories[] = $label;

            $count = $item->visitor_count;

            if ($count >= 1 && $count <= 5) {
                $sepi[] = $count;
                $normal[] = 0;
                $ramai[] = 0;
            } elseif ($count >= 6 && $count <= 10) {
                $sepi[] = 0;
                $normal[] = $count;
                $ramai[] = 0;
            } elseif ($count >= 11) {
                $sepi[] = 0;
                $normal[] = 0;
                $ramai[] = $count;
            } else {
                // Di luar rentang 1–20 dianggap tidak terklasifikasi
                $sepi[] = 0;
                $normal[] = 0;
                $ramai[] = 0;
            }
        }

        return view('frontend.home.index', [
            'categories' => $categories,
            'sepi' => $sepi,
            'normal' => $normal,
            'ramai' => $ramai,
            'selectedDate' => $selectedDate,
            'previousDate' => $previousDate,
            'nextDate' => $nextDate,
        ]);
    }
}
