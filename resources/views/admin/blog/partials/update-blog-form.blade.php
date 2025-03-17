<section>
    <div>
        <h2 class="text-2xl font-semibold mb-4">{{ __('Update Blog') }}</h2>
    </div>

    <form method="POST" action="{{ route('admin.blog.update', ['id' => $blog->id]) }}" class="mt-6 space-y-6">
        @csrf
        @method('put')

        <div>
            <x-input-label for="title" :value="__('Title')" />
            <x-text-input id="title" class="" type="text" name="title" :value="old('title', $blog->title)" required autofocus autocomplete="title" />
            <x-input-error :messages="$errors->get('title')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="description" :value="__('Description')" />
            <x-text-input id="description" class="" type="text" name="description" :value="old('description', $blog->description)" required autofocus autocomplete="description" />
            <x-input-error :messages="$errors->get('description')" class="mt-2" />
        </div>

        <div>
            <x-input-label for="content" :value="__('Content')" />
            <textarea name="content" id="markdown-editor">{{ old('content', $blog->content) }}</textarea>
            <x-input-error :messages="$errors->get('content')" class="mt-2" />
        </div>
        
        <div class="mt-4">
            <x-input-label for="category_id" :value="__('Category')" />
            <br />
            <select id='category_id' name='category_id' class="mt-2 w-full px-4 py-2 rounded-md border border-gray-300" placeholder="Select category" value="{{ old('category_id', $blog->category_id) }}" required autofocus autocomplete="category_id">
                <option value="">Select Category</option>
                @foreach ($categories as $category)
                    <option value="{{ $category->id }}">{{ $category->name }}</option>
                @endforeach
            </select>
            <x-input-error :messages="$errors->get('category_id')" class="mt-2" />
        </div>

        <x-primary-button class="mt-4 max-w-fit">{{ __('Update Blog') }}</x-primary-button>
    </form>

    <script>
        var simplemde = new SimpleMDE({ element: document.getElementById("markdown-editor") });
    </script>
</section>