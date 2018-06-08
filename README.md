# 上海交通大学学位论文 Bookdown 模板(草稿中)

这是为撰写上海交通大学学士、硕士或博士论文而准备的 Bookdown 模板，非官方出品。详细使用说明参见 [SJTUThesis-Rmd Wiki（没有实现）](https://github.com/sjtug/SJTUThesis/wiki)。据最新[2018-06-08]的[上海交通大学学位论文Latex模板](https://github.com/sjtug/SJTUThesis)， 参考[谢益辉Bookdown中文模板](https://github.com/yihui/bookdown-chinese)改写而成。其中图片，代码等问题尚未解决。但是能够编译成书了。

## 封面展示

略

## 如何使用

请先阅读[上海交通大学学位论文Latex模板](https://github.com/sjtug/SJTUThesis)的软件要求，这也是本模板的要求，然后安装 Pandoc，R 和 make 即可，如果可以安装 RStudio 更好。

### 一、Linux 下使用
下面以深度操作系统15.5版本下的运行为例说明。

#### 安装 R 语言和 RStudio 编译器

当前深度Linux 操作系统的 R 语言的版本，还是能够编译的。请确保当前 `rstudio` 的版本高于 1.0.0。

```bash
$ sudo apt-get install r-base r-base-dev
$ sudo apt-get install rstudio
```

如果不能满足，请参考[R官网](https://cran.r-project.org/bin/linux/debian/#debian-sid-unstable)和[RStudio官网](https://www.rstudio.com/products/rstudio/download/)。


#### 安装 texlive 软件

请确保 texlive 为2015年及之后的版本。

```bash
$ sudo apt-get install texlive-full
```
如果版本太低，推荐[texlive官网](http://tug.org/texlive/)下载最新的 texlive 安装，且需要创建系统链接，以便在 bash 内可用 xelatex 等。

#### 安装 pandoc 软件

```bash
$ sudo apt-get install pandoc
```
具体版本要求，找个时间再查。

#### 运行编译成书

1、下载解压缩，运行

```bash
make
```

如果报错，请自行解决或联系我。

2、如果您已经安装 RStudio 软件，打开 RStudio 软件，在弹出的界面，左上角点击 File->Open Project，选中 *./SJTUThesis-Rmd.Rproj* 文件打开，点击右上角靠下的一栏，有个 `Build` 格，会出现 `Build Book` 等按钮。点击 `Build Book` 就会生成 PDF 书籍了，位于 *./_book/* 文件夹下。

可能需要安装一些R包，请根据问题下载。

### 二、Windows 下使用

略

### 三、苹果系统下使用

略

## 反馈问题

如果在使用上有任何问题，建议先阅读[常见问题与建议（未完成）](https://github.com/sjtug/SJTUThesis/wiki/%E5%B8%B8%E8%A7%81%E9%97%AE%E9%A2%98%E4%B8%8E%E5%BB%BA%E8%AE%AE)。如果这些不能解决你的问题，建议以如下的顺序反馈使用过程中的问题：

* [在 GitHub 项目主页开 issue](https://github.com/bubifengyun/SJTUThesis-Rmd/issues) (推荐)

如果你觉得项目的使用体验不好，或者想感谢我们的维护者们等等任何与使用无关的想法，都可以通过 [issue](https://github.com/bubifengyun/SJTUThesis-Rmd/issues) 或者[邮件](mailto:bubifengyun@sina.com)告诉我们。

## 如何贡献

SJTUThesis-Rmd 是一个刚刚启动的开源项目，我们非常欢迎新的贡献者! 

## 后续工作计划

* 先让模板能够正常工作

## 致谢

* 感谢 bookdown 的相关作者，特别是[@yihui](https://github.com/yihui)提供了非常大的帮助。
* 感谢 stackoverflow 网站的相关用户，在模板起步的时候，太多坑，多谢你们的帮助
* 感谢 [CTeX](http://www.ctex.org/HomePage) 提供了 LaTeX 的中文支持
* 感谢那位最先制作出博士学位论文 LaTeX 模板的交大物理系同学
* 感谢 William Wang 同学对模板移植做出的巨大贡献
* 感谢 [@weijianwen](https://github.com/weijianwen) 学长一直以来的开发和维护工作
* 感谢 [@sjtug](https://github.com/sjtug) 以及 [@dyweb](https://github.com/dyweb) 对 0.9.5 之后版本的开发和维护工作
* 感谢所有为模板贡献过代码的[同学们](https://github.com/sjtug/SJTUThesis/graphs/contributors)，以及所有测试和使用模板的各位同学

## 软件许可证

上海交通大学校徽图片(`sjtulogo.pdf` 等)的版权归上海交通大学所有，部分文件的作者实行共享版权。其他部分使用 [Apache License 2.0](LICENSE) 授权。
