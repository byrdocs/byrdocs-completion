# BYR Docs 考题补完计划

本计划旨在补充近几年（**限2020年以后**）的期中、期末考试真题，以及根据现有题目补充答案。

因应电子化需求，此处提供 LaTeX / Typst / Word / Wolfram Notebook 四套模板及使用示例。不提倡提交手写稿。

本项目没有严格的排版要求。所有模板均仅供参考。**您也可以为本项目贡献模板。**

## 提交要求

> [!IMPORTANT]
不要在本项目中提交任何 PDF 文件！请提交源代码（或 `.docx`）及相关的文件（如图片等，如果有的话），以便其他人修改。

### 署名

> [!NOTE]
> 为本项目提交的所有源代码文件必须署名，**可以署昵称**。
> 
> 如果是协作而成，可署多个名字。

署名既可以用来记录贡献，又可以帮助使用者预先评估资料的可靠性。

署名要求有两处：

- 署于文件名的末尾（只能署一人）
- 署于文件的标题下方（应在源代码和导出的PDF中可以看到）

![署名于标题下方](https://i.ibb.co/zSx22sZ/Screenshot-20240625-095622.png)

**不署名的 Pull Request 将被拒绝。**

### 文件组织

如果只有一个单独的文件（比如 `.docx` 文件），直接放在 `archive` 文件夹中即可；否则，需要在 `archive` 文件夹中新建一个文件夹，存储有关文件。

### 文件命名

太长且不统一的命名不便于寻找文件，所以这里对文件命名提出规范。

文件命名的规则是，用短线 `-` 连接以下几个部分：

- **试卷年份** ：格式为 `学年-学年-学期`，学年用两位阿拉伯数字，学期用一位阿拉伯数字。以“2023-2024学年第二学期”为例，应该写作 `23-24-2`。如果不能确定是哪个学年/学期，可以省略一部分信息，比如“2013学年某考试”只能写作 `13`。
- **试卷科目** ：科目的名称必须用全名，且与试卷标题一致。
- **`期中` 或 `期末`** ：不明确的话可以不写。
- **`A` 或 `B`** ：代表A/B卷。不明确的话可以不写。
- **署名** ：只能署一个人的名字。如有协作请况，请自行商定署何人之名。

举个例子： `23-24-2-高等数学A(下)-期末-A-cppHusky.tex`

## 制作原则：内容重于格式

官方的考试题一般有固定的格式，比如标题下方有考试注意事项，还有打分表等。**这些全都不是试题的有效内容，不需要呈现。**

同理，在重制/制作时，我们也不需要“高仿”出原卷中各种无关紧要的细节，比如小题目的标号是用 `1)` 还是 `(a)`，正文要不要首行缩进，公式居中还是靠左……这些都不是重点！**只要你能确保整份文件的格式统一、清晰就行，不需要向某个特定标准对齐。**	

但是，**内容细节中的格式必须谨慎对待，不能轻易改动**。比如某些文字的粗体、斜体、下划线等。在特定的学科中，不同的内容样式可能有特定的含义，如果不加注意，可能会改变题目原意。

## 推荐的制作工具

### LaTeX

<p align="center">
	<a>
		<img alt="LaTeX" src="https://www.latex-project.org/img/latex-project-logo.svg">
	</a>
</p>

<p align="center">
	<a href="https://www.latex-project.org/">
		<img alt="LaTeX Project" src="https://img.shields.io/website?down_message=offline&label=LaTeX%20Project&up_color=007f7f&up_message=online&url=https%3a%2f%2fwww.latex-project.org"/>
	</a>
	<a href="https://www.overleaf.com/learn">
		<img alt="Documentation" src="https://img.shields.io/website?down_message=offline&label=overleaf%20docs&up_color=088742&up_message=online&url=https%3A%2F%2Fwww.overleaf.com/learn"/>
	</a>
</p>

LaTeX 是久负盛名的排版系统，拥有丰富的排版功能，支持在各种方面做精细调整。

同时，LaTeX 也有完善的社区支持。对于使用过程中的大部分问题，你都可以在网络上搜索到答案，或者问 ChatGPT 等 AI 帮你解决。

对于绘图，LaTeX 的 [TikZ & PGF](https://muug.ca/mirror/ctan/graphics/pgf/base/doc/pgfmanual.pdf) 可以助你一臂之力。你也可以使用后面介绍的 [draw.io](#drawio) 来画图，再在你的 LaTeX 代码中导入它。

### Typst

<p align="center">
	<a>
		<img alt="Typst" src="https://user-images.githubusercontent.com/17899797/226108480-722b770e-6313-40d7-84f2-26bebb55a281.png">
	</a>
</p>

<p align="center">
	<a href="https://typst.app/">
		<img alt="Typst App" src="https://img.shields.io/website?down_message=offline&label=typst.app&up_color=239dad&up_message=online&url=https%3A%2F%2Ftypst.app"/>
	</a>
	<a href="https://typst.app/docs/">
		<img alt="Documentation" src="https://img.shields.io/website?down_message=offline&label=Typst%20docs&up_color=007aff&up_message=online&url=https%3A%2F%2Ftypst.app%2Fdocs"/>
	</a>
</p>

作为后起之秀，Typst 在排版和内容呈现方面展现出了巨大的潜力。

相比 LaTeX，它的语法接近于 Markdown 和 Rust，易于学习和使用，又有良好的编程/排版能力。

但 Typst 太过年轻，社区支持尚不成熟，ChatGPT 等 AI 也普遍无法提供 Typst 方面的帮助。

### Word

Word 是大部分人最早接触，也是最容易上手的的排版工具。

不同 Office 套件处理 Word 文档的逻辑不同，这也会导致我们在使用不同编辑器（甚至是在不同电脑的相同编辑器）时，同一文档的格式、样式、插图位置等不尽相同。

但因为 Word 十分常用，且对排版新手很友好，本项目依然将 Word 作为一个可选项。

常见的 Word 编译器有：

- Microsoft Word
- WPS Office
- Libreoffice Write

在使用 Word 进行编辑时，建议把标尺和格式符都显示出来，便于排版控制。

在 Word 中键入公式可以选择 Word 自带的公式编辑功能，或者选择后面介绍的 [AxMath](#axmath-仅-windows)（仅 Windows 可用）。

### Wolfram Mathematica

> 不再支持，请勿使用。

### 其它子工具

这里罗列的不是独立的排版工具。它们一般会作为其它排版工具的插件或辅助工具来使用。

#### draw.io

<p align="center">
	<a>
		<img alt="draw.io" src="https://i.ibb.co/hYgzQ4R/svgviewer-png-output.png">
	</a>
</p>

<p align="center">
	<a href="https://www.drawio.com/">
		<img alt="Documentation" src="https://img.shields.io/website?down_message=offline&label=draw.io&up_color=f08604&up_message=online&url=https%3A%2F%2Fwww.drawio.com/"/>
	<a href="https://www.drawio.com/doc">
		<img alt="Documentation" src="https://img.shields.io/website?down_message=offline&label=draw.io%20docs&up_color=377cff&up_message=online&url=https%3A%2F%2Fwww.drawio.com/doc/"/>
	</a>
</p>

（待补充）

#### AxMath （仅 Windows）

<p align="center">
	<a href="https://space.bilibili.com/323841212/channel/series">
		<img alt="Tutorial" src="https://img.shields.io/website?down_message=offline&label=axmath%20tutorial&up_color=bb7769&up_message=online&url=https%3a%2f%2fspace.bilibili.com%2f323841212%2fchannel%2fseries">
	</a>
</p>

（待补充）
