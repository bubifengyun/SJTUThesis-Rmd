# 上海交通大学学位论文 Bookdown 模板

这是为撰写上海交通大学学士、硕士或博士论文而准备的 Bookdown 模板，非官方出品。详细使用说明参见本模板内容。据最新[2018-11-01]的[上海交通大学学位论文Latex模板](https://github.com/sjtug/SJTUThesis)， 参考[谢益辉Bookdown中文模板](https://github.com/yihui/bookdown-chinese)改写而成。在完全兼容[原交大论文LaTeX模板](https://github.com/sjtug/SJTUThesis)的基础上，通过使用 Markdown，大幅度降低撰写论文的难度，引入 R 语言，提高论文作图、数据处理的能力，真正做到让论文能够随着数据变化而变化，而不是数据错误了，要逐个手动改变。对于无法使用 Rmarkdown 实现的内容，完全复制粘贴 LaTeX 代码也能够运行，可能会多一些括号之类的，请删除。

**本模板会保持sjtuthesis.cls和sjtuthesis.cfg两个文件跟原论文模板一致。**

## 封面展示

略

## 如何使用

请先阅读[上海交通大学学位论文Latex模板](https://github.com/sjtug/SJTUThesis)的软件要求，这也是本模板的要求，然后安装 Pandoc，R 和 make 即可，如果可以安装 RStudio 更好。

详情参阅[这里](./rmd/101-intro.Rmd)

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
