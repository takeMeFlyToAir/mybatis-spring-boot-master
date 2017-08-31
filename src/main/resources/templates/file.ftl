<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<form action="${base}/file/uploadFile" method="POST" enctype="multipart/form-data">
    <p>单文件上传：</><br/>
    <input type="file" name="file1"/>
    <input type="submit" value = "上传"/>
</form>
<form method="POST" enctype="multipart/form-data"
      action="${request.contextPath}/file/uploadFiles">
    <p>多文件上传：</>
    <p>文件1：<input type="file" name="file" /></p>
    <p>文件2：<input type="file" name="file" /></p>
    <p><input type="submit" value="上传" /></p>
</form>
<a href="${request.contextPath}/file/download">下载</a>
</body>
</html>