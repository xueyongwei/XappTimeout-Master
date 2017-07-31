# XappTimeout-Master

### X系列为自己(Xueyongwei)开发中用到的一些封装起来的，若代码有问题或者有更好的建议欢迎留言或发送邮件到xueyongwei@foxmail.com

### 使用方法：
1. 拖拽XappTimeout文件夹到工程         
2. 在Supporting Files目录下的main.m文件里修改         
<code>
    return UIApplicationMain(argc, nil, NSStringFromClass([AppDelegate class]));
</code> 
<br>   为<br>
<code>
    return UIApplicationMain(argc, argv,NSStringFromClass([XappTimeout class]) , NSStringFromClass([AppDelegate class])); 
</code>  <br>    
3. 在XappTimeoutwen文件夹下XappTimeoutwen.m文件的最下方-(void)XtimeoutAction方法里更改自己的目的。    


