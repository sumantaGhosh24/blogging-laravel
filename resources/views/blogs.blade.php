<x-app-layout>
    <x-slot:title>Blogs</x-slot>

    <div class="flex justify-center items-start">
        <div class="rounded-lg shadow-md p-8 shadow-black w-[90%] my-20">
            <form action="{{ route('all_blogs') }}">
                <div class="flex items-center justify-between gap-2 flex-col md:flex-row">
                    <input type="text" class="w-full px-4 py-2 rounded-md border border-gray-300" placeholder="Search blog" name="title" id="title" value="" />
                    <select name="category_id" id="category_id" class="mb-2 w-full px-4 py-2 rounded-md border border-gray-300">
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endforeach
                    </select>
                    <select name="sort_order" id="sort_order" class="mb-2 w-full px-4 py-2 rounded-md border border-gray-300">
                        <option value="asc">Newest</option>
                        <option value="desc">Oldest</option>
                    </select>
                    <button type="submit" class="w-full bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 transition-colors disabled:bg-blue-200">Search Blog</button>
                </div>
            </form>
            <div class="flex flex-col gap-3 my-5">
                @foreach ($blogs as $blog)
                    <a href="{{ route('blog.details', ['id' => $blog->id])}}" class='my-5'>
                        <div class="shadow-black shadow-md rounded p-5">
                            <h2 class="capitalize text-2xl font-bold">{{ $blog->title }}</h2>
                            <p class="my-3">{{ $blog->description }}</p>
                            <p class="mt-3"><strong>Category:</strong> {{ $blog->category->name }}</p>
                            <p class="mt-3"><strong>Created At:</strong> {{ $blog->created_at }}</p>
                        </div>
                    </a>
                @endforeach
            </div>
            {{ $blogs->links() }}
        </div>
    </div>
</x-app-layout>