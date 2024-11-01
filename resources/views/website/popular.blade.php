@extends('template.index')
@section('content_website')
    <div class="container">
        <h1 class="py-3">
            Popular
        </h1>
    </div>

    <div class="container my-3">
        <div class="row g-4">
            @foreach ($data as $value)
            <div class="col-12">
                <div class="d-flex bg-light p-3 rounded shadow-sm">
                    <img src="{{ url('storage/artikel/'.$value->gambar) }}" alt="Image 1" class="rounded me-3" style="width: 300px;">
                    <div class="flex-grow-1">
                        <h5>{{ $value->judul }}</h5>
                        <small class="text-muted">{{ \Carbon\Carbon::parse($value->tanggal)->translatedFormat('d F Y') }}
                            | By {{ $value->writers->nama }}</small>
                        <p class="mt-2">
                            {{ \Illuminate\Support\Str::words($value->deskripsi, 20, '...') }}
                        </p>
                        <div class="d-flex justify-content-end mt-3">
                            <a href="{{ url('category/detail/'.$value->id) }}" class="btn btn-dark rounded-pill px-4">Read More...</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
            <div class="d-flex justify-content-center mt-4">
                {{ $data->links('pagination::bootstrap-5') }}
            </div>
            
            
        </div>
    </div>
@endsection