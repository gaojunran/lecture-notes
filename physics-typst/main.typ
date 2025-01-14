#set page(columns: 2, margin: 1cm)
#set text(size: 10pt)
#let numcode(.., last) = if last < 10 {
  return "0" + str(last)
} else {
  return str(last)
}
#set heading(numbering: numcode)

= 求电场强度

$E = q / (4 pi epsilon_0 r^2)$

$dif E = (dif q) / (4 pi epsilon_0 r^2) $

求$dif q$时，可以借助线密度$dif q = lambda dif l$，面密度$dif q = sigma dif S$，体密度$dif q = rho dif V$。

解决环状问题时，有公式：$d l = R dif theta$。

= 求电场强度的典型结论

-- 长为$L$的直棒中点距离为$x$、半角为$theta$处：$arrow(E) = lambda / (2 pi epsilon_0 x) sin theta_0 dot arrow(i)$

-- 长为$lambda$、半径为$R$的弧形棒、半角为$theta$处：$E = lambda / (2 pi epsilon_0 R) sin theta_0$

-- 带电无限大平板：$E = sigma / (2 epsilon_0)$

-- 带电无限长直线：$E = lambda / (2 pi epsilon_0 x)$

= 电通量

$ Phi_e = E S cos theta = integral arrow(E) dot dif arrow(S)$

对于曲面而言，向外穿出为正，向内穿入为负。

= 静电场中的高斯定理

$ Phi_e = integral.cont arrow(E) dot dif arrow(S) = sum(q_内) / epsilon_0$

高斯定理描述了高斯面上电通量只与高斯面内的电荷有关，表明了电场是一个有源场。

高斯面上的场强$E$，不仅与高斯面内的电荷有关，还与高斯面外的电荷有关。

= 静电场中的安培环路定理

$integral.cont arrow(E) dot dif arrow(l) = 0$

这个定理说明，沿闭合路径一周，电场力做功为0。说明电场力是保守力，静电场是保守场。
~
= 电势

$V = q / (4 pi epsilon_0 r)$

$dif V = (dif q) / (4 pi epsilon_0 r)$

= 电场强度和电势的关系
$V = integral^(infinity)_r arrow(E) dot dif arrow(l)$

该公式的积分下限为起点，积分上限为电势为0的点。通常定义无穷远处电势为0。

$arrow(E) = - gradient U = - ((partial V) / (partial x) arrow(i) + (partial V) / (partial y) arrow(j) + (partial V) / (partial z) arrow(k)) $

= 求电势的典型结论

-- 点电荷的电势：$V = q / (4 pi epsilon_0 r)$

-- 球壳在球心处的电势：

$ cases(
  r < R ", " V = Q / (4 pi epsilon_0 R),
  r > R ", " V = Q / (4 pi epsilon_0 r)
)$

= 电势能

$W_M = q_0 V = integral^(infinity)_r arrow(F) dot dif arrow(r)$

电场力做正功，电势能减少。


= 导体的静电平衡

导体电荷分布在外表面，内部场强处处为0。导体是等势体，表面是等势面，但场强并非处处相等。导体表面曲率越大，电荷密度越大。

导体表面电场强度: $E = sigma / epsilon_0$。



= 电容器

$C = q / U$，$E = sigma / epsilon_0 = U / d$，$F = 1/2 E dot q$

电容器含介质时，$C = epsilon_r C_0$，$epsilon = epsilon_0 dot epsilon_r$

并联：$C = C_1 + C_2 + ...$；串联：$C = 1 / C_1 + 1 / C_2 + ...$

= 求电容的典型结论

-- 平行板电容器：$C = (epsilon S) / d$

-- 圆柱形电容器：$C = 2 pi epsilon L / ln(R_b / R_a)$

-- 球形电容器：$C = 4 pi epsilon (R_a R_b) / (R_b - R_a)$

-- 孤立导体电容器：$C = 4 pi epsilon R_a$


= 电介质高斯定理

$integral.cont arrow(D) dot dif arrow(S) = sum q_内$，其中$D = epsilon_0 epsilon_r E$为电位移。

= 电场能

电场能密度：$w_e = 1/2 arrow(D) dot arrow(E) = 1/2 epsilon_0 epsilon_r E^2$

电场能：$W_e = integral_V w_e dif V = Q^2 / (2 C) = 1/2 C(V_1 - V_2) ^ 2 = 1/2 Q (V_1 - V_2)$

这里的电场能为静电能，指的是一个带电体或一个带电系统的总能量。

// = 电场与物质的相互作用

= 毕奥-萨瓦尔定律

描述了电流在其周围所产生的磁场大小。

$B = integral dif B = mu_0 /( 4 pi) integral (I dif l sin theta) / (r^2)$

= 求磁感应强度的典型结论

-- 无限长载流直导线周边半径为$a$处：$B = (mu_0 I) / (2 pi a)$

-- 圆形载流导线轴线处：$B = (mu_0 I) / (2 R)$

-- 螺绕环内部/无限长密绕直螺线管内部：$B = mu_0 n I$

-- 无限长的载流平面：$B = 1/2 mu_0 i$（$i$为平面在其法矢量方向上单位长度上的电流）

= 磁场中的安培环路定理

$integral.cont arrow(B) dot dif arrow(l) = mu_0 sum I_内$

// 推论：$B = (mu_0 sum I_内) / (2 pi r)$

安培环路定理只与环路内部的电流有关，与环路外部的电流无关。还表明了磁场是一个有旋场（非保守场）。

环路上的磁感应强度$B$，不仅由环路内的电流影响，也由环路外的电流影响。

= 磁通量

$Phi_m = B S cos theta = integral arrow(B) dot dif arrow(S)$

对于曲面而言，向外穿出为正，向内穿入为负。

= 磁场中的高斯定理

$integral.cont arrow(B) dot dif arrow(S) = 0$

磁场中的高斯定理表明磁场是一个无源场。

= 安培力

$F = B I L sin alpha$（磁场和路径的夹角为$alpha$）

$dif arrow(F) = I dif arrow(l) times arrow(B)$

= 磁矩、磁力矩

磁矩：$P_m = I dot S$

磁力矩：$M = B P_m sin theta$

磁力矩做功：$A = I Delta Phi_m$

= 洛伦兹力

$arrow(F) = q arrow(v) times arrow(B) = q v B sin theta = (m v^2) / R$；$T = (2 pi m) / (B q)$

= 磁介质中的安培环路定理

$integral.cont arrow(H) dif arrow(l) = sum I_内$，其中$H = B / (mu_0 mu_r) = B / mu_0 - M$为磁场强度，$M$为磁化强度。

$mu_r = B / B_0 cases(
  mu_r > 1 "顺磁质",
  mu_r < 1 "逆磁质",
  mu_r >> 1 "铁磁质（强磁质）"
)$

= 磁场能量

磁能密度：$w_m = 1/2 arrow(B) dot arrow(H) = 1/2 mu H ^2 = 1/2 B^2 / mu$。

磁场能量：$W_m = integral_V w_m dif V$

= 磁化、电极化

#image("电极化磁化.png", width: 50%)


= 感生电动势

$epsilon = - (dif Phi) / (dif t) = integral.cont arrow(E_k) dot dif arrow(l) = - integral.cont (partial arrow(B)) / (partial t) dot dif arrow(S)$

感生电场：非保守场、无源场、有旋场、闭合。

= 动生电动势

$epsilon = - (dif Phi) / (dif t) = integral_l (arrow(v) times arrow(B)) dif arrow(l) = B L overline(v) "（棒上各处速率不同）"$


= 自感与互感

自感：$L = Phi / I$；$epsilon = L dot (dif I) / (dif t)$

自感回路周围空间磁场的能量：$W_m = 1/2 L I_0^2$

自感系数$L$的大小与回路的几何形状、大小、匝数、磁介质有关，与电流无关。

互感：$M = Phi_2 / I_1 = Phi_1 / I_2$；$M = sqrt(L_1 L_2)$（耦合线圈）

$epsilon_21 = M (dif I_1) / (dif t), epsilon_12 = M (dif I_2) / (dif t)$

= 麦克斯韦方程组

1. 电场高斯定理：电场是有源场，电荷总伴随着电场。

$integral.cont arrow(D) dif arrow(S) = sum q = integral_v rho dif v$

2. 磁场高斯定理：磁场是无源场，磁力线闭合。

$integral.cont arrow(B) dif arrow(S) = 0$

3. 变化的电场产生磁场。（全电流安培环路定理）

位移电流：电位移通量对时间的变化率看作是一种电流，由变化的电场产生。

位移电流在磁效应上和传导电流等效；但在热效应上不产生焦耳热。

全电流 = 位移电流 + 传导电流

$integral.cont_L arrow(H) dif arrow(l) = I + I_d = integral_S arrow(j) dot dif arrow(S) + integral_S (partial arrow(D)) / (partial t) dot dif arrow(S)$

4. 变化的磁场一定伴随着电场。

$integral.cont arrow(E) dif arrow(l) = - (dif Phi) / (dif t) = - integral.cont (partial arrow(B)) / (partial t) dot dif arrow(S)$

= 爱因斯坦相对论中的两个基本假设

狭义相对论的相对性原理、光速不变原理。

= 相对论

长度收缩效应：$l = l_0 sqrt(1 - (v^2) / c^2)$

时间延缓效应：$Delta t = (Delta t_0) / sqrt(1 - (v^2) / c^2)$
