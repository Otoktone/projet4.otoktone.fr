<?php
if (empty($nbReports))
{
    ?>
    <p>Aucun commentaire signalé.</p>
    <?php
} else {
    ?>
    <p style="color: darkred;">Il y a <?= $nbReports?> commentaires signalés :</p>
<?php
}
?>
<div id="reportsList">
    <table>
        <?php
        foreach ($listReports as $report)
        {
            ?>
            <fieldset>
            <legend>
                Posté par <strong><?= htmlspecialchars($report['auteur']) ?></strong>
        <?php if ($user->isAuthenticated()) { ?> -
            <a href="comment-accept-<?= $report['id'] ?>.html">Valider</a> |
            <a href="comment-delete-<?= $report['id'] ?>.html">Supprimer</a> |
        <?php } ?>
        <?php if ($report->report()) { ?>
            <p>Ce commentaire a été signalé</p>
            <?php } ?>
        </legend>
        <p><?= nl2br(htmlspecialchars($report['contenu'])) ?></p>
        </fieldset>
        <?php
        }
        ?>
    </table>
</div>
<br>
<a style="padding-left: 10%;" href="/">Retour à l'accueil</a>