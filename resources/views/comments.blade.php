<x-app-layout>
    <x-slot:title>My Comments</x-slot>

    <div class="pt-8">
        <h2 class="text-2xl font-bold mb-4 text-center">My Comments</h2>
        <div class="overflow-x-scroll">
            <table class="min-w-full bg-white rounded-lg shadow-md mx-auto mt-5">
                <thead>
                    <tr class="bg-gray-200 text-gray-600 uppercase text-sm leading-normal">
                        <th class="py-3 px-6 text-left">ID</th>
                        <th class="py-3 px-6 text-left">Message</th>
                        <th class="py-3 px-6 text-left">Blog</th>
                        <th class="py-3 px-6 text-left">Created At</th>
                        <th class="py-3 px-6 text-left">Updated At</th>
                    </tr>
                </thead>
                <tbody>
                    @forelse ($comments as $comment)
                        <tr>
                            <td class="py-3 px-6 text-left">{{ $comment->id }}</td>
                            <td class="py-3 px-6 text-left">{{ $comment->message }}</td>
                            <td class="py-3 px-6 text-left">
                                <a href="{{ route('blog.details', ['id' => $comment->blog_id]) }}" class="w-fit bg-green-500 px-4 py-2 rounded-md hover:bg-green-600 transition-colors disabled:bg-green-200 text-white underline">{{ $comment->blog->title }}</a>
                            </td>
                            <td class="py-3 px-6 text-left">{{ $comment->created_at }}</td>
                            <td class="py-3 px-6 text-left">{{ $comment->updated_at }}</td>
                        </tr>
                    @empty
                        <h2 class="text-2xl font-bold my-5">No Comments Found!</h2>
                    @endforelse
                </tbody>
            </table>
        </div>
    </div>
</x-app-layout>