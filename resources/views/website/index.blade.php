@extends('template.index')
@section('content_website')


    <!-- Header Image -->
    <div class="" >
        <img src="https://wallpapers.com/images/hd/aesthetic-landscape-dark-forest-l1c048nwcf3sh04u.jpg" class="img-fluid " alt="Header Image">
    </div>

    <!-- Articles Section -->
    <div class="container my-5">
        <div class="row g-4">
            @foreach ($artikel as $value)
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
        </div>
    </div>
    

@endsection