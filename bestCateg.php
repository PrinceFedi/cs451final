<?php
include('connectionData.txt');

// Establishing connection to MySQL server
$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
    or die('Error connecting to MySQL server.');

// SQL query to find the best-selling products by category
$query = "
    SELECT 
        CASE 
            WHEN (p.name) LIKE '%shirt%' THEN 'Shirt'
            WHEN (p.name) LIKE '%hoodie%' THEN 'Hoodie'
            WHEN (p.name) LIKE '%sweatpants%' THEN 'Sweatpants'
            ELSE 'Other'
        END AS Category,
        SUM(oi.quanity * (p.price - COALESCE(s.bulk_price, p.price))) AS Total_Revenue
    FROM Product p
    JOIN Order_items oi ON p.id = oi.Product_id
    LEFT JOIN Stock s ON p.id = s.Product_id
    GROUP BY Category
    ORDER BY Total_Revenue DESC;
";

// Executing the query
$result = mysqli_query($conn, $query);

// Checking if query execution was successful
if (!$result) {
    die('Error executing query: ' . mysqli_error($conn));
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Best Selling Products by Category</title>
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>                                                                                   table {                                                                                    width: 100%;                                                                           border-collapse: collapse;                                                             margin-bottom: 100px;                                                               }                                                                                      table th, table td {                                                                       border: 1px solid #dddddd;                                                             padding: 8px;                                                                          text-align: left;                                                                  }                                                                                      table th {                                                                                 background-color: #f2f2f2;                                                             text-align: left; /* Align header text to left */                                  }
    </style>
</head>
<body>

<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="index.html"><img src="images/LetterLogoNav.png" width="125px"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Best Selling Products by Category</h1>
            </div>
        </div>
    </div>
</div>

<div class="popular">
    <div class="small-container">
        <div class="col-2">
            <div class="sales-results">
                <h2>Top selling project by category</h2>
                <table>
                    <tr>
                    <th>Category</th>
                        <th>Total Revenue</th>
                    </tr>
                    <?php
                    // Fetching and displaying each row of the result
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['Category']) . "</td>";
                        echo "<td>$" . number_format($row['Total_Revenue'], 2) . "</td>";
                        echo "</tr>";
                    }
                    ?>
                </table>
            </div>
        </div>
    </div>
</div>

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="footer-col-2">
                <img src="images/LogoWhite.png" width="125px">
                <p>Create a streetwear community with passion</p>
            </div>
        </div>
        <hr>
        <p class="copyright">Since 2024</p>
    </div>
</div>

</body>
</html>

<?php
// Closing the connection
mysqli_close($conn);
?>


