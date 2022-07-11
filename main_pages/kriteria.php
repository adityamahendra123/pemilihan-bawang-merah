<div class="page-header">
    <h2 class="text-secondary">TABEL KRITERIA:</h2>
</div>
 <div class="panel panel-default">

    <div class="panel-heading">        
        <form class="form-inline">
            
            <div class="form-group">
                <button class="btn btn-info mr-2 "><span class="glyphicon glyphicon-refresh"></span> Refresh <i class="fas fa-sync-alt"></i></button>
            </div>
            <div class="form-group">
                <a class="btn btn-primary" href="?m=kriteria_tambah"><span class="glyphicon glyphicon-plus"></span><i class="fas fa-plus-square"></i> Tambah</a>
            </div>

            </div>
        </form>
    </div>
    <div class="table-responsive mt-3">
        <table class="table table-hover table-striped ">
            <thead>
                <tr>
                    <th>Kode</th>
                    <th>Nama Kriteria</th>
                    <th>keterangan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php
            $q = esc_field($_GET['q']);
            $rows = $db->get_results("SELECT * FROM tb_kriteria WHERE nama_kriteria LIKE '%$q%' ORDER BY kode_kriteria");
            $no=0;
            foreach($rows as $row):?>
            <tr>
                <td><?=$row->kode_kriteria ?></td>
                <td><?=$row->nama_kriteria?></td>
                <td><?=$row->atribut?></td>
                <td>
                <span class="mr-2 ml-4"> <a class="btn btn-xs btn-info" href="?m=kriteria_ubah&ID=<?=$row->kode_kriteria?>"><span class="glyphicon glyphicon-edit center" >Ubah <i class="fas fa-pencil-alt"></i></span></a></span>
                    <a class="btn btn-xs btn-warning" href="aksi.php?act=kriteria_hapus&ID=<?=$row->kode_kriteria?>" onclick="return confirm('Hapus data?')">Hapus <i class="fas fa-trash-restore-alt"></i><span class="glyphicon glyphicon-trash"></span></a>
            </tr>
            <?php endforeach;?>
        </table>
    </div>
</div>