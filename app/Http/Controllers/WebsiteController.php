<?php

namespace App\Http\Controllers;

use App\Models\Artikel;
use App\Models\Writers;
use Illuminate\Http\Request;

class WebsiteController extends Controller
{
    public function index()
    {
        $artikel = Artikel::InRandomOrder()->limit(2)->get();
        return view('website.index',compact('artikel'));
    }

    public function artikel($artikel)
    {
        $data = Artikel::InRandomOrder()->where('category',$artikel)->get();
        return view('website.artikel',compact('data','artikel'));
    }

    public function artikel_detail($id)
    {
        $data = Artikel::where('id',$id)->first();
        $data->increment('view');
        return view('website.artikel_detail',compact('data'));
    }

    public function writers()
    {
        $writers = Writers::get();
        return view('website.writers',compact('writers'));
    }

    public function showArticles($id)
    {
        $writers = Writers::with('articles')->where('id',$id)->get();
        return view('website.writers_show',compact('writers'));

    }

    public function about()
    {
        return view('website.about');
    }

    public function popular()
    {
        $data = Artikel::orderBy('view', 'desc')->paginate(3);

        return view('website.popular', compact('data'));
    }
}
