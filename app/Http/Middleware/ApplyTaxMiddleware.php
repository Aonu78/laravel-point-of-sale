<?php

// app/Http/Middleware/ApplyTaxMiddleware.php
namespace App\Http\Middleware;

use Closure;
use App\Models\SystemSetting;
use Illuminate\Http\Request;
use Gloudemans\Shoppingcart\Facades\Cart;

class ApplyTaxMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        // Fetch the tax rate from the database
        $setting = SystemSetting::find(1);

        // Fallback to 3% if no tax value found
        $tax = $setting ? $setting->tax : 3;

        // Apply tax globally on the whole cart (not per item)
        Cart::Tax($tax, 'VAT');  // Example tax name, can be changed

        return $next($request);
    }
}
