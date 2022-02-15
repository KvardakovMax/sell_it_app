<!DOCTYPE html>
<html>
<head>
    <title>SellIt</title>
</head>
<body>
<h1>SELL-IT</h1>
<hr>
<h4>All products for sell</h4>
<form action="/" method="get">
    Search: <input type="text" name="title"><br>
    <input type="submit" value="Search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} $ | <a href="/product/${product.id}">More details</a></p>
    </div>
    <#else>
        <h4>Empty product list</h4>
</#list>
<hr>
<h3>Add new product</h3>
<form action="/product/create" method="post" enctype="multipart/form-data">
    Title: <input type="text" name="title"/><br><br>
    Description: <input type="text" name="description"/><br><br>
    Price: <input type="number" name="price"/><br><br>
    City: <input type="text" name="city"/><br><br>
    User name: <input type="text" name="author"/><br><br>
    First image: <input type="file" name="files"/><br><br>
    Second image: <input type="file" name="file2"/><br><br>
    <input type="submit" value="Add"/>
</form>
</body>
</html>