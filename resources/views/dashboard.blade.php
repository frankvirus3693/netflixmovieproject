<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link rel="icon" type="image/x-icon" href="{{ asset('icon/netflix.png') }}">
<title>Netflix</title>

<x-app-layout>
    @vite(['resources/css/dashboard.css', ''])
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-white leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12 bg-black-ex">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900">

                    <div class=" p-4 rounded card-container">
                        @php
                            $movieCount = \App\Models\Movie::count();
                        @endphp

                        <div class="card mb-3 shadow-lg border-primary p-4 bg-black-ex"
                            style="background-image: url('{{ asset('icon/all-d.jpg') }}'); background-size: cover; background-position: center;">
                            <div class="card-body text-white">
                                <h5 class="card-title">หนังทั้งหมด</h5>
                                <p class="card-text">{{ $movieCount }}<a>เรื่อง</a></p>

                            </div>
                        </div>

                        @php
                            $typeCounts = \App\Models\Movie::select('type', \DB::raw('count(*) as count'))
                                ->groupBy('type')
                                ->get();
                            
                            // สร้างอาเรย์สีที่เป็นตัวเลือก
                            $colors = ['bg-red-500', 'bg-blue-500', 'bg-gray-500'];
                            
                            // สร้างอาเรย์รูปภาพที่เป็นตัวเลือก
                            $images = [asset('icon/anime-d.jpg'), asset('icon/movie-d.jpg'), asset('icon/serie-d.jpg')];
                        @endphp

                        @foreach ($typeCounts as $index => $typeCount)
                            @php
                                // เลือกสีจากอาเรย์สีโดยใช้สุ่มหรือเลือกตามลำดับ
                                $colorClass = $colors[$index % count($colors)];
                                
                                // เลือกรูปภาพจากอาเรย์รูปภาพโดยใช้สุ่มหรือเลือกตามลำดับ
                                $image = $images[$index % count($images)];
                            @endphp

                            <div class="card mb-3 shadow-lg border-primary p-4 {{ $colorClass }}"
                                style="background-image: url('{{ $image }}'); background-size: cover; background-position: center;">
                                <div class="card-body text-white">
                                    <h5 class="card-title">
                                        {{ $typeCount->type }}
                                    </h5>
                                    <p class="card-text">{{ $typeCount->count }} <a>เรื่อง</a></p>
                                </div>
                            </div>
                        @endforeach



                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
