<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        return view('home');
    }

    public function upload(Request $request)
    {
        // get input
        $image = $request->file('image');

        // validasi ukuran
        if (($image->getSize() / 1024) > 500) {
            return view('home', [
                'message' => 'Ukuran file maksimal 500 KB'
            ]);
        }

        // validasi file type
        if ($image->extension() != 'jpg' || $image->extension() != 'jpeg') {
            return view('home', [
                'message' => 'Tipe file hanya boleh JPG'
            ]);
        }

        // pindahkan file
        $image->move('images', $image->getClientOriginalName());

        return view('home', [
            'message' => 'Upload berhasil!'
        ]);
    }
}
