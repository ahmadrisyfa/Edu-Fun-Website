@extends('template.index')
@section('content_website')
<style>
     .profile-card {
      background-color: #f5f7f9;
      padding: 20px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }
    .profile-card img {
      width: 80px;
      height: 80px;
      border-radius: 50%;
      margin-right: 20px;
    }
</style>
@foreach ($writers as $value)
    <div class="container" style="padding-bottom: 130px">
        <div class="profile-card">
            <img src="{{ url('storage/writers/'.$value->gambar) }}" alt="Bia Mecca Annisa">
            <div>
            <h4 class="mb-0">{{ $value->nama }}</h4>
            <p class="text-muted">{{ $value->posisi }}</p>
            </div>
        </div>

  <div class="my-2">
    <div class="row g-4">
        @foreach ($value->articles as $article)
        <div class="col-12">
            <div class="d-flex bg-light p-3 rounded shadow-sm">
                <img src="{{ url('storage/artikel/'.$article->gambar) }}" alt="Image 1" class="rounded me-3" style="width: 300px;">
                <div class="flex-grow-1">
                    <h5>{{ $article->judul }}</h5>
                    <small class="text-muted">{{ \Carbon\Carbon::parse($article->tanggal)->translatedFormat('d F Y') }}
                        | By {{ $value->nama }}</small>
                    <p class="mt-2">
                        {{ \Illuminate\Support\Str::words($article->deskripsi, 20, '...') }}
                    </p>
                    <div class="d-flex justify-content-end mt-3">
                        <a href="{{ url('category/detail/'.$article->id) }}" class="btn btn-dark rounded-pill px-4">Read More...</a>
                    </div>
                </div>
            </div>
        </div>
        @endforeach
    </div>
  </div>
</div>

@endforeach
@endsection