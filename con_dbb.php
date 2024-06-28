<?php 
//connexion à la base de données
$con = mysqli_connect("localhost","root","root","panier");
//verifier la connexion
if(!$con) die('Erreur : '.mysqli_connect_error());

