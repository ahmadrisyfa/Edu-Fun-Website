@extends('template.index')
@section('content_website')
    <div class="container">
        <h1 class="py-3">
            {{ $data->category }}
        </h1>
    </div>
    <div class="container">
        {{-- <img src="{{ url('storage/artikel/'.$data->gambar) }}" class="img-fluid rounded" alt="Header Image"> --}}
        <div style="display: flex; justify-content: center;">
            <img src="{{ url('storage/artikel/'.$data->gambar) }}" class="img-fluid rounded" alt="Header Image">
        </div>
        
        <br>
        <small class="text-muted">{{ \Carbon\Carbon::parse($data->tanggal)->translatedFormat('d F Y') }}
            | By {{ $data->writers->nama }}</small>
    </div>
    <div class="container my-3">
        <h2>{{ $data->judul }}</h2>
        <div class="row my-4">
                {{$data->deskripsi}}
        </div>
    </div>
@endsection