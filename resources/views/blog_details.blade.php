<x-app-layout>
    <x-slot:title>Blog Details</x-slot>

    <div class="min-h-screen">
        <div class="container mx-auto">
            <div class="shadow-md shadow-black p-5 rounded my-10">
                <h2 class="text-2xl font-bold capitalize">{{ $blog->title }}</h2>
                <h3 class="text-lg font-medium my-5">{{ $blog->description }}</h3>
                <img src="{{ asset('storage/' . $blog->image) }}" alt="blog" class="h-36 w-36 rounded" />
                <h4 class="my-5">{!! $content !!}</h4>
                <h4>Id: {{ $blog->id }}</h4>
                <div class='my-5'>
                    <div class="flex items-center gap-3">
                        <img src="{{ asset('storage/' . $blog->category->image) }}" alt="category" class="h-16 w-16 rounded-full" />
                        <h4>{{ $blog->category->name }}</h4>
                    </div>
                </div>
                <div>
                    <div class="flex items-center gap-3">
                        <img src="{{ asset('storage/' . $blog->owner->image) }}" alt="blog" class="h-16 w-16 rounded-full" />
                        <h4>{{ $blog->owner->email }}</h4>
                    </div>
                </div>
                <h5 class="my-5">Created At: {{ $blog->created_at }}</h5>
                <h5>Updatd At:{{ $blog->updated_at }}</h5>
            </div>
        </div>
    </div>
</x-app-layout>