<!DOCTYPE html>
<html>
<head>
    <title>SellIt</title>
</head>
<body>
<h1>SELL-IT</h1>
<hr>
<h4>All products for sell</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.ID}">More details</a></p>
    </div>
</#list>
<hr>
<h3>Add new product</h3>
<form action="/product/create" method="post">
    Title: <input type="text" name="title"/><br>
    Description: <input type="text" name="description"/><br>
    Price: <input type="number" name="price"/><br>
    City: <input type="text" name="city"/><br>
    Name: <input type="text" name="author"/><br>
    <input type="submit" value="Add"/>
</form>
</body>
</html>