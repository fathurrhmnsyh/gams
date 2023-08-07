<!DOCTYPE html>
<html>

<head>
    <style>
        /* tr:nth-child(even) {
                background-color: #f2f2f2;
            } */


        @page {
            /* size: A4; */
            margin: 15px 15px 12px 12px !important;
            padding: 0px 0px 0px 0px !important;
        }
    </style>
    <meta charset="UTF-8">
    @include('pages/laporan_transaksi/report/css_')
</head>

<body>
    <p style="font-size:14px; margin-top:0px"><b>PT. TRIMITRA CHITRAHASTA</b></p>
    <p style="font-size:18px;text-align: center; margin-top:0px;"><b><u>Detail Kartu Stok </u><b></p>
    <div style="font-size: 14px" class="table-head-left">
        <table>
            <tr>
                <td>Nama Barang ::</td>
                <td>{{ $item }}</td>
            </tr>
        </table>
    </div>
    <div style="font-size: 14px" class="table-head-right">
        <table class="table11" align="right">
            <tr>
                <td></td>
            </tr>
        </table>
    </div>
    <br><br>
    <table class="table1 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td align="center" style="width: 0.5cm ;font-size:10">No</td>
            <td align="center" style="width: 2.9cm ;font-size:10">Tanggal / No Trans</td>
            <td align="center" style="width: 5.7cm ;font-size:10">Description</td>
            {{-- <td align="center" style="width: 6cm">No PPB</td> --}}
            <td align="center" style="width: 2cm ;font-size:10">In / Debit</td>
            <td align="center" style="width: 2cm ;font-size:10">Out / Kredit</td>
            <td align="center" style="width: 2cm ;font-size:10">Balance</td>
        </tr>
        @php
            $balance = $bal; // Inisialisasi balance dengan nilai awal 0
            $last_month = $last_month; // Inisialisasi balance dengan nilai awal 0
        @endphp
        <tr>

            <td style="vertical-align: text-top; font-size:10">1</td>
            <td style="vertical-align: text-top; font-size:10">{{ $last_month }}</td>
            <td style="vertical-align: text-top; font-size:10">Beginning Balance</td>
            <td align="center" style="vertical-align: text-top; font-size:10">0</td>
            <td align="center" style="vertical-align: text-top; font-size:10">0</td>
            <td align="center" style="vertical-align: text-top; font-size:10">{{ $balance }}</td>
        </tr>
        @php $i=2 @endphp
        @foreach ($data as $t)
            <tr>

                <td style="vertical-align: text-top; font-size:10">{{ $i++ }}</td>
                <td style="vertical-align: text-top; font-size:10">{{ $t->tanggal }}&nbsp;/&nbsp;{{ $t->description }}
                </td>
                <td style="vertical-align: text-top; font-size:10">
                    {{ $t->keterangan }}/&nbsp;{{ $t->nama }}
                </td>
                <td align="center" style="vertical-align: text-top; font-size:10">
                    @if ($t->type === 'In')
                        {{ $t->jumlah }}
                    @elseif ($t->type === 'Out')
                        {{ 0 }}
                    @endif
                </td>
                <td align="center" style="vertical-align: text-top; font-size:10">
                    @if ($t->type === 'Out')
                        {{ $t->jumlah }}
                    @elseif ($t->type === 'In')
                        {{ 0 }}
                    @endif
                </td>
                <td align="center" style="vertical-align: text-top; font-size:10">@php
                    if ($t->type === 'In') {
                        $balance += $t->jumlah;
                    } elseif ($t->type === 'Out') {
                        $balance -= $t->jumlah;
                    }
                @endphp
                    {{ $balance }}</td>
            </tr>
        @endforeach
    </table>
    {{-- <table class="table2 table-striped table-bordered" cellpadding="3" cellspacing="0" width="100%">
        <tr>
            <td align="center" style="width: 9,5cm">Total</td>
            <td align="center" style="width: 3.3cm">{{ $jumlah }}</td>
        </tr>
    </table> --}}
    <p style="font-size: 11px; text-align:center"> <?php
    date_default_timezone_set('Asia/Jakarta');
    echo date('d-m-Y h:i a');
    ?></p>





</body>

</html>
