<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $title }}</title>
</head>

<body>
    <h1>login</h1>
    <form action="auth" method="post">
        @csrf
        <label for="username">Username</label>
        <input type="text" name="username" id="username">
        <br>
        <br>
        <label for="password">Password</label>
        <input type="password" name="password" id="password">
        <br>
        <br>
        <button type="submit">Kirim</button>
    </form>
</body>

</html>