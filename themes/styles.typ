#import "../core/constants.typ": *

// 标题装饰样式
#let heading-style(
  accent-color: colors.accent,
  body,
) = {
  // 一级标题：大号 + 左侧装饰条 + 下划线
  show heading.where(level: 1): it => {
    v(40pt)
    box[
      #box(
        baseline: 0.3em,
        width: 12pt,
        height: 1.2em,
        fill: accent-color,
        radius: 4pt,
      )
      #h(16pt)
      #underline(
        text(size: 60pt, weight: "black", fill: colors.text, it.body),
        offset: 20pt,
        stroke: 3pt + accent-color,
      )
    ]
  }

  // 二级标题：中号 + 左侧装饰条 + 下划线
  show heading.where(level: 2): it => {
    v(30pt)
    box[
      #box(
        baseline: 0.2em,
        width: 6pt,
        height: 1.1em,
        fill: accent-color.lighten(20%),
        radius: 3pt,
      )
      #h(12pt)
      #highlight(
        fill: accent-color.lighten(40%).opacify(-50%),

        text(
          size: 48pt,
          weight: "bold",
          fill: colors.text,
          it.body,
        ),
      )
    ]
  }

  // 三级标题：小号 + 高亮背景
  show heading.where(level: 3): it => {
    v(20pt)
    box(
      fill: colors.highlight,
      inset: (x: 16pt, y: 8pt),
      radius: 8pt,
      text(size: 42pt, weight: "bold", fill: colors.text, it.body),
    )
    v(16pt)
  }

  // 四级及以下
  show heading.where(level: 4): it => {
    v(16pt)
    text(size: 38pt, weight: "semibold", fill: colors.text.lighten(20%), it.body)
    v(12pt)
  }

  // 代码字体
  show raw: set text(font: code-fonts)

  // 行内代码
  show raw.where(block: false): box.with(
    fill: colors.highlight,
    inset: (x: 8pt, y: 4pt),
    outset: (y: 4pt),
    radius: 4pt,
  )

  // 代码块
  show raw.where(block: true): block.with(
    fill: rgb("#2d2d2d"),
    inset: 24pt,
    radius: 12pt,
    width: 100%,
  )

  show raw.where(block: true): set text(fill: rgb("#f8f8f2"), size: 32pt)

  // 链接样式
  show link: underline
  show link: set text(fill: accent-color)

  body
}

