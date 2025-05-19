<?php

namespace App\Http\Controllers\Backend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Visitor;

class VisitorController extends Controller
{
    public function index()
    {
        $data['visitors'] = Visitor::orderBy('created_at', 'desc')->get();

        return view('backend.visitor.index', $data);
    }

    public function create()
    {
        return view('backend.visitor.create');
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'date' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'visitor_count' => 'required',
        ]);

        Visitor::create($data);

        return redirect('visitors')->with('message', 'Berhasil ditambahkan!');
    }

    public function edit(Visitor $visitor)
    {
        $data = [
            'visitor' => $visitor
        ];

        return view('backend.visitor.edit', $data);
    }

    public function update(Request $request, Visitor $visitor)
    {

        $data = $request->validate([
            'date' => 'required',
            'start_time' => 'required',
            'end_time' => 'required',
            'visitor_count' => 'required',
        ]);

        $visitor->update($data);

        return redirect('visitors')->with('message', 'Berhasil diperbarui!');
    }

    public function destroy(Visitor $visitor)
    {
        $visitor->delete();

        return response()->json(['message' => 'Berhasil dihapus!']);
    }
}
