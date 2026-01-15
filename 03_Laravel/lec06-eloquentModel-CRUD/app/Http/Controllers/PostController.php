<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    function index() {
        $myPost = Post::all();
        return view('index', compact('myPost'));
    }

    function delete($id) {
        $myPost = Post::find($id);
        $myPost->delete();
        return redirect()->back();
    }

    function store(Request $request) {
        Post::create($request->all());
        return redirect('/');
    }

    function edit($id) {
        $myPost = Post::find($id);
        return view('edit-post', compact('myPost'));
    }

    function editPost($id, Request $request) {
        $myPost = Post::find($id);
        $myPost->update($request->all());
        return redirect('/');
    }
}