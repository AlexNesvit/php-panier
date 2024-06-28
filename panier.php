<?php 
session_start();
include_once "con_dbb.php";

// Проверка наличия 'panier' в сессии и его инициализация, если его нет
if (!isset($_SESSION['panier'])) {
    $_SESSION['panier'] = [];
}

// Удаление продуктов
if (isset($_GET['del'])) {
    $id_del = $_GET['del'];
    unset($_SESSION['panier'][$id_del]);
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panier</title>
    <link rel="stylesheet" href="style.css">
</head>
<body class="panier">
    <a href="index.php" class="link">Boutique</a>
    <section>
        <table>
            <tr>
                <th></th>
                <th>Nom</th>
                <th>Prix</th>
                <th>Quantité</th>
                <th>Action</th>
            </tr>
            <?php 
            $total = 0;
            // Получаем ключи продуктов в корзине
            $ids = array_keys($_SESSION['panier']);

            if (empty($ids)) {
                echo "<tr><td colspan='5'>Votre panier est vide</td></tr>";
            } else {
                // Получаем продукты из базы данных
                $ids_list = implode(',', array_map('intval', $ids));
                $products_query = "SELECT * FROM goods WHERE id IN ($ids_list)";
                $products_result = mysqli_query($con, $products_query);

                // Обрабатываем каждую строку из результата
                while ($product = mysqli_fetch_assoc($products_result)):
                    // Рассчитываем стоимость продукта и добавляем к общей сумме
                    $quantity = $_SESSION['panier'][$product['id']];
                    $total += floatval($product['price']) * intval($quantity);

                ?>
                <tr>
                    <td><img src="img/<?=$product['image']?>" alt="Image de <?=$product['name']?>"></td>
                    <td><?=$product['name']?></td>
                    <td><?=$product['price']?>€</td>
                    <td><?=$quantity // Количество?></td>
                    <td><a href="panier.php?del=<?=$product['id']?>"><img src="delete.png" alt="Supprimer"></a></td>
                </tr>
                <?php endwhile; } ?>
            <tr class="total">
                <th colspan="5">Total : <?=$total?>€</th>
            </tr>
        </table>
    </section>
</body>
</html>
