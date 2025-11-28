# Typst RedNote Template

这是一个用于创建小红书（RedNote）风格笔记的 Typst 模板。


<p align="center">
  <img src="assets/thumbnail-cover.png" alt="Preview Cover" width="45%" />
  <img src="assets/thumbnail-article.png" alt="Preview Article" width="45%" />
</p>

## 简介

Typst RedNote 旨在帮助用户使用 Typst 快速生成美观、符合小红书风格的图片或 PDF 文档。它提供了预设的主题、封面生成器以及针对移动端阅读优化的排版样式。

## 使用方法

### 1. 导入模板

#### 方式一：使用 typship 下载（推荐）

使用 [typship](https://github.com/sjfhsjfh/typship) 工具将仓库下载到本地：

```bash
# 安装 typship
cargo install typship

# 下载到 @local
typship download https://github.com/Ri-Nai/typst-rednote.git

# 或下载到自定义目录
typship download https://github.com/Ri-Nai/typst-rednote.git -n my-packages
```

然后在 Typst 文件中导入：

```typst
#import "@local/rednote:0.1.0": *
// 或
#import "@my-packages/rednote:0.1.0": *
```

#### 方式二：手动克隆仓库

```bash
git clone https://github.com/Ri-Nai/typst-rednote.git
```

然后在 Typst 文件中导入：

```typst
#import "path/to/typst-rednote/lib.typ": *
```

> 注意：模板尚未发布到 Typst Universe，目前仅支持本地导入。发布后可使用 `#import "@preview/rednote:0.1.0": *` 从包管理器导入。

### 2. 应用主题

使用 `rednote-theme` 函数应用主题：

```typst
#show: rednote-theme.with(
  font-family: ("Source Han Serif SC", "Times New Roman"), // 自定义字体
  // bg-color: rgb("#fff0f0"),  // 自定义背景色
)
```

### 3. 创建封面

使用 `cover` 函数创建吸引人的封面：

```typst
#cover(
  image-content: image("assets/brand.png"),
  title: [你的标题],
  subtitle: [副标题],
  author: "@你的名字",
)
```

### 4. 编写内容

接下来就可以像平时一样编写 Typst 内容了。模板会自动处理标题、段落和图片的样式。

```typst
= 什么是 Typst？

Typst 是一款新兴的排版系统...
```

## 示例

查看 `main.typ` 获取完整的示例代码。

## 许可证

MIT
