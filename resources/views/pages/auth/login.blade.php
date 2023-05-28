<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>General Affair Management System | Log in</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{url('backend/plugins/fontawesome-free/css/all.min.css')}}">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{url('backend/plugins/icheck-bootstrap/icheck-bootstrap.min.css')}}">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{url('backend/dist/css/adminlte.min.css')}}">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>

<body class="hold-transition login-page">
    <div class="login-box">
        <!-- /.login-logo -->
        <div class="card">
            <br>
            <div class="login-logo">
                <img src="{{url('backend/dist/img/gams-logo-login.png')}}" alt="AdminLTE Logo">
            </div>
            <div class="card-body login-card-body">
                <p class="login-box-msg">Sign in to start your session</p>
                {{-- menampilkan error validasi --}}
                @if (count($errors) > 0)
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                @endforeach
                </ul>
            </div>
            @endif
            <form action="/postlogin" method="post" id="quickForm">
                {{ csrf_field() }}
                <div class="input-group mb-3">
                    <input type="text" name="nik" class="form-control" placeholder="NIK" value="{{ old('nik') }}">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-envelope"></span>
                        </div>
                    </div>
                </div>
                <div class="input-group mb-3">
                    <input type="password" name="password" class="form-control" placeholder="Password">
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" id="remember">

                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            </form>



            {{-- <p class="mb-1">
        <a href="forgot-password.html">I forgot my password</a>
      </p>
      <p class="mb-0">
        <a href="register.html" class="text-center">Register a new membership</a>
      </p> --}}
        </div>
        <!-- /.login-card-body -->
    </div>
    </div>
    <!-- /.login-box -->

    <!-- jQuery -->
    <script src="{{url('backend/plugins/jquery/jquery.min.js')}}"></script>
    <!-- jquery-validation -->
    <script src="{{url('backend/plugins/jquery-validation/jquery.validate.min.js')}}"></script>
    <script src="{{url('backend/plugins/jquery-validation/additional-methods.min.js')}}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{url('backend/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
    <!-- AdminLTE App -->
    <script src="{{url('backend/dist/js/adminlte.min.js')}}"></script>
    {{-- <script>
        $(function () {
            $.validator.setDefaults({
                submitHandler: function () {
                    return( true );
                }
            });
            $('#quickForm').validate({
                rules: {
                    nik: {
                        required: true,
                        
                    },
                    password: {
                        required: true,
                        minlength: 4
                    },
                },
                messages: {
                    nik: {
                        required: "Please enter a NIK ",
                        email: "Please enter a valid NIK"
                    },
                    password: {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 4 characters long"
                    },

                },
                errorElement: 'span',
                errorPlacement: function (error, element) {
                    error.addClass('invalid-feedback');
                    element.closest('.input-group').append(error);
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).addClass('is-invalid');
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).removeClass('is-invalid');
                }
            });
        });

    </script> --}}
</body>

</html>
