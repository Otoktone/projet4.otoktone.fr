<!DOCTYPE html>
<html lang="fr">
<head>
    <title>
        <?= isset($title) ? $title : 'Jean Forteroche' ?>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta charset="utf-8" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <!-- CSS -->
    <link rel="stylesheet" href="/css/style.css" type="text/css" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="images/favicon.png" />
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
          crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
            integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
            crossorigin="anonymous"></script>

</head>

<body id="page-top">

    <!-- NAVIGATION -->
    <div id="nav">
        <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
            <div class="container">
                <a id="logo" class="navbar-brand js-scroll-trigger"href="https://projet4.otoktone.fr">
                    <img src="images/favicon.png" />
                </a>
                <button id="menu" class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu <i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/">Accueil</a>
                        </li>
                        <?php if ($user->isAuthenticated()) { ?>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/admin/news-insert.html" id="skills_li">Ajouter une news</a>
                        </li>
                        <li class="nav-item mx-0 mx-lg-1">
                            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="/admin/">Admin</a>
                        </li>
                        <?php } ?>
                    </ul>
                </div>
            </div>
        </nav>
    </div>

        <!-- HEADER -->
    <div id="wrap">
        <header>
            <h1 class="fade-in"><a href="/">Jean Forteroche</a></h1>
            <hr id="separate" class="fade-in">
            <h2 class="fade-in">Billet simple pour l'Alaska</h2>
        </header>

        <!-- MAIN -->
        <div id="content-wrap">
            <section id="main">
                <?php if ($user->hasFlash()) echo '<p style="text-align: center;">', $user->getFlash(), '</p>'; ?>

                <?= $content ?>
            </section>
        </div>

        <!-- FOOTER -->
        <footer>
            <div id="footer">
                <div class="social">
                    <a class="fab fa-facebook-square" href="https://www.facebook.com/alexotoktone/"></a>
                    <a class="fab fa-linkedin" href="https://www.linkedin.com/in/alexandre-desmot-145a34182/"></a>
                </div>
                <div class="infos">
                    Alexandre DESMOT - DWJ Projet 4
                </div>
            </div>
        </footer>
    </div>
</body>

<!-- TinyMCE -->
<script src="https://cdn.tiny.cloud/1/fdyqbwkmyc8zzso65huyvl9bfzaybc9xdgy0pz5qt6qs31qe/tinymce/5/tinymce.min.js"
        referrerpolicy="origin"></script>
<script>
    tinymce.init({
        selector: '.tinymce textarea'
    });
</script>

</html>