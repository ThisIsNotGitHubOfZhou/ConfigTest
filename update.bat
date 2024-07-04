@echo off
REM 添加所有更改到Git
git add .

REM 提交更改
git commit -m "change"

REM 推送更改到远程仓库
git push

REM 发送POST请求到指定URL
curl http://10.76.143.36:40041/actuator/busrefresh/vote-demo -X POST

@REM REM 检查curl命令的返回码
@REM if %errorlevel% neq 0 (
@REM     echo "curl命令失败"
@REM     exit /b %errorlevel%
@REM )

echo "所有命令执行完毕"