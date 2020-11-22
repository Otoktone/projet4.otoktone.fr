<?php
foreach ($listeNews as $news)
{
    ?>
    <h2><a href="news-<?= $news['id'] ?>.html"><?= $news['titre'] ?></a></h2>
    <p><?= nl2br($news['contenu']) ?></p>
    <button type="button" class="btn btn-primary"><a href="news-<?= $news['id'] ?>.html">Lire la suite..</a></button>
    <hr id="hr">
    <?php
}