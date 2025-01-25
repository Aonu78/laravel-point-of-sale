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
                font-family: "Line Printer";
                margin: 0;
                padding: 0;
                background: #f5f5f5;
                color: #000;
                font-weight: 500;
            }
            td, tr, p{
                padding: 0;
                margin: 0;
            }
            
            .invoice-container {
                width: 340px;
                margin: 20px auto;
                background: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }
            .invoice-header {
                text-align: center;
                margin-bottom: 5px;
            }
            .invoice-header h1 {
                margin: 0;
                font-size: 24px;
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
                margin-top: 10px;
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
            #bars text{
                display: none;
            }
            .barcode-container div{
                position: absolute;
                margin-bottom: -38px;
            }
        </style>
        
    </head>
    <body>
        <div class="container">
            <div class="invoice-container" id="invoice_wrapper">
                <!-- Invoice Header -->
                <div><div class="invoice-header" style="padding: 30px;">
                @if($systemSetting->logo)
                    <img src="{{ asset('/logos/'.$systemSetting->logo) }}" alt="Logo" class="mb-3" style="max-width: 300px; height: 100px;">
                @endif    
                </div></div>
                <div><div class="invoice-header" style="padding-bottom: 30px;">{!! $qrCode !!}</div></div>
                <div class="invoice-header" style="text-align: justify;">
                    
                    <p>FBR Invoice No : {{ $order->fbr_invoice_no }}</p>
                    <p>{{$systemSetting->main_tag_line}}</p>
                    <p>NTN No : {{$systemSetting->ntn_number}}</p>
                    <p id="transaction_no">Transaction No : {{ $order->transaction_no }}</p>

                    <p>Transaction Date: {{ \Carbon\Carbon::parse($order->created_at)->format('M d, Y h:i A') }}</p>

                    <p>User: id-{{ $customer->id }}{{$customer->name}}</p>
                    <p>POS: {{$systemSetting->location_pos}}</p>
                </div>
                <div class="invoice-header dashed-custom">                
                    <h1>Original Receipt</h1>
                </div>

                <!-- Product Table -->
                
                <div class="invoice-details">
                    <h3>Product Description</h3>
                    <table>
                        <thead>
                            <tr>
                                <th>Quantity</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Total</th>
                                <th></th>
                            </tr>
                            
                        </thead>
                        <tbody>
                            <tr class="invoice-header">                
                                <td colspan="4" class="dashed-custom"><h4>Sales Items</h4></td>
                            </tr>
                            @foreach ($orderDetails as $key => $product)
                            <tr>
                                <td colspan="3" style="font-weight: bold;">{{ $product->product->product_name }}</td>
                            </tr>
                            <tr>
                                <td>{{ number_format($product->quantity,2) }}</td>
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
                        <span style="width: 25%">{{$order->total_products}}/{{number_format($order->total_products,2)}}</span>
                    </p>
                    <p style="display:flex; justify-content:space-between; padding:2px;">
                        <span>Discount: </span>
                        <span style="width: 25%">Rs0.00</span>
                    </p>
                    <p style="display:flex; justify-content:space-between; padding:2px;">
                        <span>Funding: </span>
                        <span style="width: 25%">Rs0.00</span>
                    </p>
                    <h2 style="display:flex; justify-content:space-between; padding:2px;">
                        <span>Invoice Value </span>
                        <span style="width: 25%">Rs{{number_format($order->sub_total,2) }}</span>
                    </h2>
                </div>

                <div class="invoice-header dashed-custom">                
                    <h2>Sale Tax Breakup</h2>
                </div>
                <div class="invoice-details">
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
                        <span style="width: 25%;display:flex;">Rs{{number_format($order->total,2)}}</span>
                    </p>
                    <p style="display:flex; justify-content:space-between; padding:2px;">
                        <span>Pay: </span>
                        <span style="width: 25%;display:flex;">Rs{{number_format($order->pay,2)}}</span>
                    </p>
                    <p style="display:flex; justify-content:space-between; padding:2px;">
                        <span>Change Due: </span>
                        <span style="width: 25%;display:flex;">Rs{{number_format(abs($order->due),2)}}</span>
                    </p>

                </div>
                <div class="d-flex justify-content-center dashed-top pt-1">
                    <div class="barcode-container" style="display: flex;padding-top: 10px;flex-wrap: wrap;align-items: center;justify-content: center;">
                        <!-- Barcode -->
                        {!! \Milon\Barcode\Facades\DNS1DFacade::getBarcodeSVG($order->transaction_no, 'C128', 2, 50) !!}
                        <div style="font-size: 14px; font-weight: bold;">
                            {{ implode(' ', str_split($order->transaction_no, 1)) }}
                        </div>
                    </div>
                </div>

                <!-- Footer -->
                <div class="footer dashed-top">
                    <p>
                        {!! $systemSetting->pos !!}
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
        </div>
        
    <script src="{{ asset('assets/invoice/js/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/jspdf.min.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/html2canvas.js') }}"></script>
    <script src="{{ asset('assets/invoice/js/app.js') }}"></script>

    </body>
</html>
