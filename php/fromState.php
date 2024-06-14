<?php
// Enable error reporting for debugging
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Include database connection details
include('connectionData.txt');

// Establishing connection to MySQL server
$conn = mysqli_connect($server, $user, $pass, $dbname, $port)
    or die('Error connecting to MySQL server.');

// Getting the state list from user input
$state_list = $_POST['state'];
$state_list = mysqli_real_escape_string($conn, $state_list);

// SQL query to find products purchased by users from specified states
$query = "
    SELECT DISTINCT p.id AS Product_id, p.name AS Product_name
    FROM Product p
    JOIN Order_items oi ON p.id = oi.Product_id
    JOIN `Order` o ON oi.Order_order_id = o.order_id
    JOIN User u ON o.User_id = u.id
    JOIN Address a ON u.id = a.User_id
    WHERE a.state IN ('$state_list');
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
    <title>Products Purchased by Users from Specified States</title>
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
                <a href="index.html"><img src="images/LetterLogoNav.png" width="125px"></a>
            </div>
        </div>
        <div class="row">
            <div class="col-2">
                <h1>Products Purchased by Users from Specified States</h1>
            </div>
        </div>
    </div>
</div>

<div class="popular">
    <div class="small-container">
        <div class="col-2">
            <div class="sales-results">
                <h2>Result of products baught from your choice of state</h2>
                <table>
                    <tr>
                        <th>Product ID</th>
                        <th>Product Name</th>
                    </tr>
                    <?php
                    // Fetching and displaying each row of the result
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<td>" . htmlspecialchars($row['Product_id']) . "</td>";
                        echo "<td>" . htmlspecialchars($row['Product_name']) . "</td>";
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

