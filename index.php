html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Programa de Denuncias</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f8;
      margin: 0;
      padding: 0;
    }
    .container {
      max-width: 800px;
      margin: 20px auto;
      padding: 20px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      text-align: center;
      color: #333;
      text-transform: uppercase;
    }
    p {
      color: #666;
      line-height: 1.6;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Programa Denincias</h1>
    <p>Programa de Denuncias permite guardar denuncias en una base de datos en un servidor local.</p>
    <p>Ingrese la informacion requerida para llenar el expediente</p>
    <form>
      <label for="ack1">demandado:</label>
      <input type="text" id="ack1" name="ack1" required>

      <label for="ack2">demandante:</label>
      <input type="text" id="ack2" name="ack2" required>

      <label for="ack3">denuncia:</label>
      <input type="text" id="ack3" name="ack3" required>
      
      <label for="ack4">testigos:</label>
      <input type="text" id="ack4" name="ack4" required>
      
      <label for="ack5">ofendido  :</label>
      <input type="text" id="ack5" name="ack5" required>

      <button type="submit">Submit</button>
    </form>
  </div>
</body>
</html>

