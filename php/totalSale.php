<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include('connectionData.txt');

// Establish connection to MySQL server
$conn = mysqli_connect($server, $user, $pass, $dbname, $port);
if (!$conn) {
    die('Could not connect to MySQL: ' . mysqli_connect_error());
}

// Query to get total sales for each store
$query = "SELECT s.id AS Store_id, s.platform, SUM(oi.quanity * p.price) AS Total_Sales
FROM Store s
JOIN Stock st ON s.id = st.Store_id
JOIN Product p ON st.Product_id = p.id
JOIN Order_items oi ON p.id = oi.Product_id
JOIN `Order` o ON oi.Order_order_id = o.order_id
GROUP BY s.id, s.platform
ORDER BY Total_Sales DESC;";

// Execute the query
$result = mysqli_query($conn, $query);
if (!$result) {
    die('Error executing query: ' . mysqli_error($conn));
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Total Sales Per Store</title>
    <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        table {
            width: 100%;
	    border-collapse: collapse;
	    margin-bottom: 100px;
        }
        table th, table td {
            border: 1px solid #dddddd;
            padding: 8px;
            text-align: left;
        }
        table th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<div class="header">
    <div class="container">
        <div class="navbar">
            <div class="logo">
                <a href="index.html"><img src="images/LetterLogoNav.png" width="125px" alt="Logo"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Total Sales For Each Store</h1>
            </div>
        </div>
    </div>
</div>

<div class="popular">
    <div class="small-container">
        <div class="col-2">
            <div class="sales-results">
                <h2>Result of Total Sales Per Store</h2>
                <table>
                    <tr>
                        <th>Store ID</th>
                        <th>Platform</th>
                        <th>Total Sales</th>
                    </tr>
                    <?php
                    // Fetch and display result rows
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['Store_id']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['platform']) . "</td>";
                        echo "<td>$" . number_format($row['Total_Sales'], 2) . "</td>";
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
                <img src="images/LogoWhite.png" width="125px" alt="Footer Logo">
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
// Close connection
mysqli_close($conn);
?>

