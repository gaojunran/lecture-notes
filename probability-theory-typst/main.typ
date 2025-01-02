#set text(size: 8.5pt)
#set page(columns: 2, margin: 1cm)
#let numcode(.., last) = if last < 10 {
  return "0" + str(last)
} else {
  return str(last)
}
#set heading(numbering: numcode)

= 泊松分布

$P{X = k} = (lambda^k e^(-lambda)) / k! => X ~ pi(lambda)$

对于一个二项分布$X ~ B(n,p)$，当$n$很大、$p$很小时，可以近似为泊松分布，即$n p -> lambda(n -> +oo)$.

= 分布函数的性质

1. $0 < F(x) <= 1$

2. $"if" x_1 < x_2, F(x_1) <= F(x_2)$（单调不减性）

3. $F(-oo) = limits(lim)_(x -> -oo) F(x) = 0, F(+oo) = limits(lim)_(x -> +oo) F(x) = 1$（归一性）

4. $limits(lim)_(x -> x_0^+) F(x) = F(x_0)$ （右连续性）

= 概率密度函数的性质

1. $f(x) >= 0$

2. $integral^(+oo)_(-oo) f(x) dif x = 1$

3. $P{x_1 < X <= x_2} = F(x_2) - F(x_1) = integral^(x_2)_(x_1) f(x) dif x $

4. 若$f(x)$在点$x$处连续，则有$F'(x) = f(x)$.

= 指数分布

$f(x) = cases(
  1/theta e^(-x/theta) &", when" x > 0,
  0 &", when" x <= 0
) => X ~ E(theta)$

= 正态分布

$f(x) = 1/ (sqrt(2 pi) sigma) e^(-((x - mu)^2) / (2sigma^2)) => X ~ N(mu, sigma^2)$

标准正态分布函数的性质：$Phi(-x) = 1 - Phi(x)$

利用查表法求概率：$P{c <= X <= d} = Phi((d - mu) / sigma) - Phi((c - mu) / sigma)$

= 求随机变量函数$Y = g(x)$的概率密度
- 分布函数法（通用）

  1. 先求$Y$的分布函数$F_Y (y) = P{Y <= y} = P{g(X) <= y}$（反解出$P{X <= h(y)} = integral_(-oo)^(h(y)) f_X (x) dif x$的形式）

  2. 再求$Y$的概率密度函数$f_Y (y) = F'_Y (y)$

- 定理法

  若$g(x)$处处可导且单调，则有$f_Y (y) = f_X (h(y)) |h'(y)|$, when $alpha < y < beta$，其中$alpha = min(g(-oo), g(+oo))$, $beta = max(g(-oo), g(+oo))$，$h(y)$是$g(x)$的反函数。

= 二维随机变量分布函数的性质

$P(x_1 < X < x_2, y_1 < Y <= y_2) = F(x_2, y_2) - F(x_2, y_1) + F(x_1, y_1) - F(x_1, y_2) >= 0$

= 二维正态分布

$(X, Y) ~ N(mu_1, mu_2, sigma_1, sigma_2, rho)$

= 边缘分布函数

$F_X (x) = F(x, +oo), f_X (x) = integral^(+oo)_(-oo) f(x, y) dif y$

$F_Y (y) = F(+oo, y), f_Y (y) = integral^(+oo)_(-oo) f(x, y) dif x$

= 独立性

$X$和$Y$相互独立 $<=>$

$P{X = x_i, Y = y_j} = P{X = x_i}P{Y = y_j}$ (离散型)

$f(x,y) = f_X(x) f_Y (y)$ （连续型）


= 条件分布

$P{X = x_i | Y = y_j} = (P{X = x_i, Y = y_j}) / P{Y = y_j}$.

$F_(X|Y) (x|y) = integral^x_(-oo) f_(X|Y) (x|y) dif x = integral^x_(-oo) [(f(x,y)) / (f_Y (y))] dif x $.

= 连续型随机变量函数的分布

- $Z = X + Y$的分布

  $f_Z (z) = integral_(-oo)^(+oo) f(z - y, y) dif y = integral_(-oo)^(+oo) f(x, z - x) dif x$

- $Z = X / Y$的分布

  $f_Z (z) = integral_(-oo)^(+oo) |y| f(y z, y) dif y = integral_(-oo)^(+oo) |x| f(x, x z) dif x$

- $M = max(X, Y)$和$N = min(X, Y)$的分布

  $F_max (z) = F_X (z) F_Y (z)$

  $F_min (z) = 1 - [1 - F_X (z)] [1 - F_Y (z)]$

= 连续型数学期望

$E(X) = integral_(-oo)^(+oo) x f(x) dif x$

$E(Y) =E(g(x)) = integral_(-oo)^(+oo) g(x) f(x) dif x$

$E(Z) = E(h(X,Y)) = integral_(-oo)^(+oo) integral_(-oo)^(+oo) h(x,y) f(x,y) dif x dif y$

= 方差的定义

$D(X) = E((X - E(X))^2) = E(X^2) - (E(X))^2$。

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

$E(X^k)$：$k$阶（原点）矩。

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

= 简单随机抽样

$X_1, X_2,..., X_n$是$F$的一个样本，则它们的联合分布函数为$F^*(x_1, x_2,..., x_n) = limits(Pi)^n_(i=1) F(x_i)$，联合概率密度函数（如果存在）为$f^*(x_1, x_2,..., x_n) = limits(Pi)^n_(i=1) f(x_i)$。

= 常用统计量的定义

- 样本均值：$overline(X) = 1/n sum^n_(i=1) X_i$。

对于正态总体的样本，$overline(X) ~ N(mu, sigma^2/n)$。

- 样本方差：$S^2 = 1/(n-1) limits(sum)^n_(i=1) (X_i - overline(X))^2 = 1/(n-1) (limits(sum)^n_(i=1) X_i^2 - n overline(X)^2)$。

对于正态总体的样本，有$((n-1)S^2) / sigma^2 ~ chi^2(n-1)$， $overline(X)$与$S^2$独立。

对于正态总体的样本，$(overline(X) - mu) / (S / sqrt(n)) ~ t(n-1)$。

= $chi^2$分布
- 定义：$chi^2 = X_1^2 + X_2^2 + ... + X_k^2 ~ chi^2(n)$，其中$X_i$是来自总体$N(0,1)$的独立随机变量。
- 期望和方差：$E(X) = n, D(X) = 2n$。
- 性质：有$chi_1^2 ~ chi^2(n_1), chi_2^2 ~ chi^2(n_2)$，则$chi_1^2 + chi_2^2 = chi^2(n_1 + n_2)$。

= $t$分布

- 定义：设$X ~ N(0,1), Y ~ chi^2(n)$，且$X$和$Y$相互独立，则$t = X / sqrt(Y/N) ~ t(n)$。
- 性质：图形关于$t = 0$对称，在$t = 0$处取到最大值，在n足够大时近似于标准正态分布。

= $F$分布

- 定义：设$X ~ chi^2(n_1), Y ~ chi^2(n_2)$，则$F = (X / n_1) / (Y / n_2) ~ F(n_1, n_2)$。
- 性质：若$F ~ F(n_1, n_2)$，则$1 /F ~ F(n_2, n_1)$。

= 点估计的矩估计法

用样本矩的连续函数来估计总体矩的连续函数。

- 总体中只有一个待估参数，用样本的一阶矩来估计总体的一阶矩：

  $cases(
  A_1 = 1/n sum^n_(i=1) X_i,
  mu_1 = E(X)
) => mu_1 = A_1 => "解出一个未知参数"$

- 总体中有两个待估参数，用样本的前二阶矩来估计总体的前二阶矩：

  $cases(
  A_1 = 1/n sum^n_(i=1) X_i,
  A_2 = 1/n sum^n_(i=1) X_i^2,
  mu_1 = E(X),
  mu_2 = E(X^2) = D(X) + (E(X))^2,
) => cases(
  mu_1 = A_1,
  mu_2 = A_2,
) => "解出两个未知参数"$

= 点估计的最大似然估计法

1. 写出似然函数：

$L(theta) = L(x_1, x_2,..., x_n; theta) \ = product^n_(i=1) p(x_i; theta)"（离散型）" \ = product^n_(i=1) f(x_i; theta)"（连续型）"$

2. 选取使得似然函数$L(theta)$取得最大值的$hat(theta)$作为$theta$的估计值。

可以列出对数似然方程（组）$(dif ln L(theta)) / (dif theta) = 0$，解方程得到最大似然估计值。

= 估计量的评价标准

- 无偏性：$E(hat(theta)) = theta$。

- 有效性：$D(hat(theta_1)) <= D(hat(theta_2))$，则称$hat(theta_1)$比$hat(theta_2)$更有效。

- 相合性（一致性）：当$n -> oo$时，$hat(theta)$依概率收敛于$theta$。

= 区间估计

1. 构造一个关于样本的含$theta$的函数$W$，分布中不含有未知参数。

2. 取$W$的分布对应的上$1 - alpha / 2$分位点、上$alpha / 2$分位点，则满足$P{x_(1 - alpha / 2) < W(x) < x_(alpha / 2)} = 1 - alpha$。

3. 不等式中仅有唯一参数$theta$，解其取值范围得到置信区间。

#image("区间估计.png")


= 假设检验

1. 提出假设$H_0$和备择假设$H_1$;

2. 构造一个统计量，满足假设$H_0$且不含任何未知参数；

3. 给定假设$H_0$成立的概率为$1 - alpha$（显著性水平），这个统计量的取值应当不落入一定的范围$W$（拒绝域）；

4. 根据样本的观察值，计算统计量的观察值$u_0$，若$t_0$落入拒绝域，则拒绝假设$H_0$。

#image("假设检验单侧.png")

#image("假设检验双侧.png")

