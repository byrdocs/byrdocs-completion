#import "@preview/cetz:0.2.2"
#import "@preview/wrap-it:0.1.0":*

#set text(
	font: ("Noto Serif CJK SC","Noto Sans"),
	size: 11pt,
	lang: "zh",
)

#align(center)[
	#text(
		font:"KaiTi_GB2312",
		size: 18pt
	)[
		北京邮电大学2023-2024学年第二学期\
		《形式语言与自动机》期中考试试题（A卷）
	]
]

#set heading(numbering: none)

#let big_problem_counter=counter("BigProblem")
#let medium_problem_counter=counter("MediumProblem")
#let small_problem_counter=counter("SmallProblem")

#big_problem_counter.update(1)

#show heading.where(level:1):it=>{
	set text(
		font:("Noto Serif CJK SC","Noto Sans"),
		size: 11pt,
		weight: "regular"
	)
	big_problem_counter.display("一、")
	big_problem_counter.step()
	medium_problem_counter.update(1)
	small_problem_counter.update(1)
	it.body
}
#show heading.where(level:2):it=>{
	set text(
		font:("Noto Serif CJK SC","Noto Sans"),
		size: 11pt,
		weight: "regular"
	)
	medium_problem_counter.display("1.")
	medium_problem_counter.step()
	small_problem_counter.update(1)
	it.body
}
#show heading.where(level:3):it=>{
	set text(
		font:("Noto Serif CJK SC","Noto Sans"),
		size: 11pt,
		weight: "regular"
	)
	h(2em)
	small_problem_counter.display("(1)")
	small_problem_counter.step()
	it.body
}

= 概念题（共12分）

== 写出 $"acdabb"$ 和 $"abbacd"$ 的所有公共子串。（3分）

== 下列集合中，哪些是字母表？（3分）

=== ${1,2}$

=== ${a,b,c,dots,z}$

=== ${a,b,a,c}$

=== ${0,1,2,3,dots,n,dots}$

=== ${epsilon,0,1,2}$

=== ${Phi}$

== 下面的文法属于哪种类型文法？（1分）为什么？（2分）

$
S->0A A|1B B\
A->0A|0\
B->1B|1\
$

== 图1中的NFA，其扩展转移函数的取值为 $delta^*(q_0,1001)=quad quad$（3分）

#figure(
	pad(
		top:2em,
		bottom:1em,
		align(center)[
			#cetz.canvas(length:.4cm,{
				import cetz.draw:*
				for (x,n,l) in (
					(0,[$q_0$],[1]),
					(1,[$q_1$],[0]),
					(2,[$q_2$],[1]),
					(3,[$q_3$],[1]),
					(4,[$q_4$],[0]),
				) {
					circle((4*x,0))
					content((4*x,0),n)
					line((4*x+1,0),(4*x+3,0),mark:(end:"straight"))
					content((4*x+2,.7),l)
				}
				line((-3,0),(-1,0),mark:(end:"straight"))
				circle((20,0))
				circle((20,0),radius: .8)
				content((20,0),[$q_5$])
				for x in (0,20) {
					bezier((x+-.258819,.965926),(x+.258819,.965926),(x+-1,3),(x+1,3))
					line((x+.261407,.975585),(x+.258819,.965926),mark:(end:"straight"))
				}
				content((0,3.2),$0\/1$)
				content((20,3.2),$0\/1$)
			})
		]
	),
	caption: []
)

== 单选#h(.5em) Among the descriptions about language, which one is NOT true?（3分）

=== Language recognition is an important task in Language processing.

=== Grammar mechanism has a great impact on the efficiency of language recognition.

=== Grammar has the problem of "backtracking".

=== Once the derivation based on the grammar $G$ is unsuccessful, it means that $w in L(G)$ is not true.

= 文法综合题

=== 构造文法 $G$，使 $L(G)={w w^T mid(|)w in {a,b,c,d}^+}$。（6分）

=== 文法 $G$ 属于乔姆斯基文法体系中的哪个类型？（3分）

=== 给出使用所构造的文法 $G$ 推导句子 $a a b c d d c b a a$ 的过程。（6分）

= 构造DFA，使得其接受语言 $L={x mid(|)x in{0,1}^*}$且$x$中$10$子串与$01$子串的数量相等。（10分）

= 构造题

=== 正则表达式 `(11)*+(111)*` 的 #math.epsilon\-NFA。（6分）

=== 将上述结果转化为等价的DFA。（6分）


#wrap-content(
	figure(
		pad(
			align(center)[
				#cetz.canvas(length:.4cm,{
					import cetz.draw:*
					let doublecircle(pos)={
						circle(pos)
						circle(pos,radius:.8)
					}
					content((-2,0),[$S$])
					line((-1.6,0),(0,0),mark:(end:"straight"))
					doublecircle((1,0))
					doublecircle((5,-4))
					circle((5,4))
					circle((9,0))
					line((1.707107,-.707107),(4.29289,-3.29289),mark:(end:"straight"))
					line((1.707107,.707107),(4.29289,3.29289),mark:(end:"straight"))
					line((5.707107,3.29289),(8.29289,.707107),mark:(end:"straight"))
					line((5.707107,-3.29289),(8.29289,-.707107),mark:(end:"straight"))
					line((5,3),(5,-3),mark:(end:"straight"))
					content((-.2,1.2),[$q_0$])
					content((6.5,5),[$q_1$])
					content((3.5,-5),[$q_2$])
					content((10,-1.2),[$q_3$])
					content((2.5,2.5),[0])
					content((2.5,-2.5),[1])
					content((4.5,0),[0])
					content((7.5,-2.5),[1])
					content((7.5,2.5),[1])
					bezier((9.707107,.707107),(9.707107,-.707107),(12,2),(12,-2))
					line((9.714178,.710078),(9.707107,.707107),mark:(end:"straight"))
					content((12.25,1),[$0,1$])
					bezier((4.28582,-4.71418),(5.71418,-4.71418),(3.5,-7),(6.5,-7))
					line((5.71418,-4.71418),(5.71417,-4.71414),mark:(end:"straight"))
					content((5,-7),$0$)
				})
			]
		),
		caption: []
	),
	[= 构造图2所示DFA的左线性文法（4分），并给出 $0000$ 这个句子的推导过程（3分）。构造图2所示DFA的右线性文法（4分），并给出句子 $1000$ 的推导过程（3分）。],
	align:bottom+right,
)

= 利用状态消除法给出图3所示DFA的正则表达式。（12分）需说明状态消除的顺序。

#figure(
	pad(
		align(center)[
			#cetz.canvas(length:.4cm,{
				import cetz.draw:*
				let sqrt2=.707107
				let cos=.258819
				let sin=.965926
				cetz.draw.set-style(
					mark:(end:"straight")
				)
				line((-3,0),(-1,0))
				for (x,q,l) in (
					(0,[$q_0$],[1]),
					(1,[$q_1$],[0]),
					(2,[$q_2$],[1]),
					(3,[$q_3$],[1]),
					(4,[$q_4$],[0]),
				) {
					circle((4*x,0))
					content((4*x,0),q)
					line((4*x+1,0),(4*x+3,0))
					content((4*x+2,.6),l)
				}
				circle((20,0))
				circle((20,0),radius: .8)
				content((20,0),$q_5$)
				bezier((8+-sqrt2,-sqrt2),(sqrt2,-sqrt2),(4,-4))
				content((4,-3),[0])
				bezier((16+-sqrt2,sqrt2),(4+sqrt2,sqrt2),(10,6))
				content((10,4),[1])
				bezier((12+-sqrt2,sqrt2),(8+sqrt2,sqrt2),(10,2))
				content((10,2),[0])
				for x in (0,4,20) {
					bezier((x+-cos,sin),(x+cos,sin),(x+-2*cos,3*sin),(x+2*cos,3*sin))
				}
				content((0,3),[0])
				content((4,3),[1])
				content((20,3),[0,1])
			})
		]
	),
	caption: []
)

= 证明语言 $L={0^n 1^m mid(|)n>m>0}$不是正则语言。（10分）

#wrap-content(
	figure(
		pad(
			align(center)[
				#cetz.canvas(length:.4cm,{
					import cetz.draw:*
					cetz.draw.set-style(
						mark:(end:"straight"),
						radius:1,
					)
					line((-3,0),(-1,0))
					for (x,y,q,n) in (
						(0,0,$q_0$,"q0"),
						(5,4,$q_1$,"q1"),
						(-1,-5,$q_2$,"q2"),
						(7.5,-2,$q_3$,"q3"),
						(3,-2,$q_4$,"q4"),
						(10,-5,$q_5$,"q5"),
						(5,-5,$q_6$,"q6"),
						(9,1,$q_7$,"q7"),
						(5,-10,$q_t$,"qt"),
					) {
						if ("q0","q4","q6").contains(n)==true {
							circle((x,y),name:n)
							circle((x,y),radius: .8)						
						} else {
							circle((x,y),name:n)
						}
						content((x,y),q)
					}
					for (name1,name2,mid,n,pos) in (
						("q0.40deg","q1.220deg",(),1,(2,2.5)),
						("q0.240deg","q2.110deg",(-1.8,-2),0,(-2,-2.2)),
						("q2.70deg","q4.200deg",(0,-2),1,(0,-2.2)),
						("q4.260deg","q2.0deg",(2,-5),0,(1,-4.2)),
						("q6.180deg","q2.0deg",(),0,(2,-5.5)),
						("q4.75deg","q1.225deg",(),1,(4.2,.8)),
						("q7.150deg","q1.330deg",(),1,(7,3.2)),
						("q7.280deg","q5.100deg",(),0,(rel:(-.8,2))),
						("q3.120deg","q1.270deg",(5,0),1,(6,.5)),
						("q1.310deg","q3.90deg",(8,1),0,(6.7,1)),
						("q3.325deg","q5.135deg",(),0,(8.4,-3.8)),
						("q6.90deg","q1.270deg",(),1,(5.3,-2)),
						("qt.100deg","q1.260deg",(3,-7),1,(3.6,-7)),
						("q5.225deg","qt.45deg",(),0,(7,-7.2)),
						("q2.315deg","qt.135deg",(),0,(2.5,-7.2)),
						("q5.180deg","q6.0deg",(),1,(7.5,-5.5)),
						("qt.300deg","qt.240deg",(5,-14),$0,1$,(5,-13))
					) {
						bezier(name1,name2,mid)
						content(pos,[#n])
					}
				})
			]
		),
		caption: []
	),
	[= 最小化图4中的DFA，给出步骤和最小化的DFA状态转移图。（12分）],
	align:bottom+right
)