Start-PodeServer {
    Add-PodeEndpoint -Address 0.0.0.0 -Port 80 -Protocol Http

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeHtmlResponse -Value @'
<html>
<head>
<title>Hello from Azure ACI</title>
</head>
<body>
  <h1>Welcome to Azure Container Instances</h1>
  <p>Thanks for watching CBT Nuggets</p>
</body>
</html>
'@
    }
    
    Add-PodeRoute -Method Get -Path '/aboutme' -ScriptBlock {
        Write-PodeHtmlResponse -Value @'
<html>
<head>
<title>Hello from Trevor at CBT Nuggets</title>
</head>
<body>
  <h1>Welcome to Azure Container Instances</h1>
  <p>Thanks for watching CBT Nuggets training about GitHub</p>
</body>
</html>
'@
    }
}
