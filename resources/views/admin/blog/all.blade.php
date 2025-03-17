<x-app-layout>
    <x-slot:title>Admin Manage Blogs</x-slot>

    @if (session('message'))
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="overflow-hidden shadow-sm sm:rounded-lg bg-blue-700">
                    <h2 class="p-6 text-white font-bold">{{ session('message') }}</h2>
                </div>
            </div>
        </div>
    @endif

    <div class="pt-8">
        <div class="flex items-center justify-between container mx-auto">
            <h2 class="text-2xl font-bold mb-4 text-center">Manage Blogs</h2>
            <a href="{{ route('admin.blog.create') }}" class="bg-blue-500 text-white px-4 py-2 rounded-md hover:bg-blue-600 transition-colors disabled:bg-blue-200 w-fit">Create Blog</a>
        </div>
        <div class="overflow-x-scroll">
            <table class="min-w-full bg-white rounded-lg shadow-md mx-auto mt-5">
                <thead>
                    <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                        <th class="py-3 px-6 text-left">ID</th>
                        <th class="py-3 px-6 text-left">Title</th>
                        <th class="py-3 px-6 text-left">Description</th>
                        <th class="py-3 px-6 text-left">Image</th>
                        <th class="py-3 px-6 text-left">Category</th>
                        <th class="py-3 px-6 text-left">Owner</th>
                        <th class="py-3 px-6 text-left">Created At</th>
                        <th class="py-3 px-6 text-left">Updated At</th>
                        <th class="py-3 px-6 text-left">Actions</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($blogs as $blog)
                        <tr>
                            <td class="py-3 px-6 text-left">{{ $blog->id }}</td>
                            <td class="py-3 px-6 text-left">{{ $blog->title }}</td>
                            <td class="py-3 px-6 text-left">{{ $blog->description }}</td>
                            <td class="py-3 px-6 text-left">
                                <img src="{{ asset('storage/' . $blog->image) }}" alt="blog" class="w-12 h-12 rounded-full" />
                            </td>
                            <td class="py-3 px-6 text-left">
                                <p class="text-lg font-bold">{{ $blog->category->name }}</p>
                            </td>
                            <td class="py-3 px-6 text-left">
                                <p class="text-lg font-bold">{{ $blog->owner->email }}</p>
                            </td>
                            <td class="py-3 px-6 text-left">{{ $blog->created_at }}</td>
                            <td class="py-3 px-6 text-left">{{ $blog->updated_at }}</td>
                            <td class="py-3 px-6 text-left flex items-center gap-3">
                                <a href="{{ route('admin.blog.edit', ['id' => $blog->id]) }}" class="w-fit bg-green-500 text-white px-4 py-2 rounded-md hover:bg-green-600 transition-colors disabled:bg-green-200">Update</a>
                                <form action="{{ route('admin.blog.destroy', ['id' => $blog->id]) }}" method="POST">
                                    @csrf
                                    @method('DELETE')

                                    <button type="submit" class="w-fit bg-red-500 text-white px-4 py-2 rounded-md hover:bg-red-600 transition-colors disabled:bg-red-200">Delete</button>
                                </form>
                            </td>
                        </tr>
                    @empty
                        <h2 class="text-2xl font-bold my-5">No Blogs Found!</h2>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</x-app-layout>