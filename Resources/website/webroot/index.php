<?php

$server = "localhost";
$username = "detergent_ocean_cacti_sequel";
$password = "X37Ua@ASNL44EdMVpei$";
$dbname = "capstone_database";

// Create connection
$conn = new mysqli($server, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

$sql = "SELECT post_id, capstone_users.user_name AS username, post_title, post_description FROM capstone_posts INNER JOIN capstone_users ON capstone_posts.user_id=capstone_users.user_id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<b>Post ID:</b> " . $row["post_id"]. "<br>";
    echo "<b>Post Title:</b> " . $row["post_title"]. "<br>";
    echo "<b>Username:</b> " . $row["username"]. "<br>";
    echo "<b>Post Description:</b> " . $row["post_description"]. "<br>";
    echo "=======================================================". "<br>";
  }
} else {
  echo "no results";
}
$conn->close();
?>