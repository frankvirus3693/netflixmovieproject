<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Netflix</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="icon" type="image/x-icon" href="{{ asset('icon/netflix.png') }}">
    @vite(['resources/css/home.css', 'resources/js/home.js'])
</head>

<body>

    <div class="container-fluid" style="position: relative;">
        <div id="animeCarousel" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach ($posts as $index => $post)
                    <div class="carousel-item {{ $index === 0 ? 'active' : '' }}">
                        <div style="position: relative;">
                            <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}"
                                class="d-block w-100 custom-image">
                            <button class="btn btn-danger read-more-button" data-toggle="modal"
                                data-target="#postModal{{ $index }}" data-id="{{ $index }}"
                                style="position: absolute; bottom: 10%; left: 5%; box-shadow: 0 4px 4px rgba(0, 0, 0, 0.);">Read
                                More</button>

                        </div>

                        <!-- Add this div for card-info -->
                        <div class="card-info" data-target="{{ $index }}" style="display: none;">
                            <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}">
                            <h5 class="card-title">{{ $post->title }}</h5>
                            <p class="card-text">{{ $post->type }}</p>
                            <p class="card-text">{{ $post->content }}</p>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>






    <nav class="navbar navbar-expand-lg navbar-dark"
        style="background-color: rgba(0,0,0,0.8); position: absolute; top: 0; width: 100%;">
        <!-- สีโปร่งใส 80% -->
        <a class="navbar-brand" href="/">
            <img src="{{ asset('icon/netflix2.png') }}" alt="Netflix" style="width: 100%; height: 40px;">
        </a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item">
                    <a class="nav-link" href="/anime">Anime</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/movie">Movie</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/series">Series</a>
                </li>
            </ul>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/dashboard">Login</a>
                </li>
            </ul>
        </div>
    </nav>


    <!-- Anime -->

    <div class="container-fruid py-4 px-4">
        <h2 class="text-white">Anime</h2>
        <div class="row">
            @foreach ($posts as $post)
                @if ($post->type === 'Anime')
                    <div class="col-md-4 col-sm-6 col-xs-12">
                        <div class="card card-zoom">
                            <div class="card-img-wrapper">
                                <!-- เพิ่ม data-src เพื่อเก็บ URL ของรูปภาพ -->
                                <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}"
                                    class="card-img-top" data-src="{{ asset('storage/' . $post->featured_image) }}">
                            </div>
                            <div class="card-info">
                                <h5 class="card-title">{{ $post->title }}</h5>
                                <p class="card-text">{{ $post->type }}</p>
                                <p class="card-text">{{ $post->content }}</p>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>

    <!-- Movie -->

    <div class="container-fruid py-4 px-4">
        <h2 class="text-white">Movie</h2>
        <div class="row">
            @foreach ($posts as $post)
                @if ($post->type === 'Movie')
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="card card-zoom">
                            <div class="card-img-wrapper">
                                <!-- เพิ่ม data-src เพื่อเก็บ URL ของรูปภาพ -->
                                <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}"
                                    class="card-img-top" data-src="{{ asset('storage/' . $post->featured_image) }}">
                            </div>
                            <div class="card-info">
                                <h5 class="card-title">{{ $post->title }}</h5>
                                <p class="card-text">{{ $post->type }}</p>
                                <p class="card-text">{{ $post->content }}</p>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>

    <!-- Series -->

    <div class="container-fruid py-4 px-4">
        <h2 class="text-white">Series</h2>
        <div class="row">
            @foreach ($posts as $post)
                @if ($post->type === 'Series')
                    <div class="col-md-5 col-sm-6 col-xs-12">
                        <div class="card card-zoom">
                            <div class="card-img-wrapper">
                                <!-- เพิ่ม data-src เพื่อเก็บ URL ของรูปภาพ -->
                                <img src="{{ asset('storage/' . $post->featured_image) }}" alt="{{ $post->title }}"
                                    class="card-img-top" data-src="{{ asset('storage/' . $post->featured_image) }}">
                            </div>
                            <div class="card-info">
                                <h5 class="card-title">{{ $post->title }}</h5>
                                <p class="card-text">{{ $post->type }}</p>
                                <p class="card-text">{{ $post->content }}</p>
                            </div>
                        </div>
                    </div>
                @endif
            @endforeach
        </div>
    </div>


    <!-- Modal -->

    <div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="postModalLabel"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- ส่วนนี้จะถูกแทรกข้อมูลโพสต์โดย JavaScript -->
                </div>
            </div>
        </div>
    </div>


    <!-- Include Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- เพิ่ม jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
