<?php

namespace Modules\Dashboard\Http\Controllers;

use App\Models\User;
use Illuminate\Contracts\Support\Renderable;
use Illuminate\Routing\Controller;

class DashboardController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index()
    {
        $usersData = User::all()->count();
        return view('dashboard::index', [
            'usersData' => $usersData,
        ]);
    }
}
