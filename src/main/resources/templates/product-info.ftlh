<!DOCTYPE html>
<html>
<head>
    <title>SellIt</title>
</head>
<body>
<h1>SELL-IT</h1>
<hr>
<h4>Product info</h4>
<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Product title: </b>${product.title}<br><br>
<b>Product description: </b>${product.description}<br><br>
<b>Price: </b>${product.price}<br><br>
<b>City: </b>${product.city}<br><br>
<b>User: </b>${product.author}<br><br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>
</body>
</html>