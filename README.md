# GetCornerRadius

设置了以下属性时，都会触发离屏绘制：
shouldRasterize（光栅化）
masks（遮罩）
shadows（阴影）
edge antialiasing（抗锯齿）
group opacity（不透明）
复杂形状设置圆角等
渐变

GPU cut corners, give up CPU processing
This is a direct cut into the image of the method, so the advantage is that you can use GPU to process the fillet effect, and then do not use CPU to review the use of layer.cornerRadius to slow down
The performance of our app, is not very good?


GPU切割圆角,放弃CPU处理
这是用图片直接切割为圆角的方法,这样使用的好处就是可以使用GPU来处理圆角效果,再也不用CPU复核使用layer.cornerRadius来拖慢
我们app的性能了,是不是很赞?
