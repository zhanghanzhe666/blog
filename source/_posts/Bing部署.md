---
title: BINGAI使用/部署教程
date: 2024-09-06 15:54:39
tags: 
  - AI
  - 学习
categories: 自制教程
top_img: /img/bingai.jpg
description: 由于zeabur的域名寄啦，所以把博客迁移到github上，顺便写个教程
cover: /img/bingai.jpg
---
[这篇文章的封面来自神烦老狗的博客文章封面](https://www.laogou717.com/2024/02/06/AI%20era/bing/newbing/)   
接下来是正文   
> 目前主流/可用的分别是jianjianai的ms-copilot-play （原名microsoft-proxy-copilot）和adams549659584的go-proxy-bingai（现在由Harry-zklcdc维护）
# 一.Microsoft-Proxy-Copilot 部署

访问仓库地址：[项目网址](https://github.com/jianjianai/ms-copilot-play)   
接下来Fork仓库（你也可以直接访问[FORK网址](https://github.com/jianjianai/ms-copilot-play/fork) ）    
这里使用cloudflare pages部署，因为它的域名可以直接访问，不像wokers要绑定自己的域名，否则中国无法访问。     
## CloudFlare Pages 部署


1.Fork此仓库

![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/d61bf46d-7edf-43de-b66c-ede1f8cefed2)
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/3a4be71a-bd12-4938-add8-00998c5ca0aa)

2. Page连接到GitHub

![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/598dd9c8-05d9-46dc-9c9b-a15da56ff0b5)
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/85286d7c-913e-4550-b867-344e537077b6)
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/c118fe5b-1684-40f5-9b5a-b719d22e17be)
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/78ffc287-f472-4758-8df1-2f14aa5a70a4)
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/cd63bb70-6e6d-435f-8691-0f7734e88605)

3. 设置设置仓库

输入构建命令
``` shell
npm run build-page
```
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/02fbfe54-f760-4a02-9946-e57ca3ecb648)

之后就完成了。
![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/ce012d84-7df9-426b-877e-42e6fe77872e)


4. 后续更新

同步 github 仓库后 Workers 和 Pages 会自动同步更新。

![image](https://github.com/jianjianai/microsoft-copilot-porxy/assets/59829816/f26b3753-0963-4a78-8773-7a9b6ebc1199)

# 二.go-proxy-bingai部署
1.访问仓库网址：[项目网址](https://github.com/Harry-zklcdc/go-proxy-bingai)   
然后Fork仓库[项目FORK网址](https://github.com/Harry-zklcdc/go-proxy-bingai/fork)   
同样，我们使用cloudflare pages部署，因为它的域名可以直接访问，不像wokers要绑定自己的域名，否则中国无法访问。    

### 1. 注册 Cloudflare 账号
具体注册方法请出门右拐隔壁百度 or Google
### 2.部署
登录账户后, 依次点击「Workers 和 Pages」->「创建应用程序」

然后点击「Pages」-> 「连接到 Git」   


然后点击「连接到 Github」   
 
在跳转的页面中，选择「All repositories」->「Install & Authorize」    

返回 Cloudflare Pages 的创建页面后, 选择对应的账号, 然后选择「go-proxy-bingai」仓库, 最后点击「开始设置」    

设置「构建命令」为
```bash
./cloudflare/build.sh
```
然后点击「环境变量」, 点击「添加变量」, 设置 BYPASS_SERVER 的值如下, 或自己部署的 ByPass 服务地址
```
https://bypass.b1ng.chat
```
然后点击保存并部署, 等待构建部署完成即可