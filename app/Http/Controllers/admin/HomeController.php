<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use App\Models\Order;
use App\Models\Product;
use App\Models\TempImage;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\File;

class HomeController extends Controller
{
    public function index(){
        $totalOrders = Order::where('status','!=','cancelled')->count();
        $totalProducts = Product::count();
        $totalCustomers = User::where('role',1)->count();
        
        $totalRevenue = Order::where('status','!=','cancelled')->sum('grand_total');

        // this month revenue
        $startOfMonth = Carbon::now()->startOfMonth()->format('Y-m-d');
        $currentDate = Carbon::now()->format('Y-m-d');

        $revenueThisMonth = Order::where('status','!=','cancelled')
                            ->whereDate('created_at','>=',$startOfMonth)
                            ->whereDate('created_at','<=',$currentDate)
                            ->sum('grand_total');

        // last month revenue
        $lastMonthStartDate = Carbon::now()->subMonth()->startOfMonth()->format('Y-m-d');
        $lastMonthEndDate = Carbon::now()->subMonth()->endOfMonth()->format('Y-m-d');
        $lastMonthName = Carbon::now()->subMonth()->startOfMonth()->format('M');

        $revenueLastMonth = Order::where('status','!=','cancelled')
                            ->whereDate('created_at','>=',$lastMonthStartDate)
                            ->whereDate('created_at','<=',$lastMonthEndDate)
                            ->sum('grand_total');

        // last 30 days sale
        $date = Carbon::now()->subDays(30)->format('Y-m-d');

        $revenuelast30Days = Order::where('status','!=','cancelled')
                            ->whereDate('created_at','>=',$date)
                            ->whereDate('created_at','<=',$currentDate)
                            ->sum('grand_total');

        // Delete temp images
        $dayBeforeToday = Carbon::now()->subDays(1)->format('Y-m-d H:i:s');

        $tempImages = TempImage::where('created_at','<=',$dayBeforeToday)->get();

        foreach ($tempImages as $tempImage) {
            $path = public_path('/temp/'.$tempImage->name);
            $thumbPath = public_path('/temp/thumb/'.$tempImage->name);

            // Delete main image
            if(File::exists($path)){
                File::delete($path);
            }

            // Delete thumb image
            if(File::exists($thumbPath)){
                File::delete($thumbPath);
            }

            TempImage::where('id',$tempImage->id)->delete();
        }

        return view('admin.dashboard',[
            'totalOrders' => $totalOrders,
            'totalProducts' => $totalProducts,
            'totalCustomers' => $totalCustomers,
            'totalRevenue' => $totalRevenue,
            'revenueThisMonth' => $revenueThisMonth,
            'revenueLastMonth' => $revenueLastMonth,
            'revenuelast30Days' => $revenuelast30Days,
            'lastMonthName' => $lastMonthName
        ]);
        //$admin = Auth::guard('admin')->user();
        //echo 'Welcome '.$admin->name.' <a href="'.route('admin.logout').'">Logout</a>';
    }

    public function logout(){
        Auth::guard('admin')->logout();
        return redirect()->route('admin.login');
    }
}
