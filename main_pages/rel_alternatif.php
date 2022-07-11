<div class="page-header">
    <h1 class="text-secondary">BOBOT ALTERNATIF:</h1>
</div>
<div class="panel panel-default">
<div class="panel-heading">
<form class="form-inline mb-3">
    <input type="hidden" name="m" value="rel_alternatif" />
    <div class="form-group ">
        <button class="btn btn-info"><span class="glyphicon glyphicon-refresh"> </span> <i class="fas fa-sync-alt"></i> Refresh </button>
    </div>
</form>
</div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Nama Alternatif</th>
                    <?php
                    $heads = $db->get_var("SELECT COUNT(*) FROM tb_kriteria");
                    if($heads>0):
                    for($a = 1; $a<=$heads; $a++){
                        echo "<th>C$a</th>";
                    }
                    endif;  
                    ?>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
            <?php

            $rows = $db->get_results("SELECT * FROM tb_alternatif WHERE nama_alternatif LIKE '%$q%' ORDER BY kode_alternatif");
            $data = TOPSIS_get_hasil_analisa();
            
            $no=0;

            foreach($rows as $row):?>
            <tr>
                <td><?=$row->kode_alternatif?></td>
                <td><?=$row->nama_alternatif?></td>
                <?php foreach($data[$row->kode_alternatif] as $key => $val):?>
                <td><?=$val?></td>
                <?php endforeach?>
                <td>
                    <a class="btn btn-xs btn-info" href="?m=rel_alternatif_ubah&ID=<?=$row->kode_alternatif?>"><span class="glyphicon glyphicon-edit"></span> <i class="fas fa-exchange-alt"></i> UBAH</a>        
                </td>
            </tr>
            <?php endforeach;?>
            </tbody>
        </table>
    </div>
</div>
<p> Keterangan Kriteria : 
				<li>5 = Sangat Baik</li>
                <li>4 = Baik</li>
                <li>3 = Cukup </li>
				<li>2 = Kurang </li>
                <li>1 = Sangat Kurang</li>