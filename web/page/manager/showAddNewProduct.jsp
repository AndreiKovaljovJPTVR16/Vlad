<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Магазин</title>
    </head>
    <body><div class="col-md-6 offset-md-3">
        <div style="text-align: center; font-family: cursive;">
        <h1>Добавить продукт</h1>
        ${info}<br>
        <a href="index"><button class="btn btn-info">Главная страница</button></a><br><br>
        <a href="showUploadFile"><button class="btn btn-info">Загрузить изображение продукта</button></a><br><hr>
        <form action="addNewProduct" method="POST">
            Название:<br>
            <input type="text" name="name"><br>
            Цена:<br>
            <input type="text" name="price"><br>
            Количество :<br>
            <input type="text" name="count"><br>
            <br>
            Фото товара:
            <select name="coverId">
                <c:forEach var="cover" items="${listCovers}">
                    <option value="${cover.id}">${cover.name}</option>
                </c:forEach>
            </select>
            <br><hr>
            <input type="submit" class="btn btn-info" value="Добавить продукт">
            </div>
        </div>
        </form>
    </body>
</html>