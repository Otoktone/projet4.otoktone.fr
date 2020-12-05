<?php
foreach ($listeNews as $news)
{
    ?>
    <h2><a href="news-<?= $news['id'] ?>.html"><?= $news['titre'] ?></a></h2>
    <p><?= nl2br($news['contenu']) ?></p>
    <a class="btn btn-primary" href="news-<?= $news['id'] ?>.html">Lire la suite..</a>
    <hr />
    <?php
}