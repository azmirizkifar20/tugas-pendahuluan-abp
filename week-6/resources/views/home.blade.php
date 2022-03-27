<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{ $title }}</title>
</head>

<body>
    @if(!empty($data))
        <p>Halo <b>{{ $data['username'] }}</b></p>
    @endif
    <br>
    <p>Logout <a href="logout">disini</a></p>
    
</body>

</html>