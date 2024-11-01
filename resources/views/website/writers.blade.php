@extends('template.index')
@section('content_website')
<style>
    .writer-card {
      text-align: center;
      padding: 20px;
      border-radius: 50%;
      background-color: white;
      width: 180px;
      height: 180px;
      display: flex;
      align-items: center;
      justify-content: center;
      margin: auto;
    }
    .writer-name {
      font-weight: bold;
      margin-top: 10px;
    }
    .writer-specialty {
      color: #0f0f0f;
      font-size: 1.2rem;
    }
  </style>

<div class="text-center " style="padding-bottom: 130px">
    <div class="container">
        <h2 style="text-align: left;padding-top:30px">Our Writers:</h2>
    </div>
  <div class="row justify-content-center mt-4">
    @foreach ($writers as $value)
    <div class="col-md-4 col-sm-6 mb-4" >
      <a href="{{ url('writers/'.$value->id.'/artikel') }}" style="text-decoration: none;">
        <div class="writer-card" style="border: 1px solid rgba(61, 60, 60, 0.24)">
          <img src="{{ url('storage/writers/'.$value->gambar) }}" alt="Raka Putra Wicaksono"  class="img-fluid rounded-circle">
        </div>
        <p class="writer-name">{{ $value->nama }}</p>
        <p class="writer-specialty">{{ $value->posisi }}</p>
      </a>
        </div>

    @endforeach
    
  </div>
</div>
@endsection