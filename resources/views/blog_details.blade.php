<x-app-layout>
    <x-slot:title>Blog Details</x-slot>

    @if (session('message'))
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="overflow-hidden shadow-sm sm:rounded-lg bg-blue-700">
                    <h2 class="p-6 text-white font-bold">{{ session('message') }}</h2>
                </div>
            </div>
        </div>
    @endif

    <div class="min-h-screen">
        <div class="container mx-auto">
            <div class="shadow-md shadow-black p-5 rounded my-10">
                <h2 class="text-2xl font-bold capitalize">{{ $blog->title }}</h2>
                <h3 class="text-lg font-medium my-5">{{ $blog->description }}</h3>
                <img src="{{ asset('storage/' . $blog->image) }}" alt="blog" class="h-[300px] w-full rounded" />
                <h4 class="my-5">{!! $content !!}</h4>
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
                <form class="mt-6" method="POST" action="{{ route('comment.store', ['id' => $blog->id]) }}">
                    @csrf

                    <h2 class='text-3xl font-bold'>Create Comment</h2>
    
                    <div>
                        <x-input-label for="message" :value="__('Message')" />
                        <x-text-input id="message" class="" type="text" name="message" :value="old('message')" required autofocus autocomplete="message" />
                        <x-input-error :messages="$errors->get('message')" class="mt-2" />
                    </div>
                    
                    <x-primary-button class="mt-4 max-w-fit">{{ __('Create Comment') }}</x-primary-button>
                </form>
                <div class="mt-6">
                    @forelse ($blog->comments as $comment)
                        <div class='bg-gray-200 p-3 my-4 rounded space-y-3'>
                            <h2 class='text-xl font-bold capitalize'>{{ $comment->message }}</h2>
                            <h4>Owner: {{ $comment->owner->email }}</h4>
                            <h5 class='text-xs font-light'>{{ $comment->created_at }}</h5>
                        </div>
                    @empty
                        <h2 class="text-2xl font-bold my-5">No Comments Found!</h2>
                    @endforelse
                </div>
            </div>
        </div>
    </div>
</x-app-layout>