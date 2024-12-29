#set page(columns: 2, margin: 1cm)
#let numcode(.., last) = if last < 10 {
  return "0" + str(last)
} else {
  return str(last)
}
#set heading(numbering: numcode)

= 连续型数学期望

$E(X) = integral_(-oo)^(+oo) x f(x) dif x$

$E(Y) =E(g(x)) = integral_(-oo)^(+oo) g(x) f(x) dif x$

$E(Z) = E(h(X,Y)) = integral_(-oo)^(+oo) integral_(-oo)^(+oo) h(x,y) f(x,y) dif x dif y$

= 数学期望和方差的性质

$E(C X) = C E(X)$，$E(a X + b Y) = a E(X) + b E(Y)$

$D(C X) = C^2 D(X)$，$D(X plus.minus Y) = D(X) + D(Y)$，$D(X + C) = D(X)$。

= 特殊分布的期望和方差

1. 泊松分布$X ~ P(X = k) = (lambda^k) / (k!) e^(-lambda)$：$E(X) = lambda, D(x) = lambda$。

2. 指数分布$f(x) = 1/theta e^(-x/theta)("when" x > 0)$：$E(X) = theta, D(X) = theta^2$。

3. 均匀分布$f(x) = 1/(b-a)("when" a<x<b)$：$E(X) = (a+b)/2, D(X) = (b-a)^2/12$。

= 方差的定义

$D(X) = "Var"(X) = E((X - E(X))^2) = E(X^2) - (E(X))^2$。

根据定义，方差实际上是随机变量X的函数$g(X) = (X - E(X))^2$的数学期望。
