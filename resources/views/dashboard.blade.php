<x-app-layout>
    <x-slot:title>User Dashboard</x-slot>

    @if (session('message'))
        <div class="py-12">
            <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
                <div class="overflow-hidden shadow-sm sm:rounded-lg bg-blue-700">
                    <h2 class="p-6 text-gray-900 text-white font-bold">{{ session('message') }}</h2>
                </div>
            </div>
        </div>
    @endif

    <div class='flex items-center justify-center h-screen'>
        <div class='h-[500px] w-[60%] gap-5 shadow-md rounded-md shadow-black text-center'>
            <h1 class='text-4xl font-bold capitalize mt-36'>Welcome to laravle bloggin website</h1>
        </div>
    </div>
</x-app-layout>