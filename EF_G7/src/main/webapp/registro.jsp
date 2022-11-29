<%--
  Created by IntelliJ IDEA.
  User: Anais
  Date: 29/11/2022
  Time: 11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Registrate VEO3D</title>
    <style>
        body {
            background: url("https://www.hwlibre.com/wp-content/uploads/2021/04/3d-impresora.jpg");
            background-position: center center;
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            margin: 0;
            height: 100vh;
            bgcolor: "#800000";
        }
        @font-face {
            font-family: Decor;
            src: url(KrinkesDecorPERSONAL.ttf);
        }
        @font-face{
            font-family: Decor;
            src: url(KrinkesRegularPERSONAL.ttf);
            font-style: italic;
        }
        p{
            font-family: Decor;
        }
    </style>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>

</head>

<body class="p-3 m-0 border-0 bd-example">
<br>
<center>
    <div class="card mb-3" style="max-width: 58rem; background-color:#152039" >
        <br>
        <h1 style="font-family: 'KrinkesDecorPERSONAL'; color:#C0A5FA" class="card-title"><b>REGISTRAR USUARIO</b></h1>
        <h3 style="font-family: 'KrinkesDecorPERSONAL'; color:#C0A5FA" class="card-title"><b>Ingrese sus datos</b></h3>
        <br>
        <div class="d-grid gap-2 col-6 mx-auto">
            <form>
                <div class="mb-3">
                    <label for="name" class="form-label" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Nombre:</b></label>
                    <input type="name" class="form-control" id="name" aria-describedby="name">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Apellido:</b></label>
                    <input type="apellido" class="form-control" id="apellido" aria-describedby="name">
                </div>
                <div class="mb-3">
                    <label for="exampleInputEmail1" class="form-label" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Correo:</b></label>
                    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Contraseña:</b></label>
                    <input type="password" class="form-control" id="exampleInputPassword1">
                </div>
                <!-- si las contraseñas son iguales debe de aparecer mensaje de error-->
                <div class="alert alert-danger" role="alert">
                    EJEMPLO DE MENSAJE DE ERROR
                </div>
                <div class="mb-3">
                    <label for="exampleInputPassword1" class="form-label" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Repita su contraseña:</b></label>
                    <input type="password" class="form-control" id="exampleInputPassword2">
                </div>
                <div class="mb-3">
                    <p style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF"><b>Ingrese el tipo de Usuario</b></p>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" >
                        <label class="form-check-label" for="flexRadioDefault1" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF">
                            Externo
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                        <label class="form-check-label" for="flexRadioDefault2" style="font-family: 'KrinkesDecorPERSONAL'; color:#FFFFFF">
                            Interno
                        </label>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary">Guardar</button>
            </form>
        </div>
        <br>
        </form>
        <br>
    </div>
    </div>
    </div>
<br>
<br>
</center>
<a class="btn btn-primary" href="<%=request.getContextPath()%>/SessionServlet" role="button" style="margin-left: 0rem; background-color:#D12C22 ; border: none;"> ◄ Atrás </a>
<br>
<br>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
</body>

</html>
