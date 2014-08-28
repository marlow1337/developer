<!-- Content Header -->
<section class="content-header">
    <h1><?php echo $gsprache->gameserver;?></h1>
    <ol class="breadcrumb">
        <li><a href="userpanel.php><i class="fa fa-home"></i> Home</a></li>
        <li><a href="userpanel.php?w=gs"><?php echo $gsprache->gameserver;?></a></li>
        <li><?php echo $gsprache->backup;?></li>
        <li><?php echo $serverip.":".$port;?></li>
        <li class="active"><?php echo $sprache->recover;?></li>
    </ol>
</section>
<!-- Main Content -->
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-info">
                <form role="form" action="userpanel.php?w=bu&amp;id=<?php echo $id;?>&amp;r=gs" onsubmit="return confirm('<?php echo $gsprache->sure;?>');" method="post">

                    <input type="hidden" name="action" value="rb2">

                    <div class="box-body">
                        <div class="form-group">
                            <label for="inputTemplate"><?php echo $gsprache->template;?></label>
                            <select class="form-control" name="template" id="inputTemplate">
                                <?php foreach($shortens as $shorten) { echo '<option>'.$shorten.'</option>'; } ?>
                            </select>
                        </div>
                    </div>

                    <div class="box-footer">
                        <button class="btn btn-primary" id="inputRecover" type="submit"><i class="fa fa-refresh"></i> <?php echo $sprache->recover;?></button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>