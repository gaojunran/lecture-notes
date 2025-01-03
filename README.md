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

## 如何修改笔记和生成PDF

```bash
scoop install main/typst  # For Windows, need to install scoop first
brew install typst # For MacOS, need to install homebrew first

code main.typ  # and make your changes

typst compile main.typ ./main.pdf  # generate PDF file
```

## TODO

- 补充笔记内容