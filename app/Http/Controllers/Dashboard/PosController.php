<?php

namespace App\Http\Controllers\Dashboard;

use Carbon\Carbon;
use App\Models\Product;
use App\Models\Customer;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Redirect;
use Gloudemans\Shoppingcart\Facades\Cart;
use SimpleSoftwareIO\QrCode\Facades\QrCode;
use Milon\Barcode\Facades\DNS1DFacade;
class PosController extends Controller
{
    public function index()
    {
        $todayDate = Carbon::now();
        $row = (int) request('row', 10);

        if ($row < 1 || $row > 100) {
            abort(400, 'The per-page parameter must be an integer between 1 and 100.');
        }

        return view('pos.index', [
            'customers' => Customer::all()->sortBy('name'),
            'productItem' => Cart::content(),
            'products' => Product::where('expire_date', '>', $todayDate)->filter(request(['search']))
                ->sortable()
                ->paginate($row)
                ->appends(request()->query()),
        ]);
    }

    public function addCart(Request $request)
    {
        $rules = [
            'id' => 'required|numeric',
            'name' => 'required|string',
            'price' => 'required|numeric',
        ];

        $validatedData = $request->validate($rules);

        Cart::add([
            'id' => $validatedData['id'],
            'name' => $validatedData['name'],
            'qty' => 1,
            'price' => $validatedData['price'],
            'options' => ['size' => 'large']
        ]);

        return Redirect::back()->with('success', 'Product has been added!');
    }

    public function updateCart(Request $request, $rowId)
    {
        $rules = [
            'qty' => 'required|numeric',
        ];

        $validatedData = $request->validate($rules);

        Cart::update($rowId, $validatedData['qty']);

        return Redirect::back()->with('success', 'Cart has been updated!');
    }

    public function deleteCart(String $rowId)
    {
        Cart::remove($rowId);

        return Redirect::back()->with('success', 'Cart has been deleted!');
    }

    public function createInvoice(Request $request)
    {
        $rules = [
            'customer_id' => 'required'
        ];

        $validatedData = $request->validate($rules);
        $customer = Customer::where('id', $validatedData['customer_id'])->first();
        $content = Cart::content();

        return view('pos.create-invoice', [
            'customer' => $customer,
            'content' => $content
        ]);
    }

    public function printInvoice(Request $request)
    {
        $rules = [
            'customer_id' => 'required'
        ];

        $validatedData = $request->validate($rules);
        $customer = Customer::where('id', $validatedData['customer_id'])->first();
        $content = Cart::content();
        $qrCode = QrCode::size(70)->generate('1234567');
        return view('pos.print-invoice', [
            'customer' => $customer,
            'content' => $content,

            'transactionDate' => '2025-01-21',
            'invoiceNo' => '1234567',
            'customerName' => 'John Doe',
            'customerPhone' => '+1234567890',
            'customerAddress' => '123 Main Street, City',
            'products' => [
                ['name' => 'Krone Noir Body Spray', 'quantity' => 1, 'price' => 469.00],
                ['name' => 'FBR POS Charges', 'quantity' => 1, 'price' => 1.00],
            ],
            'subtotal' => 470.00,
            'vat' => 23.50,
            'total' => 493.50,
            'qrCode' => $qrCode
        ]);
    }
}
