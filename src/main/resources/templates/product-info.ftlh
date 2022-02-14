<!DOCTYPE html>
<html>
<head>
    <title>SellIt</title>
</head>
<body>
<h1>SELL-IT</h1>
<hr>
<h4>All products for sell</h4>
<b>Product title: </b>${product.title}<br>
<b>Product description: </b>${product.description}<br>
<b>Price: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>User: </b>${product.author}<br>
<hr>
<h3>Product info</h3>
<form action="/product/delete/${product.ID}" method="post">
    <input type="submit" value="Delete"/>
</form>
</body>
</html>