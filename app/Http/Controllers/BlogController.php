<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use League\CommonMark\CommonMarkConverter;

class BlogController extends Controller
{
    public function welcome()
    {
        return view('welcome');
    }

    public function all_blogs(Request $request)
    {
        $query = Blog::with(['category', 'owner']);

        if ($request->has('category_id')) {
            $query->where('category_id', $request->category_id);
        }

        if ($request->has('title')) {
            $query->where('title', 'like', '%' . $request->title . '%');
        }

        $sortBy = $request->get('sort_by', 'created_at');
        $sortOrder = $request->get('sort_order', 'desc');
        $query->orderBy($sortBy, $sortOrder);

        $blogs = $query->paginate(5);

        $categories = Category::all();

        return view('blogs', ['blogs' => $blogs, 'categories' => $categories]);
    }

    public function blog_details(string $id)
    {
        $blog = Blog::find($id);

        $markdown = $blog->content;
        $converter = new CommonMarkConverter();
        $html = $converter->convertToHtml($markdown);

        return view('blog_details', ['blog' => $blog, 'content' => $html]);
    }

    public function index()
    {
        $blogs = Blog::all();

        return view('admin.blog.all', ['blogs' => $blogs]);
    }

    public function create()
    {
        $categories = Category::all();

        return view('admin.blog.create', ['categories' => $categories]);
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => ['required', 'string', 'lowercase', 'min:10', 'max:75'],
            'description' => ['required', 'string', 'min:10', 'max:150'],
            'image' => ['required', 'image', 'mimes:jpeg,png,jpg,gif', 'max:2048'],
            'content' => ['required', 'string', 'min:10', 'max:250'],
            'category_id' => ['required', 'string']
        ]);

        if ($request->file('image')) {
            $image = $request->file('image');
            $newName = time() . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            Storage::disk('public')->put($newName, file_get_contents($image));
        }

        Blog::create([
            'title' => $request->title,
            'description' => $request->description,
            'image' => $newName,
            'content' => $request->content,
            'category_id' => $request->category_id,
            'owner_id' => $request->user()->id
        ]);

        return redirect()->route('admin.blogs')->with('message', 'Blog created successfully!');
    }

    public function edit(string $id)
    {
        $categories = Category::all();

        $blog = Blog::find($id);

        return view('admin.blog.update', ['categories' => $categories, 'blog' => $blog]);
    }

    public function update(Request $request, string $id)
    {
        $request->validate([
            'title' => ['required', 'string', 'lowercase', 'min:10', 'max:75'],
            'description' => ['required', 'string', 'min:10', 'max:150'],
            'content' => ['required', 'string', 'min:10', 'max:250'],
            'category_id' => ['required', 'string']
        ]);

        $blog = Blog::find($id);

        $blog->update([
            'title' => $request->title,
            'description' => $request->description,
            'content' => $request->content,
            'category_id' => $request->category_id
        ]);

        return redirect()->route('admin.blog.edit', ['id' => $id])->with('message', 'Blog updated successfully!');
    }

    public function image(Request $request, string $id)
    {
        $request->validate([
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048'
        ]);

        $blog = Blog::find($id);

        if (isset($blog->image)) {
            Storage::disk('public')->delete($blog->image);
        }

        if ($request->file('image')) {
            $image = $request->file('image');
            $newName = time() . '-' . uniqid() . '.' . $image->getClientOriginalExtension();

            Storage::disk('public')->put($newName, file_get_contents($image));
        }

        $blog->update(['image' => $newName]);

        return redirect()->route('admin.blog.edit', ['id' => $id])->with('message', 'Blog image updated successfully!');
    }

    public function destroy(string $id)
    {
        $blog = Blog::find($id);

        Storage::disk('public')->delete($blog->image);

        $blog->delete();

        return redirect()->route('admin.blogs')->with('message', 'Blog deleted successfully!');
    }
}