@echo off
REM 添加所有更改到Git
git add .
pause

REM 提交更改
git commit -m "change"
pause

REM 推送更改到远程仓库
git push
pause

REM 发送POST请求到指定URL
curl http://10.76.143.36:40041/actuator/busrefresh/vote-demo -X POST
pause

REM 检查curl命令的返回码
if %errorlevel% neq 0 (
    echo "curl命令失败"
    exit /b %errorlevel%
)
pause

echo "所有命令执行完毕"
pause