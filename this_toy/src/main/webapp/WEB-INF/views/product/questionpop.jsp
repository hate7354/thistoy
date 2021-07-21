<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/questionpop.css">
    <title>Document</title>
</head>

<body>
    <div class="main">
        <form>
        <table>
            <tr>
                <th>제품</th>
                <td><input type="text" id="name" ></td>
            </tr>
            <tr>
                <th>구매자</th>
                <td><input type="text" readonly></td>
            </tr>
            <tr>
                <th>사유</th>
                <td>
                    <select>
                        <option>-- 선택하세요 --</option>
                        <option>배송관련</option>
                        <option>환불관련</option>
                        <option>상품관련</option>
                        <option>기타문의</option>
                    </select>
                </td>
            </tr>
            <tr>
                <th>코멘트</th>
                <td><textarea name="ir1" id="ir1" rows="10" cols="100" style="width:630px; height:300px; display:none;"></textarea></td>
            </tr>
            <tr>
                <th>확인</th>
            <td><input type="submit" value="확인"></td>
        </tr>
        </table>
        

    </form>
    </div>

    <script type="text/javascript" src="/smart_write/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>
    <script type="text/javascript" src="/js/smart_writer.js"></script>
</body>