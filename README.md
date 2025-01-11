# 我的课程笔记

基本上以总结公式为主。其中一些科目并非在各大专业中广泛开设，仅自用。

不保证内容来源的原创性。笔记内容完全开源。

使用[Typst](https://typst.app/)进行排版，附`.typ`源码文件和`.pdf`文件。

部分纯文科笔记使用[Markdown](https://www.markdownguide.org/)进行排版。

## 内容

- [概率论与数理统计](./probability-theory-typst/main.typ)
- [大学物理 - 电磁学与相对论](physics-typst/main.typ)
- [习概](./xi-theory/main.typ)
- [毛概](./mao-theory-typst/main.typ)

## 如何修改笔记和生成PDF？

1. [安装Typst](https://github.com/typst/typst?tab=readme-ov-file#installation).

2. 使用VS Code（搭配Tinymist Typst插件）修改和预览`.typ`文件。

3. 使用Tinymist Typst插件的功能导出PDF，或在项目根目录运行以下命令：
```shell
typst compile ./demo.typ ./demo.pdf --root .
```

## 如何配置字体？

本项目中使用`MiSans`字体和`仿宋`字体。你可以选择在你的电脑上安装，或修改源码中的字体设置。


## 如何使用模板来编写自己的笔记？

参见[demo.typ](./demo.typ)。
