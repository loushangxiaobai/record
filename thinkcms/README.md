#thinkcms
Java CMS系统，完善的后台功能，大气的前台页面
主要技术
springmvc-mvc控制层
shiro-方便全面的安全控制框架
hibernate-orm框架
ehcache-缓存框架
前端：jquery，bootstrap，amazeui

===========================================================
如果maven镜像慢的可以在自己的maven的setting文件内加入aliyun的maven镜像
http://maven.aliyun.com/nexus/content/groups/public/
=======================================================


项目中所有文件上传用的七牛的图片存储。
需要修改为自己的七牛注册的账号 
修改com.thinkcms.support.QiniuFileUtil中相关参数
++++++++++++++++++++++++++++++++++++++++++++++++
数据库的配置需要修改src/main/resource/db.properties连接配置
初始化的一些数据的sql文件。src/main/resource文件夹下thinkcms.sql
+++++++++++++++++++++++++++++++++++++++++++++++++++++
关于代码生成
在com.thinkcms.gencode包下面有代码生成的相关代码。可根据里面freemarker的配置生成相应的
entity,dao,service,以及相关列表新增修改页面
建议个性化的功能还是按照对应流程自己写
+++++++++++++++++++++++++++++++++++++++++++++++++++++
对于不习惯maven的同学。我把需要的jar包都放到百度云盘，地址：https://pan.baidu.com/s/1kVCr0uN  你们自己转成普通工程就行了。
【操作如下： 
 第一步：你需要把maven依赖的jar包全部下载下来，并放到web工程的对于lib目录，并添加到类路径中；
 第二步：把src/main/webapp目录下的文件拷贝到web工程的webroot目录下】
++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
项目结构如下
![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/110629_756372ee_326874.png "在这里输入图片标题")

增加：企业前台首页

++++++++++++++
新版本更新改版。界面更美观。
++++++++++++++
引入前台网站首页、内容页、列表页管理
+++++++++++++++
引入列表模版管理。根据不同需要显示列表方式不同
+++++++++++++++
引入幻灯管理，首页幻灯图片可后台管理
+++++++++++++++++++++
引入站点信息设置、友情链接管理等常规功能


联系QQ：522123428
后台演示地址：http://182.92.83.17:8080/thinkcms-company/admin
前台演示地址：http://182.92.83.17:8080/thinkcms-company
测试用户：
用户名：test
密码：admin123
测试账户只开放了查看权限。需要查看所有权限的私聊我
如果是自己拉下来跑的项目
初始数据里面的管理员是
用户名：admin
密码：admin123



![后台首页](http://git.oschina.net/uploads/images/2016/0830/104644_a88f06e5_326874.png "在这里输入图片标题")


![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/104704_9c06087f_326874.png "在这里输入图片标题")

![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/104739_2e97d729_326874.png "在这里输入图片标题")

![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/104753_b1142214_326874.png "在这里输入图片标题")

觉得还可以的朋友可以支持一下我的开源项目，你们的支持是我不断完善的动力。也欢迎有兴趣的朋友加入一起完善这个项目。

![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/112522_b910336e_326874.jpeg "在这里输入图片标题")![输入图片说明](http://git.oschina.net/uploads/images/2016/0830/112540_00e0b291_326874.jpeg "在这里输入图片标题")

感谢以下朋友的热心支持：

- Luck0o0   ￥20   微信    2016-09-04