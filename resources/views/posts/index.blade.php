<link rel="icon" type="image/x-icon" href="{{ asset('icon/netflix.png') }}">
<x-app-layout>
    <x-slot name="header">
        <div class="flex justify-between">
            <h2 class="font-semibold text-xl text-white leading-tight">
                {{ 'ข้อมูลหนัง' }}
            </h2>
            <a href="{{ route('posts.create') }}" class="bg-red-500 text-white px-4 py-2 rounded-md">เพิ่มข้อมูล</a>
        </div>
    </x-slot>

    <div class="py-12 bg-black-ex">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-gray-100 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 ">
                    <table class="border-collapse table-auto w-full text-sm">
                        <thead>
                            <tr>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Image</th>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Title
                                </th>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Type</th>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Created At
                                </th>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Updated At
                                </th>
                                <th class="border-b font-large p-4 pl-8 pt-0 pb-3 text-black text-left">Action</th>
                                </th>
                            </tr>
                        </thead>
                        <tbody class="bg-gray-100">
                            @foreach ($posts as $post)
                                <tr>
                                    <td
                                        class="border-b border-slate-100 dark:border-slate-700 p-4 pl-8 text-slate-500 dark:text-slate-400">
                                        <img src="{{ asset('storage/' . $post->featured_image) }}"
                                            alt="{{ $post->title }}" width="100">
                                    </td>
                                    <td class="border-b border-slate-100 p-4 pl-8 text-slate-500 dark: text-black">
                                        {{ $post->title }}</td>
                                    <td class="border-b border-slate-100 p-4 pl-8 text-slate-500 dark: text-black">
                                        {{ $post->type }}</td>
                                    <td class="border-b border-slate-100 p-4 pl-8 text-slate-500 dark: text-black">
                                        {{ $post->created_at }}</td>
                                    <td class="border-b border-slate-100 p-4 pl-8 text-slate-500 dark: text-black">
                                        {{ $post->updated_at }}</td>
                                    <td class="border-b border-slate-100 p-4 pl-8 text-slate-500 dark: text-black">
                                        <a href="{{ route('posts.show', $post->id) }}"
                                            class="border border-blue-500 hover:bg-blue-500 hover:text-white px-4 py-2 rounded-md">SHOW</a>
                                        <a href="{{ route('posts.edit', $post->id) }}"
                                            class="border border-yellow-500 hover:bg-yellow-500 hover:text-white px-4 py-2 rounded-md">EDIT</a>
                                        <form method="post" action="{{ route('posts.destroy', $post->id) }}"
                                            class="inline">
                                            @csrf
                                            @method('delete')
                                            <button
                                                class="border border-red-500 hover:bg-red-500 hover:text-white px-4 py-2 mt-4 rounded-md">DELETE</button>
                                        </form>
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                    <div class="mt-4">
                        {{ $posts->links() }}
                    </div>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>
