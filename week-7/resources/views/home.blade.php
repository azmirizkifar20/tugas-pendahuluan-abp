<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TP 07 - 1301218586</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
    <div class="row my-5">
        <div class="col-2"></div>
        <div class="col-8">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-3"></div>
                        <div class="col-6 text-center">
                            <form id="form-image" action="upload" method="post" enctype="multipart/form-data">
                                @csrf
                                <input class="form-control mb-4" type="file" name="image" id="image" required>
                                <img class="img-fluid" id="preview-image">
                                <button class="btn btn-primary col-4 mt-3" id="btn-save" type="submit">Save</button>
                                <br>
                                @if (isset($message))
                                    <span id="msg-alert">{{ $message }}</span>
                                @endif
                            </form>
                        </div>
                        <div class="col-3"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-2"></div>
    </div>

    <script>
        $(document).ready(function() {
            $('#image').change(function(e) {
                var file = $('#image')[0].files[0]

                var reader = new FileReader()
                reader.onload = function() {
                    $('#preview-image').attr('src', reader.result)
                }

                reader.readAsDataURL(file)
            })
        })
    </script>
</body>