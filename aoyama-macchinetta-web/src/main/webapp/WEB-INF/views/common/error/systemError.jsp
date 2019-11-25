<!DOCTYPE html>
<html class="no-js" lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="contextPath" content="${pageContext.request.contextPath}" />
<title>システムエラー</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/styles.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/app/css/bootstrap.min.css" type="text/css">
</head>
<body class="bg-white">
	<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <h1>システムエラー</h1>
        <div class="error">
            <c:if test="${!empty exceptionCode}">[${f:h(exceptionCode)}]</c:if>
            <spring:message code="e.09.fw.9001" />
        </div>
        <br>
        <br>
        <br>
		<form id="form" action="${pageContext.request.contextPath}/user/login" method="get">
        	<button id="btn_login" name="Login"  type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" >ログイン</button>
		</form>
        <br>
        <br>
        <br>
    </div>
    </div>
</body>
</html>