<?php
ini_set('display_errors', 0);
ini_set('display_startup_errors', 0);
error_reporting(E_ALL);

session_start();
include_once ('../core/functions.php');
include_once ('../model/database.php');


?>



<header class="row col-12   d-md-flex justify-content-between text-orange no-gutters">
    <div class="col-12 col-md-3">
        <figure>
            <div class="col-md-12 col-6 wrap_images">
                <img id="logo" src="../images/Fansticker_final_1.png" alt="logo site fansticker">
            </div>
<!--            <img id="logo" src="../images/Fansticker_final_1.png" alt="logo site fansticker">-->
            <!--<figcaption id="slogan">
                Des étiquettes pour faire plaisir
            </figcaption>-->
        </figure>
    </div>
    <nav class="col-12 col-md-6">
        <ul>
            <li><a class="lien" href="../view/accueil.php">Accueil</a></li>
            <li>
            <div class="btn-group dropdown">
                <button type="button" class="btn btn-third">
                    Nos Stickers
                </button>
                <button type="button" class="btn btn_third dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-expanded="false">
                    <span class="sr-only">Toggle Dropdown</span>
                </button>
                <div class="dropdown-menu bouton">
                    <!-- Dropdown menu links -->
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_sport.php">Sports</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_anniversaire.php">Anniversaire</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_naissance.php">Naissance</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_bapteme.php">Baptême</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_mariage.php">Mariage</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/theme_metier.php">Métiers</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/faq.php">Animaux</a></button>
                    <button class="dropdown-item" type="button"><a href="/fansticker/view/faq.php">Divers</a></button>
                </div>
            </div>
            </li>
            <li><a class="lien" href="/fansticker/view/en_vedette.php">En Vedette</a></li>
            <li><a class="lien" href="/fansticker/view/contact.php">Nous contacter</a></li>
        </ul>
        <input type="text" class="search d-sm-none d-none" id="rechercher" name="rechercher" placeholder="rechercher un thème" >
    </nav>
    <div class="col-12 col-md-1">
        <?php  if($_SESSION['firstname']) { ?>
            <button type="button" class="connexion"><a class="btn_third" href="/fansticker/profile.php" style="font-size:14px;"> Votre compte </a></button>
        <?php } else {?>
            <button type="button" class="connexion"><a class="btn_third" href="/fansticker/view/connexion.php">S'identifier</a></button>
        <?php } ?>
    </div class="col-12 ">
    <div>
        <button type="button" class="bouton_panier">
            <img class="panier" src=../images/panier_plein.png><a class="bouton_panier" href="/fansticker/view/cart.php" data-toggle="modal" data-target="#cart-modal" id="get-cart">Panier</a>
        </button>
    </div>
</header>

