{{-- <!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>POS Dash</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="{{ asset('assets/images/favicon.ico') }}"/>
        <link rel="stylesheet" href="{{ asset('assets/css/backend-plugin.min.css') }}">
        <link rel="stylesheet" href="{{ asset('assets/css/backend.css?v=1.0.0') }}">
        <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro@4cac1a6/css/all.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="{{ asset('assets/vendor/remixicon/fonts/remixicon.css') }}">
    </head>
<body>

    <!-- Wrapper Start -->
    <div class="wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card card-block">
                        <div class="card-header d-flex justify-content-between bg-primary">
                            <div class="iq-header-title">
                                <h4 class="card-title mb-0">Invoice#1234567</h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <img src="{{ asset('assets/images/logo.png') }}" class="logo-invoice img-fluid mb-3">
                                    <h5 class="mb-3">Hello, {{ $customer->name }}</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive-sm">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="col">Order Date</th>
                                                    <th scope="col">Order Status</th>
                                                    <th scope="col">Invoice No</th>
                                                    <th scope="col">Billing Address</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>Jan 17, 2016</td>
                                                    <td><span class="badge badge-danger">Unpaid</span></td>
                                                    <td>250028</td>
                                                    <td>
                                                        <p class="mb-0">{{ $customer->address }}<br>
                                                            Shop Name: {{ $customer->shopname ? $customer->shopname : '-' }}<br>
                                                            Phone: {{ $customer->phone }}<br>
                                                            Email: {{ $customer->email }}<br>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <h5 class="mb-3">Order Summary</h5>
                                    <div class="table-responsive-lg">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th class="text-center" scope="col">#</th>
                                                    <th scope="col">Item</th>
                                                    <th class="text-center" scope="col">Quantity</th>
                                                    <th class="text-center" scope="col">Price</th>
                                                    <th class="text-center" scope="col">Totals</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                @foreach ($content as $item)
                                                <tr>
                                                    <th class="text-center" scope="row">{{ $loop->iteration }}</th>
                                                    <td>
                                                        <h6 class="mb-0">{{ $item->name }}</h6>
                                                    </td>
                                                    <td class="text-center">{{ $item->qty }}</td>
                                                    <td class="text-center">{{ $item->price }}</td>
                                                    <td class="text-center"><b>{{ $item->order->sub_total }}</b></td>
                                                </tr>

                                                @endforeach
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <b class="text-danger">Notes:</b>
                                    <p class="mb-0">It is a long established fact that a reader will be distracted by the readable content of a page
                                        when looking
                                        at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,
                                        as opposed to using 'Content here, content here', making it look like readable English.</p>
                                </div>
                            </div>
                            <div class="row mt-4 mb-3">
                                <div class="offset-lg-8 col-lg-4">
                                    <div class="or-detail rounded">
                                        <div class="p-3">
                                            <h5 class="mb-3">Order Details</h5>
                                            <div class="mb-2">
                                                <h6>Bank</h6>
                                                <p>{{ $customer->bank_name }}</p>
                                            </div>
                                            <div class="mb-2">
                                                <h6>Acc. No</h6>
                                                <p>{{ $customer->account_number }}</p>
                                            </div>
                                            <div class="mb-2">
                                                <h6>Due Date</h6>
                                                <p>12 August 2020</p>
                                            </div>
                                            <div class="mb-2">
                                                <h6>Sub Total</h6>
                                                <p>${{ Cart::order->sub_total() }}</p>
                                            </div>
                                            <div>
                                                <h6>Vat (5%)</h6>
                                                <p>${{ Cart::tax() }}</p>
                                            </div>
                                        </div>
                                        <div class="ttl-amt py-2 px-3 d-flex justify-content-between align-items-center">
                                            <h6>Total</h6>
                                            <h3 class="text-primary font-weight-700">${{ Cart::total() }}</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Wrapper End-->

    <script>
    window.addEventListener("load", (event) => {
        window.print();
    });
    </script>
</body>
</html> --}}
{{-- {{dd($order)}} --}}
{{-- {{dd($orderDetails)}} --}}
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Invoice</title>

        <!-- Font Awesome for Icons -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
        <link href="https://db.onlinewebfonts.com/c/30b00facfba202199ef83688fad9a939?family=Line+Printer" rel="stylesheet" type="text/css"/>
        <!-- Custom CSS -->
        <style>
            
            body {
                font-family: 'Line Printer';
                margin: 0;
                padding: 0;
                background: #f5f5f5;
                color: #333;
            }
            td, tr, p{
                padding: 0;
                margin: 0;
            }
            
            .invoice-container {
                width: 80%;
                margin: 20px auto;
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }
            .invoice-header {
                text-align: center;
                margin-bottom: 20px;
            }
            .invoice-header h1 {
                margin: 0;
                font-size: 36px;
            }
            .invoice-header td{
                margin: 0;
                font-size: 24px;
                text-align: center !important;
            }
            .invoice-details {
                margin-bottom: 20px;
            }
            .invoice-details table {
                width: 100%;
                border-collapse: collapse;
            }
            .invoice-details th, .invoice-details td {
                text-align: left;
                /* padding: 8px; */
                border-bottom: 1px solid #ddd;
            }
            .total-section {
                text-align: right;
                font-size: 18px;
                font-weight: bold;
                margin-top: 20px;
            }
            .footer {
                text-align: center;
                margin-top: 20px;
                font-size: 12px;
                color: #666;
            }
            .invoice-details table {
    width: 100%;
    border-collapse: collapse;
}

.invoice-details th, .invoice-details td {
    text-align: left;
    /* padding: 8px; */
}

.invoice-details tr {
    border: none; /* Removes borders for all table rows */
}

.invoice-details th, .invoice-details td {
    border-bottom: none; /* Removes borders for table cells */
}
.dashed-custom {
  border: 0;
  border-top: 2px dashed #000 !important; 
  border-bottom: 2px dashed #000 !important; 
  border-style: dashed;
}

.dashed-top {
  border: 0;
  border-top: 2px dashed #000 !important; 
  border-style: dashed;
}

            h1, h2, h3, h4, h5, h6 {
                padding: 10px;
                margin: 0;
            }
        </style>
        <style>
            .btn {
                display: inline-block;
                padding: 10px 20px;
                font-size: 16px;
                color: #fff;
                text-decoration: none;
                border-radius: 5px;
                text-align: center;
                cursor: pointer;
                margin: 10px 5px;
            }
        
            .btn-print {
                background-color: #007bff; /* Blue color */
                border: 1px solid #0056b3;
            }
        
            .btn-download {
                background-color: #28a745; /* Green color */
                border: 1px solid #1e7e34;
            }
        
            .btn:hover {
                opacity: 0.9;
            }
        </style>
        
    </head>
    <body>
        <div class="invoice-container" id="invoice_wrapper">
            <!-- Invoice Header -->
            <div><div class="invoice-header">{!! $qrCode !!}</div></div>
            <div class="invoice-header" style="text-align: justify;">
                
                <p>FBR Invoice No : {{ $order->fbr_invoice_no }}</p>
                <p>{{$systemSetting->main_tag_line}}</p>
                <p>NTN No : {{$systemSetting->ntn_number}}</p>
                <p>Transaction No : {{ $order->transaction_no }}</p>

                <p>Transaction Date: {{ \Carbon\Carbon::parse($order->created_at)->format('M d, Y h:i A') }}</p>

                <p>User: id-{{ $customer->id }}{{$customer->name}}</p>
                <p>POS: {{$systemSetting->location_pos}}</p>
            </div>
            <div class="invoice-header dashed-custom">                
                <h1>Original Receipt</h1>
            </div>

            <!-- Product Table -->
            
            <div class="invoice-details">
                <h3>Product Description:</h3>
                <table>
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Quantity</th>
                            <th>Price</th>
                            <th>Discount</th>
                            <th>Total</th>
                        </tr>
                        
                    </thead>
                    <tbody>
                        <tr class="invoice-header">                
                            <td colspan="5" class="dashed-custom"><h4>Sales Items</h4></td>
                        </tr>
                        @foreach ($orderDetails as $key => $product)
                        <tr>
                            <td colspan="5" style="font-weight: bold;">{{ $product->product->product_name }}</td>
                        </tr>
                        <tr>
                            <td>{{ $key + 1 }}</td>
                            <td>{{ $product->quantity }}</td>
                            <td>Rs{{ number_format($product->unitcost,2)}}</td>
                            <td>0.00</td>
                            <td>Rs{{ number_format($product->total,2) }}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>

            <div class="d-grid dashed-top">
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Total Items/Quantity: </span>
                    <span>{{$order->total_products}}/{{number_format($order->total_products,2)}}</span>
                </p>
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Discount: </span>
                    <span>Rs0.00</span>
                </p>
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Funding: </span>
                    <span>Rs0.00</span>
                </p>
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Invoice Value: </span>
                    <span>Rs{{number_format($order->sub_total,2) }}</span>
                </p>
            </div>

            <div class="invoice-header dashed-custom">                
                <h2>Sale Tax Breakup</h2>
            </div>
            <div class="invoice-details">
                <h3>Product Description:</h3>
                <table>
                    <thead>
                        <tr>
                            <th></th>
                            <th>Ecl.Amt</th>
                            <th>GST</th>
                            <th>Inl.Amt</th>
                        </tr>
                        
                    </thead>
                    <tbody>
                        <tr>
                            <td>MRP</td>
                            <td>Rs0.00</td>
                            <td>Rs0.00</td>
                            <td>Rs0.00</td>
                        </tr>
                        @foreach ($orderDetails as $key => $product)
                        <tr>
                            <td>Non MRP</td>
                            <td>Rs{{ number_format($product->unitcost,2)}}</td>
                            <td>Rs{{ number_format((( $product->total/$product->quantity) - $product->unitcost),2) }}</td>
                            <td>Rs{{ number_format(($product->total/$product->quantity),2)}}</td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="invoice-header dashed-custom">                
                <h2>Payments</h2>
            </div>
            <!-- Total Section -->
            <div class="total-section">
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Charge: </span>
                    <span>Rs{{number_format($order->total,2)}}</span>
                </p>
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Pay: </span>
                    <span>Rs{{number_format($order->pay,2)}}</span>
                </p>
                <p style="display:flex; justify-content:space-between; padding:2px;">
                    <span>Change Due: </span>
                    <span>Rs{{number_format($order->due,2)}}</span>
                </p>

            </div>
            <div class="d-flex justify-content-center">
                <div class="barcode-container" style="display: flex;justify-content: center;">
                    <!-- Barcode -->
                    {!! \Milon\Barcode\Facades\DNS1DFacade::getBarcodeSVG(intval($order->transaction_no), 'UPCA', 2, 50) !!}
                </div>
            </div>

            <!-- Footer -->
            <div class="footer dashed-top">
                <p>
                    {{$systemSetting->location_pos}}
                </p>
            </div>
        </div>
        <div class="invoice-btn-section clearfix d-print-none" style="display: flex; justify-content: center;">
            <a href="javascript:void(0)" class="btn btn-lg btn-print" onclick="printInvoice()">
                Print Invoice
            </a>            
            <a id="invoice_download_btn" class="btn btn-lg btn-download">
                Download Invoice
            </a>
        </div>
        <script>
            function printInvoice() {
                const invoiceWrapper = document.getElementById('invoice_wrapper');
                const originalContent = document.body.innerHTML;
        
                // Replace body content with the invoice content
                document.body.innerHTML = invoiceWrapper.innerHTML;
                window.print();
        
                // Restore original content
                document.body.innerHTML = originalContent;
                window.location.reload();
            }
        </script>
        
    <script src="{{ asset('assets/invoice/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/jspdf.min.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/html2canvas.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/app.js') }}"></script>

    </body>
</html>
