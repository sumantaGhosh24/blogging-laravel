<?php

namespace App\Http\Controllers;

use App\Models\Comment;
use Illuminate\Http\Request;

class CommentController extends Controller
{
    public function my_comments(Request $request)
    {
        $comments = Comment::all()->where('owner_id', $request->user()->id);

        return view('comments', ['comments' => $comments]);
    }

    public function store(Request $request, string $id)
    {
        $request->validate([
            'message' => ['required', 'string', 'lowercase', 'min:5', 'max:75']
        ]);

        Comment::create([
            'message' => $request->message,
            'blog_id' => $id,
            'owner_id' => $request->user()->id
        ]);

        return redirect()->route('blog.details', ['id' => $id])->with('message', 'Comment created successfully!');
    }

    public function index()
    {
        $comments = Comment::all();

        return view('admin.comments', ['comments' => $comments]);
    }
}