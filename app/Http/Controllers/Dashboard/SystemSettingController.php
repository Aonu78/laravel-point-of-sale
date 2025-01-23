<?php

namespace App\Http\Controllers\Dashboard;

use Artisan;
use App\Models\SystemSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\Controller;
use Gloudemans\Shoppingcart\Facades\Cart;

class SystemSettingController extends Controller
{
    // Show the form to edit system settings
    public function edit()
    {   
        $setting = SystemSetting::findOrFail(1); // Get the system setting with ID 1
        return view('system_settings.edit', compact('setting'));
    }

    // Update the system settings
    public function update(Request $request)
    {
        $request->validate([
            'main_tag_line' => 'nullable|string|max:255',
            'location_pos' => 'nullable|string|max:255',
            'ntn_number' => 'nullable|string|max:255',
            'logo' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'tax' => 'nullable|numeric',
            'pos' => 'nullable|string|max:255',
        ]);

        $setting = SystemSetting::findOrFail(1); // Get the system setting with ID 1

        // Handle logo file upload
        if ($request->hasFile('logo')) {
            // Delete old logo if it exists
            if ($setting->logo && Storage::exists('public/logos/'.$setting->logo)) {
                Storage::delete('public/logos/'.$setting->logo);
            }

            // Store the new logo
            $logoName = $request->file('logo')->store('logos', 'public');
            $setting->logo = basename($logoName); // Store just the file name
        }

        // Update other fields
        $setting->update([
            'main_tag_line' => $request->input('main_tag_line'),
            'location_pos' => $request->input('location_pos'),
            'ntn_number' => $request->input('ntn_number'),
            'tax' => $request->input('tax'),
            'pos' => $request->input('pos'),
        ]);
        if ($setting->tax) {
            $roundedTax = round($setting->tax, 2);
            $envContent = file_get_contents(base_path('.env'));
            $updatedEnvContent = preg_replace(
                '/^TAX_VAT=\d+(\.\d+)?/m',
                'TAX_VAT=' . $roundedTax,
                $envContent
            );
            file_put_contents(base_path('.env'), $updatedEnvContent);
            Artisan::call('config:cache');
        }
        return redirect()->back()->with('success', 'System settings updated successfully!');
    }
}
