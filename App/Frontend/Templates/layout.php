<!DOCTYPE html>
<html lang="fr">
<head>
    <title>
        <?= isset($title) ? $title : 'Jean Forteroche' ?>
    </title>

    <meta charset="utf-8" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- CSS -->
    <!--<link rel="stylesheet" href="/css/Envision.css" type="text/css" />-->
    <link rel="stylesheet" href="/css/style.css" type="text/css" />
    <!-- TinyMCE -->
    <script src="https://cdn.tiny.cloud/1/fdyqbwkmyc8zzso65huyvl9bfzaybc9xdgy0pz5qt6qs31qe/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: '.tinymce textarea'
        });
    </script>

</head>

<body>
<div id="wrap">
    <header>
        <h1><a href="/">Jean Forteroche</a></h1>
        <p>Bienvenue sur le blog de l'écrivain Jean Forteroche.</p>
    </header>

    <nav>
        <ul>
            <li><a href="/">Accueil</a></li>
            <?php if ($user->isAuthenticated()) { ?>
                <li><a href="/admin/news-insert.html">Ajouter une news</a></li>
            <?php } ?>
        </ul>
    </nav>

    <div id="content-wrap">
        <section id="main">
            <?php if ($user->hasFlash()) echo '<p style="text-align: center;">', $user->getFlash(), '</p>'; ?>

            <?= $content ?>
        </section>
    </div>

    <footer>Alexandre DESMOT - DWJ Projet 4</footer>
</div>
</body>
</html>