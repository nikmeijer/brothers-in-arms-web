<!DOCTYPE html>
<html lang="en">


<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CMS Main Page</title>
    <link rel="stylesheet" href="../css/main.css" type="text/css">

</head>
<body>

<br><br><br>
<h3>Change Event</h3>
<form action="change_event.php" method="post" enctype="multipart/form-data">
    <label for="title">Event title: </label>
    <input name="title" type="text" required><br><br>
    <label for="img">Event Poster: </label>
    <input name="img" type="file" required><br><br>
    <label for="desc">Event description: </label>
    <textarea name="desc" required></textarea><br><br>
    <label for="tickets">Event Tickets: </label>
    <textarea name="tickets" required></textarea><br><br>
    <label for="offer">Event Offer: </label>
    <textarea name="offer" required></textarea><br><br>
    <label for="date">Event date: </label>
    <textarea name="date" required></textarea><br><br>
    <label for="timming">Event Time: </label>
    <textarea name="timming" required></textarea><br><br>
    <input name="submit" type="submit" value="Add">
</form>
<br><br><br>
<a href="logout.php">log out</a>
</body>
</html>
