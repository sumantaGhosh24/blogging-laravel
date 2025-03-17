<section>
    <div>
        <h2 class="text-2xl font-semibold mb-4">{{ __('Update Category') }}</h2>
    </div>

    <form method="POST" action="{{ route('admin.category.update', ['id' => $category->id]) }}" class="mt-6 space-y-6">
        @csrf
        @method('put')

        <div>
            <x-input-label for="name" :value="__('Name')" />
            <x-text-input id="name" class="" type="text" name="name" :value="old('name', $category->name)" required autofocus autocomplete="name" />
            <x-input-error :messages="$errors->get('name')" class="mt-2" />
        </div>

        <x-primary-button class="mt-4 max-w-fit">{{ __('Update Category') }}</x-primary-button>
    </form>
</section>