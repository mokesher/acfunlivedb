# acfunlivedb
保存AcFun直播部分数据

### 编译安装
```
go get -u github.com/orzogc/acfunlivedb
```

### 运行依赖
* sqlite3
* 目前只支持Linux

### 用法
运行后会在本程序所在文件夹生成 `acfunlive.db` 数据库文件，本程序会自动爬取从运行时间开始的AcFun所有直播间的部分数据并保存到数据库里。

运行时可以输入以下命令：

`listall 主播的uid` 列出数据库里指定主播的直播数据，按照开播时间降序排列

`list10 主播的uid` 列出数据库里指定主播最近10次直播的数据，按照开播时间降序排列

`getplayback liveID` 根据直播的liveID查询AcFun的录播链接，注意不是所有直播都有对应的录播链接

`quit` 结束运行
