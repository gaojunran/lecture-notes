#import "./templates/recite.typ": *

#show: doc => conf(doc, answer: true, print: false)

这是一个笔记示例。

如果你想要使用背诵模板，可以在Typst源代码文件顶部包含以下代码：

```
#import "./templates/recite.typ": *
#show: doc => conf(doc, answer: true, print: false)
```

接着，你就可以使用该模板了。