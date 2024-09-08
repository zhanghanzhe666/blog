var posts=["2018/05/03/Git基本使用教程/","2018/05/03/Bing部署/"];function toRandomPost(){
    pjax.loadUrl('/'+posts[Math.floor(Math.random() * posts.length)]);
  };