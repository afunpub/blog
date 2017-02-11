---
title: hexo常用語法說明
tags: github
--
Welcome to [Hexo](https://hexo.io/)! This is your very first post. Check [documentation](https://hexo.io/docs/) for more info. If you get any problems when using Hexo, you can find the answer in [troubleshooting](https://hexo.io/docs/troubleshooting.html) or you can ask me on [GitHub](https://github.com/hexojs/hexo/issues).

## Quick Start

### Create a new post

``` bash
$ hexo new "My New Post"
```

More info: [Writing](https://hexo.io/docs/writing.html)

### Run server

``` bash
$ hexo server
```

More info: [Server](https://hexo.io/docs/server.html)

### Generate static files

``` bash
$ hexo generate
```

More info: [Generating](https://hexo.io/docs/generating.html)

### Deploy to remote sites

``` bash
$ hexo deploy
```

More info: [Deployment](https://hexo.io/docs/deployment.html)

### 新建一個 about 頁面：
```
hexo new page "about"
```
功能表顯示 about 連結，在主題的 _configy.yml 設置中將 menu 中 about 前面的注釋去掉即可。

```
menu:
  home: /
  archives: /archives
  tags: /tags
  about: /about
```

並在功能表中顯示頁面連結。

### 新建一個 分類 頁面：

```
新建一個頁面，命名為 categories 。命令如下：
hexo new page categories
編輯剛新建的頁面，將頁面的類型設置為 categories ，主題將自動為這個頁面顯示所有分類。
title: 分類
date: 2014-12-22 12:39:04
type: "categories"
---
注意：如果有啟用多說 或者 Disqus 評論，預設頁面也會帶有評論。需要關閉的話，請添加欄位 comments 並將值設置為 false，如：
title: 分類
date: 2014-12-22 12:39:04
type: "categories"
comments: false
---
在功能表中添加連結。編輯主題的 _config.yml ，將 menu 中的 categories: /categories 注釋去掉，如下:
menu:
 home: /
 categories: /categories
 archives: /archives
 tags: /tags

```
