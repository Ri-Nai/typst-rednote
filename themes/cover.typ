#import "../core/constants.typ": *

// 封面页
#let cover(
  image-content: none, // 封面图内容
  title: none, // 标题
  subtitle: none, // 副标题
  author: none, // 作者名
  accent-color: colors.accent,
) = {
  set align(center + horizon)
  // 封面图
  if image-content != none {
    block(
      width: 100%,
      height: 40%,
      block(
        clip: true,
        radius: 24pt,
        image-content,
      ),
    )
  }

  // 标题区域
  block(
    width: 100%,
    // inset: (x: 20pt, y: 30pt),
  )[
    #if title != none {
      text(
        size: 72pt,
        weight: "black",
        fill: colors.text,
        title,
      )
      v(16pt)
    }

    #if subtitle != none {
      text(
        size: 36pt,
        weight: "medium",
        fill: colors.text.lighten(30%),
        subtitle,
      )
      v(24pt)
    }

    #if author != none {
      box(
        fill: accent-color,
        inset: (x: 24pt, y: 12pt),
        radius: 50pt,
        text(fill: white, size: 32pt, weight: "bold", author),
      )
    }
  ]

  pagebreak()
}

