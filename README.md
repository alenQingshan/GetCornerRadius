# GetCornerRadius


>在官方公开的的资料里关于离屏渲染的信息最早是在 2011年的 WWDC， 在多个 session 里都提到了尽量避免会触发离屏渲染的效果。包括：mask, shadow, group opacity, edge antialiasing。
```
shouldRasterize（光栅化）
masks（遮罩）
shadows（阴影）
edge antialiasing（抗锯齿）
group opacity（不透明）
复杂形状设置圆角等
渐变
Text（UILabel, CATextLayer, Core Text, etc）等等...
```
种种原因导致了可以使用一两个属性解决的事情，非要闹到影响了性能。这就不能忍···，不了解的可以看一下这位uncle的[iOS-离屏渲染详解](https://www.jianshu.com/p/57e2ec17585b)

###以下进入正文-贝塞尔画圆角
性能大概在一万次，14s左右，不同的机型速度也不同
![长草了.png](https://upload-images.jianshu.io/upload_images/2067297-1707b06fba767afc.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

>在图中的模拟器里，我们可以看到上面是龙虎颜团子，下面是猴猪颜团子，很萌···
>其实也就是用贝塞尔把图片切割了一下,据大神说贝塞尔的性能和CGContext的差不多，而使用自己写的渲染方法会渲染更加的快速。具体的CGContext如何渲染我不清楚，应该是做了整图的绘制渲染。而大神的方法，应该是在原有的绘制整图的基础上，把不需要的边角剪裁。
```
//贝塞尔
- (UIImage *)QS_getCornerRadius:(CGFloat)c
{
    int w = self.size.width * self.scale;
    int h = self.size.height * self.scale;
    CGRect rect = CGRectMake(0, 0, w, h);
    //使用贝塞尔
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(w, h), false, 1.0);
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:c] addClip];
    [self drawInRect:rect];
    UIImage *ret = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return ret;
}
```

###任意形状mask
>mask原理很简单，其实就是用一张形状图，加上需要放上去的显示图即可
>
>
```
//mask遮罩
+ (UIImage*)maskWithShowImage:(UIImage *)sImage maskImage:(UIImage*)mImage{
    CGSize size = sImage.size;
    UIGraphicsBeginImageContextWithOptions(size, NO, 0);
    
    [sImage drawInRect:CGRectMake(0, 0, size.width, size.height)];
    [mImage drawInRect:CGRectMake(0, 0, size.width, size.width) blendMode:kCGBlendModeDestinationIn alpha:1];
    UIImage *resultImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultImage;
}
```

本文中的小工具，已经放到github上，如果需要使用的直接下载下来复制QSPolygonImage文件夹即可[传送门](https://github.com/alenQingshan/GetCornerRadius)。
