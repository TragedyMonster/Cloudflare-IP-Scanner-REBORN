Windows版本参考下面过程：

windows批处理全自动无门槛操作，自动化筛选

fping-4.2 for win32 修改版（基于 msys2.0 修改编译）点击下载 https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/better-cloudflare-ip-win32.zip

1.解压后运行(注意：目录名称或整个目录路径中不允许有空格，否则运行会出错！) cf.bat 批处理文件（对于 Windows 7 用户或者 cmd 命令行里面不支持curl命令的，自己下载curl全部解压到该程序解压后的目录即可 点击下载curl https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/curl.zip ）

2.根据你当前带宽设置一个期望的CF速度的大小，比如说家里宽带100兆，如果想要CF单线程下载速度达到20兆的宽带效果，直接输入数值 20 并按回车键

3.等待程序全自动测试结束，找到符合条件的 IP 会在控制台窗口里面输出结果（可以结合里面的单IP测速的批处理来做校验测试）

4.如果你当前网络环境非常差，建议调低期望的带宽值，不然程序会一直停留在查找筛选的过程中

5.内置的 anycast ip 数量为 725985 个，运气好的话三分多钟就能获取到自己想要的优选 IP

下面是我自己用Windows 10笔记本测试的一段演示视频 https://raw.githubusercontent.com/badafans/better-cloudflare-ip/master/windows.mp4

以上使用只针对Windows用户

测速服务器用的文件是Cloudflare Workers的反代到苹果官网的一个视频文件。由于Cloudflare Workers免费版每天10万次请求次数的限制，请大家不要恶意反复使用。

其中 fping 是基于 GitHub 开源项目 https://github.com/schweikert/fping 4.2发行版修改而来，所有脚本均为本人原创内容，转载请注明出处！

对于 Cloudflare Anycast 节点汇总，均为本人扫描 Cloudflare 公开节点汇总而来，Cloudflare IP Ranges 来自 https://www.cloudflare.com/zh-cn/ips/

使用反馈，欢迎加入 Telegram 群组进行沟通 https://t.me/better_cloudflare_ip