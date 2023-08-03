@if ($condition === 'A')
<table border="1">
    <thead>
    <tr>
        <th style="width:200px; background-color:#ff7f1a; ">Nama Barang</th>
        <th style="width:140px; background-color:#ff7f1a; ">Tanggal</th>
        <th style="width:80px; background-color:#ff7f1a; ">Jumlah</th>
    </tr>
    </thead>
    <tbody>
    @foreach($data as $data)
        <tr>
            <td>{{ $data->nama_barang }}</td>
            <td>{{ $data->tanggal }}</td>
            <td>{{ $data->jumlah }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
@elseif ($condition === 'B')
<table border="1">
    <thead>
    <tr>
        <th style="width:200px; background-color:#ff7f1a;">Nama Barang</th>
        <th style="width:150px; background-color:#ff7f1a;">Nama Pengambil</th>
        <th style="width:100px;background-color:#ff7f1a;">Bagian</th>
        <th style="width:140px; background-color:#ff7f1a;">Tanggal</th>
        <th style="width:80px; background-color:#ff7f1a;">Jumlah</th>
    </tr>
    </thead>
    <tbody>
    @foreach($data as $data)
        <tr>
            <td>{{ $data->nama_barang }}</td>
            <td>{{ $data->nama }}</td>
            <td>{{ $data->bagian }}</td>
            <td>{{ $data->tanggal }}</td>
            <td>{{ $data->jumlah }}</td>
        </tr>
    @endforeach
    </tbody>
</table>
@endif