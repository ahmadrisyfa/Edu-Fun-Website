
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EduFun</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm" style="height: 70px;">
        <div class="container">
            <a class="navbar-brand" href="#">
                <!-- <img src="logo.png" alt="EduFun Logo" style="height: 40px;"> -->
                 <b>
                    <h1 style="font-family:Tahoma, Geneva, Verdana, sans-serif;font-weight:bold">
                        {{-- EduFun --}}
                        <img src="{{ asset('img/d-removebg-preview.png') }}" alt="" style="width: 100px">

                    </h1>
                 </b>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="{{ url('/') }}"style="padding-right:30px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;color:black">Home</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="categoryDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="padding-right:30px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;color:black">
                            Category
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="categoryDropdown">
                            <li><a class="dropdown-item" href="{{ url('category/Data Science') }}">Data Science</a></li>
                            <li><a class="dropdown-item" href="{{ url('category/Network Security') }}">Network Security</a></li>
                        </ul>
                    </li>
                    <li class="nav-item" style="padding-right:30px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;color:black">
                        <a class="nav-link active" href="{{ url('writers') }}">Writers</a>
                    </li>
                    <li class="nav-item" style="padding-right:30px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;color:black">
                        <a class="nav-link active" href="{{ url('about') }}">About Us</a>
                    </li>
                    <li class="nav-item" style="padding-right:30px;font-weight:bold;font-family:Arial, Helvetica, sans-serif;color:black">
                        <a class="nav-link active" href="{{ url('popular') }}">Popular</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <div style="background-color: #F0F4EF">
        @yield('content_website')
    </div>
    
    <!-- Footer -->
    <footer class="bg-dark text-white text-center py-3">
        © EduFun 2024 | Web Programming | Your Name | Your NIM
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
