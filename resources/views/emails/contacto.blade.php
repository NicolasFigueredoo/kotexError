<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nuevo mensaje de contacto</title>
</head>
<body>
    <h1>Nuevo mensaje de contacto</h1>
    <p>¡Hola!</p>
    <p>Has recibido un nuevo mensaje de contacto:</p>
    <ul>
        <li><strong>Nombre:</strong> {{ $nombre }}</li>
        <li><strong>Apellido:</strong> {{ $apellido }}</li>
        <li><strong>Email:</strong> {{ $email }}</li>
        <li><strong>Celular:</strong> {{ $celular }}</li>
        <li><strong>Mensaje:</strong> {{ $mensaje }}</li>
    </ul>
    <p>Gracias.</p>
</body>
</html>
