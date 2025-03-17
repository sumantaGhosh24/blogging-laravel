<x-app-layout>
    <x-slot:title>Admin Create Blog</x-slot>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
    <script src="https://cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>

    <div class="flex justify-center items-center h-screen">
        <div class="rounded-lg shadow-md p-8 shadow-black w-[60%]">
            <h1 class="text-3xl font-semibold mb-4">Admin Create Blog</h1>
            <form method="POST" action="{{ route('admin.blog.store') }}" enctype="multipart/form-data">
                @csrf

                <div class="mt-4">
                    <x-input-label for="image" :value="__('Image')" />
                    <x-text-input id="image" name="image" type="file" class="mt-1 w-full px-4 py-2 rounded-md border border-gray-300" :value="old('image')" required autofocus autocomplete="image" />
                    <x-input-error class="mt-2" :messages="$errors->get('image')" />
                </div>

                <div>
                    <x-input-label for="title" :value="__('Title')" />
                    <x-text-input id="title" class="" type="text" name="title" :value="old('title')" required autofocus autocomplete="title" />
                    <x-input-error :messages="$errors->get('title')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="description" :value="__('Description')" />
                    <x-text-input id="description" class="" type="text" name="description" :value="old('description')" required autofocus autocomplete="description" />
                    <x-input-error :messages="$errors->get('description')" class="mt-2" />
                </div>

                <div>
                    <x-input-label for="content" :value="__('Content')" />
                    <textarea name="content" id="markdown-editor">{{ old('content') }}</textarea>
                    <x-input-error :messages="$errors->get('content')" class="mt-2" />
                </div>

                <div class="mt-4">
                    <x-input-label for="category_id" :value="__('Category')" />
                    <br />
                    <select id='category_id' name='category_id' class="mt-2 w-full px-4 py-2 rounded-md border border-gray-300" placeholder="Select category" value="{{ old('category_id') }}" required autofocus autocomplete="category_id">
                        <option value="">Select Category</option>
                        @foreach ($categories as $category)
                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                        @endforeach
                    </select>
                    <x-input-error :messages="$errors->get('category_id')" class="mt-2" />
                </div>

                <x-primary-button class="mt-4 max-w-fit">{{ __('Create Blog') }}</x-primary-button>
            </form>
        </div>
    </div>

    <script>
        var simplemde = new SimpleMDE({ element: document.getElementById("markdown-editor") });
    </script>
</x-app-layout>