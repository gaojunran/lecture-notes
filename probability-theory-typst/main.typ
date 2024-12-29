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

= 方差的定义

$D(X) = "Var"(X) = E((X - E(X))^2) = E(X^2) - (E(X))^2$。

根据定义，方差实际上是随机变量X的函数$g(X) = (X - E(X))^2$的数学期望。

= 切比雪夫不等式

$P(|X - mu| >= epsilon) <= sigma^2 / epsilon^2$

= 协方差的定义

协方差：$"Cov"(X,Y) = E{(X - E(X))(Y - E(Y))} = E(X Y) - E(X)E(Y)$。

相关系数：$rho_(X Y) = "Cov"(X,Y) / sqrt(D(X) dot D(Y)) in [-1,1]$。

$D(X+Y) = D(X) + D(Y) + 2 "Cov"(X,Y) \ = D(X) + D(Y) ("特别地，当X和Y独立时")$

= 数学期望、方差、协方差的性质

$E(C X) = C E(X)$，$E(a X + b Y) = a E(X) + b E(Y)$

$D(C X) = C^2 D(X)$，$D(X plus.minus Y) = D(X) + D(Y)$，$D(X + C) = D(X)$。

$"Cov"(X,Y) = "Cov"(Y,X), "Cov"(X,X) = D(x), "Cov"(X,a) = 0, "Cov"(a X + b Y) = a b "Cov"(X,Y), "Cov"(X_1 + X_2, Y) = "Cov"(X_1,Y) + "Cov"(X_2,Y)$。

= 特殊分布的期望和方差

1. 泊松分布$X ~ P(X = k) = (lambda^k) / (k!) e^(-lambda)$：$E(X) = lambda, D(x) = lambda$。

2. 指数分布$f(x) = 1/theta e^(-x/theta)("when" x > 0)$：$E(X) = theta, D(X) = theta^2$。

3. 均匀分布$f(x) = 1/(b-a)("when" a<x<b)$：$E(X) = (a+b)/2, D(X) = (b-a)^2/12$。

= 矩

$E(X^k)$：$k$阶原点矩。

$E(X^k Y^l)$：$k+l$阶混合矩。

$E{(X - E(X))^k}$：$k$阶中心矩。

$E{(X - E(X))^k (Y - E(Y))^l}$：$k+l$阶混合中心矩。

= 大数定理

- 切比雪夫大数定理：随机变量相互独立，且具有相同的数学期望和方差：$E(X_k) = mu, D(X_k) = sigma^2$，作前n个随机变量的算术平均$overline(X) = (sum^n_(k=1))/n$，则有：
$limits(lim)_(n->oo) P{|overline(X) - mu| < epsilon} = 1$，即$overline(X)$依概率收敛于$mu$。

- 伯努利大数定理：$n_A$是n次独立重复试验中事件A发生的次数，$p$是事件A在每次试验中发生的概率 $=>$ $n_A / n$依概率收敛于$mu$。

- 辛钦大数定理：随机变量独立同分布，且具有相同的数学期望$E(X_k) = mu$ $=>$ $overline(X)$依概率收敛于$mu$

= 独立同分布的中心极限定理

随机变量独立同分布，且具有相同的数学期望和方差：$E(X_k) = mu, D(X_k) = sigma^2$，则随机变量之和的标准化变量：$Y_n = (sum^n_(k=1) - n mu) / (sqrt(n) sigma)$的分布函数对于任意$x$满足$limits(lim)_(n->oo) P{(sum^n_(k=1) - n mu) / (sqrt(n) sigma)} <= x = Phi(x)$，即收敛于标准正态分布的分布函数。




