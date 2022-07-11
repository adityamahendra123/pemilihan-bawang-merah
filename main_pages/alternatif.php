<div class="page-header">
    <h1 class="text-secondary"> ALTERNATIF PUPUK:</h1>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <form class="form-inline mb-2">
            <input type="hidden" name="m" value="alternatif" />
            
            <div class="form-group mr-2 ">
                <button class="btn btn-info"><span class="glyphicon glyphicon-refresh"></span> Refresh</button>
            </div>
            <div class="form-group">
                <a class="btn btn-primary" href="?m=alternatif_tambah"><span class="glyphicon glyphicon-plus"></span> Tambah</a>
            </div>
            
            </div>
        </form>
    </div>
    <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Kode</th>
                    <th>Nama Alternatif</th>
                    <th>keterangan</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <?php
            $q = esc_field($_GET['q']);
            $rows = $db->get_results("SELECT * FROM tb_alternatif WHERE nama_alternatif LIKE '%$q%' ORDER BY kode_alternatif");
            $no=0;

            foreach($rows as $row):?>
            <tr>
                <td><?=++$no ?></td>
                <td><?=$row->kode_alternatif?></td>
                <td><?=$row->nama_alternatif?></td>
                <td><?=$row->keterangan?></td>
                <td>
                    <a class="btn btn-xs btn-info" href="?m=alternatif_ubah&ID=<?=$row->kode_alternatif?>"><span class="glyphicon glyphicon-edit">Tambah <i class="fas fa-pencil-alt"></i></span></a>
                    <a class="btn btn-xs btn-warning" href="aksi.php?act=alternatif_hapus&ID=<?=$row->kode_alternatif?>" onclick="return confirm('Hapus data?')"><span class="glyphicon glyphicon-trash">Hapus <i class="fas fa-trash-restore-alt"></i></span></a>
                </td>
            </tr>
            <?php endforeach;?>
        </table>
    </div>
</div>