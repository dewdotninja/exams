### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 2a9d0439-b5e0-4b88-b69c-9fbdc5b9e3aa
using ControlSystems, Plots, LinearAlgebra,PlutoUI

# ╔═╡ 02a8b540-f5c7-11eb-3d05-35019cfb6ccc
md"""
!["Feng logo"](https://raw.githubusercontent.com/dewdotninja/exams/main/feng_heading.png)

#### ข้อสอบกลางภาคออนไลน์ 2564

ภาควิชาวิศวกรรมเครื่องกล 

วิชา 01211433 Vision and Control of Industrial Robots 

วันเสาร์ที่ 21 สิงหาคม 2564 16.00-19.00 ทางออนไลน์

ให้นิสิตพิมพ์ ชื่อ นามสกุล รหัสนิสิต หมู่เรียน ในเซลด้านล่างนี้ 
"""

# ╔═╡ 639ef02d-c58f-4950-9b68-d7f5e533b39c


# ╔═╡ 38915e46-a18d-48eb-8e1c-cf575adcc269
md"""
พิมพ์หรือคัดลอกข้อความต่อไปนี้ลงในเซลด้านล่าง (สำคัญ!)

"ข้าพเจ้าขอให้คำสัตย์ว่าได้ทำข้อสอบนี้ด้วยตัวเองโดยไม่ได้รับความช่วยเหลือจากผู้ใด"
"""

# ╔═╡ 264646aa-75b9-485b-9633-b74302ff6e5e


# ╔═╡ 9aa877f7-ab25-498a-aff9-85aa8d2ad899
md"""
### คำสั่ง

1. ข้อสอบจะถูกแจกเป็นลิงก์บน Google classroom เท่านั้น มีให้เลือกเป็นแบบ Jupyter notebook (Python) หรือ Pluto notebook (Julia) ให้เลือกทำและส่งไฟล์เพียงชนิดเดียวเท่านั้น (หากส่งมาทั้งสองชนิดผู้ตรวจจะเลือกแบบสุ่ม) โดยทำข้อสอบในไฟล์ notebook ที่ได้รับทั้งหมด สามารถเพิ่มเซลได้ตามต้องการ 
2. ข้อสอบเป็นแบบเปิดตำรา ใช้คอมพิวเตอร์ หนังสือหรือข้อมูลออนไลน์ได้ไม่จำกัด
3. อธิบายและแสดงการคำนวณให้ชัดเจน สำหรับโจทย์ที่ต้องเขียนโปรแกรมแก้ปัญหา โปรแกรมต้องประมวลผลได้โดยไม่มีข้อผิดพลาดและให้คำตอบถูกต้องจึงได้คะแนนเต็ม
4. ห้ามแก้ไขโจทย์โดยเด็ดขาด ผู้ที่แก้โจทย์จะได้คะแนนข้อนั้นเป็นศูนย์
5. พารามิเตอร์ในโจทย์บางข้อขึ้นกับตัวเลข 3 หลักสุดท้ายของรหัสนิสิตของผู้ทำข้อสอบ ซึ่งจะต้องแทนค่าอย่างถูกต้องเท่านั้นจึงจะได้คะแนน (ดูคำอธิบายเพิ่มเติมด้านล่าง) 
6. ทำข้อสอบด้วยตนเอง ห้ามปรึกษาหรือขอความช่วยเหลือจากบุคคลอื่นในทุกกรณ๊ ข้อย่อยใดที่คำตอบผิดและมีข้อความหรือค่าคำตอบเหมือนกันมากกว่าหนึ่งคนจะได้คะแนนข้อย่อยนั้นเป็นศูนย์
7. เวลาทำข้อสอบ 3 ชั่วโมง เมื่อหมดเวลาจะต้องส่งข้อสอบทุกคน การส่งซ้ำจะนับเวลาที่ส่งครั้งสุดท้าย ซึ่งบันทึกโดย Google classroom ผู้ที่ส่งหลังหมดเวลา 10 นาทีจะถูกหัก -1 คะแนนต่อนาที เริ่มจาก -10 คะแนน ผู้ที่ส่งหลัง 30 นาทีอาจถูกปฏิเสธข้อสอบและได้คะแนนสอบครั้งนี้เป็นศูนย์

"""

# ╔═╡ beea2d33-ce11-4004-ba01-0fad265df93b
md"""
* **รศ.ดร.พีรยุทธ์ ชาญเศรษฐิกุล**			ประธานกรรมการอำนวยการสอบ
* **ผศ.ดร.ประพจน์ ขุนทอง**				กรรมการออกข้อสอบ
* **ดร.วโรดม ตู้จินดา**					กรรมการออกข้อสอบ

"""

# ╔═╡ 266c819d-1b2b-485b-a196-92bb9f655685
md"""
**หมายเหตุ :** ข้อสอบด้านล่างนี้สำหรับเป็นตัวอย่างหรือใช้ฝึกหัดทำข้อสอบเท่านั้น 
ไม่ใช่ข้อสอบจริงของวิชานี้
    
***
### คะแนนของโจทย์ข้อสอบแต่ละข้อ (รวม 100 คะแนน)

| โจทย์ข้อสอบ | คะแนน |
| --- | --- |
| 1 | (20 คะแนน) |
| 2 | (20 คะแนน) |
| 3 | (15 คะแนน) |
| 4 | (25 คะแนน) |
| 5 | (20 คะแนน)+(Bonus 5 คะแนน) |

"""

# ╔═╡ 07130aea-2900-407c-9709-de1c3f565aab
md"""
### อธิบายเพิ่มเติมเกี่ยวกับค่าในโจทย์ข้อสอบ ที่ขึ้นกับตัวเลข 3 ตัวสุดท้ายของรหัสนิสิต คือ

-------xyz  (ไม่สนใจเลขหลักอื่น )

ถ้าตัวเลขตัวใดใน 3 หลักสุดท้ายเป็น 0 ให้แทนด้วยเลข 5 

ตัวอย่างรหัสนิสิต

นิสิต A : 6010552893  ได้ค่า x = 8, y = 9, z = 3

นิสิต B : 6010502977  ได้ค่า x = 9, y = 7, z = 7

นิสิต C : 6010503001 ได้ค่า x = 5, y = 5, z = 1

ใช้ค่านี้กับโจทย์ทุกข้อในข้อสอบ

เครื่องหมายที่ใช้ดำเนินการกับค่าตัวแปร

 $+$ บวก

 $-$  ลบ

 $*$  คูณ 

 $/$ หาร

^ ยกกำลัง

รวมถึงฟังก์ชันทางคณิตศาสตร์ เช่น $\exp(x)$, $\sin(z*t)$

หากตัวแปรฝังอยู่ในหลักหนึ่งของตัวเลข ให้แทนหลักนั้นด้วยค่าตัวแปรเลย เช่น y = 8 z = 3, 12y7 = 1287, 4.3z5 = 4.335

โจทย์อาจจำหนดเงื่อนไขขึ้นกับ x, y, z เช่น ถ้า x<5 ทำเงื่อนไข A นอกนั้นทำเงื่อนไข B 

ตัวอย่างโจทย์บอกว่า กำหนดให้ $R1 = 1000*x \,\Omega, C1 = 10*y \,\mu F$

นิสิต A ทำโจทย์ด้วยค่า R1 = 8000 $\Omega$, C1 = 90 $\mu$F

นิสิต B ทำโจทย์ด้วยค่า R1 = 9000 $\Omega$, C1 = 70 $\mu$F

นิสิต C ทำโจทย์ด้วยค่า R1 = 1000 $\Omega$, C1 = 10 $\mu$F

ถ้ามีตรงส่วนใดที่ไม่ชัดเจนในข้อสอบ ให้เขียนอธิบายว่าเข้าใจโจทย์อย่างไร หากผู้ตรวจเห็นว่าโจทย์เป็นเหตุทำให้เข้าใจผิดได้ จะให้คะแนนในส่วนนั้น
"""

# ╔═╡ e1972492-7b2c-45a7-9680-917c725c7f33
md"""
```julia
using Pkg 
Pkg.add("ControlSystems")
Pkg.add("Plots")
Pkg.add("PlutoUI")  # optional
```

"""

# ╔═╡ 0cb71990-c0e0-43f7-a464-5b1c5ac39a41
md"""
***
#### P1 (20 คะแนน)

อุปกรณ์ชนิดหนึ่งที่นิยมใช้ในเครื่องจักรอุตสากรรมที่มีการเคลื่อนที่แบบหมุนเช่นข้อต่อหุ่นยนต์ เรียกว่า ตัวขับฮาร์มอนิก (Harmonic Drive) จากบริษัทในกลุ่ม Harmonic Drive LLC โดยใช้ต่อร่วมกับเพลาของมอเตอร์ ต่อไปเพื่อความสะดวกในการเขียนจะเรียกโดยย่อว่าระบบ HDM

รูปที่ 1 แสดงโครงสร้างของกลไก HDM ประกอบด้วย 3 ส่วนคือ แหวนกลม (circular spline) แหวนยืดหยุ่น (flexspline) และตัวกำเนิดคลื่น (wave generator) รูปวงรี โดยตัวกำเนิดคลื่นจะเชื่อมต่อกับเพลาของมอเตอร์ซึ่งหมุนด้วยความเร็วสูง แหวนกลมจะมีฟันอยู่ด้านใน ระหว่างทั้งสองจะคั่นด้วยแหวนยืดหยุ่นที่มีฟันอยู่ด้านนอก เมื่อตัวกำเนิดคลื่นหมุนจะทำให้แหวนยืดหยุ่นแปรรูปและทำให้ฟันไปขบกับฟันของแหวนกลม ดังนั้น เพลาด้านเอาต์พุตของ HDM จะหมุนด้วยความเร็วต่ำกว่าความเร็วเพลามอเตอร์ โดยอัตราทดจะขึ้นกับความแตกต่างระหว่างจำนวนฟันของแหวนยืดหยุ่นกับแหวนกลม

!["fig1"](https://drive.google.com/uc?id=1PtcGtTJ2iv81nLHz5Gb5mNnGeM_d5i4c)

รูปที่ 1 โครงสร้างของ HDM (https://www.harmonicdrive.net/)

เมื่อเขียนแผนภาพของอุปกรณ์ HDM ต่อกับดีซีมอเตอร์จะได้เป็นดังรูปที่ 2 โดยด้านซ้ายเป็นระบบไฟฟ้าเชิงกลของมอเตอร์ และด้านขวาคือระบบเชิงกลของตัวขับฮาร์มอนิกซึ่งแทนโดยระบบเกียร์ผ่านเพลาอ่อนตัวที่มีค่าความแข็งเท่ากับ k 

!["fig2"](https://drive.google.com/uc?id=1OP3LsMAgsHQ5uYdmVLQFHQLq55J-kYd7)

รูปที่ 2 แผนภาพของระบบ HDM

เมื่อนิยาม 
```math
p_l(s) = J_ls^2 + B_ls + k \tag{1}
```
```math
p_m(s) = J_ms^2 + B_ms + k \tag{2}
```

สามารถแสดงได้ว่าฟังก์ชันถ่ายโอนรวมของ HDM เขียนได้เป็นดังนี้
```math
P(s) = \frac{\theta_l(s)}{V(s)} = \frac{k_mk}{p_m(s)p_l(s)(Ls+R)-k^2(Ls+R)+rk_mk_bsp_l(s)} \tag{3}
```
เมื่อกำหนดค่าพารามิตอร์ (แทนค่า x,y,z จากรหัสนิสิตของตนเอง)
```julia
	km = (y+z)*100  # torque constant
	kb = 1  # back EMF constant
	k = 1000 # torsional stiffness of harmonic drive
	r = x   # gear ratio
	R = 1  # armature resistance
	L = 0.1 # armature inductance
	Jm = (x+y)  #  motor inertia
	Bm = 0.0y  # motor shaft friction
	Jl = (x+z)  # load inertia
	Bl = 0.0z  # load friction

```
**P1.1** สร้างฟังก์ชันถ่ายโอนของพลานต์ข้อต่อหุ่นยนต์ขับเคลื่อนโดย HDM ตามสมการ (3) (5 คะแนน)
"""

# ╔═╡ b151d1b5-d4a6-4887-8731-413966607992


# ╔═╡ e7304ccf-74b9-497e-b2b9-b200a44c697a
md"""
**P1.2** พล็อตโพลของฟังก์ชันถ่ายโอนจากข้อ **P1.1** บนระนาบเชิงซ้อน (5 คะแนน)
"""

# ╔═╡ 74836ddd-8abf-4dec-b6ca-f6e2bc08735a


# ╔═╡ b9c39e55-d6a1-46be-9ac5-6761ad9ed4b6
md"""
**P 1.3** พล็อตแผนภาพโบเด (Bode plot) ที่แสดงขนาดและเฟสของพลานต์ในย่านความถี่ 0.01 - 1000 rad/s และใช้คำสั่งเพื่อคำนวณค่าขอบของอัตราขยายและเฟส (gain and phase margin) *ระบุในคำตอบให้ชัดเจนว่าได้ค่า gain margin และ phase margin เท่าไร* (5 คะแนน)
"""

# ╔═╡ 339a7306-9cf8-4ef1-8dcc-9a8ed5573944


# ╔═╡ f38f4e82-8e9a-4cb1-b5e1-2228fb0f4d17
md"""
**P1.4** จากรูปแผนภาพบล็อกของระบบป้อนกลับในรูปที่ 3 โดยใช้พลานต์จากข้อ **P1.1** และตัวควบคุมแบบสัดส่วน (proportional control) $C(s) = K$ โดยมีค่าอัตราขยาย $K = (x+y)$ ใช้คำสั่งเพื่อสร้างฟังก์ชันถ่ายโอนที่บรรยายผลตอบสนองของ $y(s)$ ที่มีต่ออินพุต $d_i(s)$ ถ้าหากระบบป้อนกลับเสถียร คำนวณหาขนาดของ $y(s)$ เมื่อ $d_i(s) = sin(0.1t)$ หากระบบป้อนกลับไม่เสถียรให้ตอบว่าไม่เสถียร  (5 คะแนน)

!["fig 3"](https://drive.google.com/uc?id=1CLNYYhbhGOpVaJULHdX13xoEv_AO2wyR)

รูปที่ 3 แผนภาพบล็อกของระบบควบคุมป้อนกลับ

"""

# ╔═╡ c8503662-7a5a-4498-8703-9e845d6c520e


# ╔═╡ 9f9fb1b2-d834-45c8-9e01-e6d22388d516
md"""
***
#### P2 (20 คะแนน)
ต้องการออกแบบตัวควบคุมสำหรับพลานต์ HDM จากโจทย์ข้อ P1 โดยมีข้อกำหนดการออกแบบดังนี้

1. ค่าแตกต่างการตามรอยในช่วงสถานะนิ่งเป็นศูนย์

2. ผลตอบสนองต่อการรบกวนที่เอาต์พุต $d_o(s)$ ในย่านความถี่ต่ำกว่า $0.x$ rad/s ถูกลดทอนเหลือน้อยกว่า $0.0y$ 

3. จากแผนภาพโบเดจะเห็นว่ามีค่ายอดจากโหมดหน่วงน้อยของพลานต์อยู่ในย่านความถี่สูง (ที่ขนาดของ $P(s)$ จะเป็นยอดแหลม) พิจารณาค่ายอดแรกที่มีความถี่ต่ำกว่าอีกยอดหนึ่งเป็นเกณฑ์ ต้องการจำกัดแบนด์วิดท์ระบบป้อนกลับเพื่อลดผลจากโหมดหน่วงน้อยนี้ โดยแบนด์วิดท์ (ประมาณได้จากความถี่ที่ขนาดของ $L(j\omega)$ ตัดเส้น 0 dB )จะต้องน้อยกว่าความถี่ของค่ายอดแรกอย่างน้อยประมาณ 1 decade เช่นความถี่ของค่ายอดเท่ากับ 17 rad/s แบนด์วิดท์ของระบบจะต้องน้อยกว่า 1.7 rad/s  ดังนั้นจากโจทย์ข้อนี้จะเห็นว่าเงื่อนไขด้านความถี่สูงไม่ได้กำหนดเป็นอัตราการลดทอนของสัญญาณรบกวนจากการวัด แต่เป็นการจำกัดแบนด์วิดท์แทน

4. ระบบวงปิดเสถียร โดยมีค่าขอบเฟสอย่างน้อย 30 องศา

**หมายเหตุ :** 
* ความถี่ที่เกิดค่ายอดของโหมดหน่วงน้อย $\omega_d = \omega_n\sqrt{1-\zeta^2}$ จะเท่ากับค่าสัมบูรณ์ในแกนจินตภาพของโพลคู่ที่ทำให้เกิดโหมดหน่วงน้อยนั้น
* หากไม่รู้จะกำหนดขอบเขตสำหรับข้อ 3 อย่างไร อาจเริ่มต้นโดยให้ย่านความถี่สูงเริ่มจากความถี่ที่เกิดค่ายอดโหมดหน่วงน้อยยอดแรก และอัตราการลดทอนสัญญาณรบกวนน้อยๆ เช่น -1 dB ในการออกแบบนี้การล่วงล้ำขอบเขตในย่านความถี่สูงไม่ผิดข้อกำหนด แต่ที่สำคัญคือแบนด์วิดท์ต้องได้ตามที่โจทย์ต้องการ

เซลด้านล่างนี้คือฟังก์ชัน lshape() เพื่อช่วยในการออกแบบตัวควบคุม

"""

# ╔═╡ e5ae5456-901e-4912-bb15-52d0db183114
function lshape(C, P, lf, lfb, hf, hfb, pm)
	vecsize = 1000
	L = C*P
	#S = 1/(1+L)
	#T = L/(1+L)
	lf_log10 = log10(lf)
	hf_log10 = log10(hf)
	w_start = floor(lf_log10) - 1
	w_end = ceil(hf_log10) + 1
	w = exp10.(LinRange(w_start, w_end, vecsize))
	
	# frequency response of L
	Lmag, Lph, Lom = bode(L,w)
	Lmag_db = 20*log10.(Lmag)
	
	# create bound vectors
	lf_bnd = ifelse.(w.<lf,lfb, 0)
	hf_bnd = ifelse.(w.<hf,0, hfb)
	
	# check whether violation occurs
	lf_idxv = findall(x->x>lf,w)
	lf_idx = lf_idxv[1] # index of low-freq region
	hf_idxv = findall(x->x<hf,w)
	hf_idx = hf_idxv[end] # index of high-freq region
	lfmag = Lmag_db[1:lf_idx]
	hfmag = Lmag_db[hf_idx:end]
	if minimum(lfmag)<lfb
		lf_legend = "LF bound (violated!)"
	else
		lf_legend = "LF bound"
	end
	if maximum(hfmag)>hfb
		hf_legend = "HF bound (violated!)"
	else
		hf_legend = "HF bound"
	end
	# desired phase margin line
	pmvec = (pm -180)*ones(vecsize)
	
	# compute gain/phase margin
	wgm, g_margin, wpm, ph_margin = margin(L)
	ph_at_crossover = (ph_margin.-180)
	
	# loophaping plot
	lmag_db = dropdims(Lmag_db,dims = (2,3))
	
	#return w, lmag_db
	gr()
	lmagplot = plot(w,lmag_db,xaxis=:log, label="|L(s)|",legend=:bottomleft)
	plot!(w,lf_bnd,xaxis=:log, label=lf_legend)
	plot!(w,hf_bnd,xaxis=:log, label=hf_legend,xlabel="frequency (rad/s)",ylabel="magnitude (dB)",title="Bode plot of L(s) v.s. bounds")
	lph = dropdims(Lph, dims = (2,3))
	lphplot = plot(w,lph,xaxis=:log, label = "\$\\angle L(s)\$",legend=:bottomleft)
	plot!(w,pmvec,xaxis=:log, label = "lower bounds for PM")
	ph_margin_int = round(ph_margin[1])
	if ph_margin_int > pm
		ph_legend = "phase margin = $ph_margin_int deg."
	else
		ph_legend = "phase margin = $ph_margin_int deg. (violated!)"
	end
	plot!(wpm, ph_at_crossover, seriestype =:scatter, label=ph_legend)
	Lplot = plot(lmagplot,lphplot,layout=(2,1))

	
end	

# ╔═╡ 882001df-c383-4973-be72-f9579099e0b8
function plot_response(sys,u,t,ampbnd, plottitle)
	y, tout, x = lsim(sys, u, t,method=:zoh)
	t_idx = 150  # get rid of transient
	tout1 = tout[t_idx:end]
	y1 = y[t_idx:end]
	u1 = u[t_idx:end]
	
	pbnd = ampbnd*ones(size(tout1))
	nbnd = -ampbnd*ones(size(tout1))
	uplt = plot(tout1,u1, label = plottitle*" input",title=plottitle*" response")
	yplt=plot(tout1,y1, label = "plant output")
	plot!(tout1,pbnd, label = "positive bound")
	plot!(tout1, nbnd, label = "negative bound",xlabel="time (sec)",ylabel="y(t)")
	plot(uplt, yplt, layout=(2,1))
	
end

# ╔═╡ 35b1bf20-2f24-4ad3-8f63-46862499ab93
md"""
เกณฑ์การให้คะแนนสำหรับข้อ P2
1. แสดงตัวควบคุม $C(s)$ และผลตอบสนองความถี่ของ $L(s)$ ที่สอดคล้องตามข้อกำหนด  ในกรณีที่ไม่สามารถออกแบบให้ได้ตามข้อกำหนดโดยสมบูรณ์ ให้ทำให้ได้ใกล้เคียงที่สุดโดยมีการล่วงล้ำได้เฉพาะบริเวณขอบของย่านความถี่เท่านั้น ส่วนแบนด์วิดท์ของ $L(s)$ มีค่ามากที่สุดไม่เกิน 0.15 ของความถี่ที่เกิดโหมดหน่วงน้อยยอดแรก (ที่มีความถี่ต่ำกว่าอีกยอดหนึ่ง) (10 คะแนน)
2. ผลตอบสนองขั้นบันไดที่แสดงให้เห็นว่าระบบป้อนกลับเสถียรและค่าผิดพลาดในสถานะนิ่งเป็นศูนย์ (5 คะแนน)
3. ผลตอบสนองต่อการรบกวน $d_o(s)$ ได้ตามข้อกำหนด โดยยอมให้มีขนาดใหญ่กว่าขอบเขตที่กำหนดการลดทอนได้ไม่เกิน 5% (5 คะแนน)
"""

# ╔═╡ 7956388b-36c9-4f39-853d-1f915f335c9b


# ╔═╡ bfb3ec9c-c161-4e3a-afa3-40198afca01f


# ╔═╡ b1b203d5-8800-460d-a34a-36613f7d3f90


# ╔═╡ 9559fd7f-7f73-439d-a4a9-4650dfe815e4
md"""
***
#### P3 (15 คะแนน)

**P 3.1 (10 คะแนน)**

ต้องการสร้างแนววิถี 3 ส่วนย่อยโดยวิธี Cubic polynomial ตามข้อกำหนดดังนี้

**ส่วนย่อยที่ 1:**
เวลาเริ่มต้น 0 วินาที เวลาปลาย y วินาที
ตำแหน่งต้น -x เรเดียน ตำแหน่งปลาย 0 เรเดียน 
ความเร็วต้น 0 เรเดียน/วินาที ความเร็วปลาย z เรเดียน/วินาที

**ส่วนย่อยที่ 2:**
เวลาเริ่มต้น y วินาที เวลาปลาย y+z วินาที
ตำแหน่งต้น 0 เรเดียน ตำแหน่งปลาย -y เรเดียน 
ความเร็วต้น z เรเดียน/วินาที ความเร็วปลาย x เรเดียน/วินาที

**ส่วนย่อยที่ 3:**
เวลาเริ่มต้น y+z วินาที เวลาปลาย y+z+3 วินาที
ตำแหน่งต้น -y เรเดียน ตำแหน่งปลาย x+y เรเดียน 
ความเร็วต้น x เรเดียน/วินาที ความเร็วปลาย 0 เรเดียน/วินาที

พล็อตกราฟของตำแหน่ง ความเร็ว ความเร่ง เทียบกับเวลา (เหมือนใน HW1)

ฟังก์ชัน cpoly() และ polyval() นิยามได้ดังนี้

"""

# ╔═╡ f11a43ac-70a0-441e-bf67-4e62879b91cd
function polyval(P,X)
	Y = zeros(size(X))
	n = size(P,1)
	for i=1:n
		Y = Y + P[i]*X.^(n-i)
	end
	return Y
end

# ╔═╡ a5446e1a-1cfe-4677-a2d4-587b83af7e9c
function cpoly(q0,qf,t,qd0=0,qdf=0)
	tf = t[end]
	T = [0 0 0 1;tf^3 tf^2 tf 1; 0 0 1 0; 3tf^2 2tf 1 0]
	b = [q0 qf qd0 qdf]'
	coeffs = inv(T)*b
	coeffs_d = coeffs[1:3].*reverse(collect(1:3))
	coeffs_dd = coeffs_d[1:2].*reverse(collect(1:2))
	
	q = polyval(coeffs, t)
	q_d = polyval(coeffs_d,t)
	q_dd = polyval(coeffs_dd, t)
	return q, q_d, q_dd
end	

# ╔═╡ 2b8e40f0-ce78-4033-9b76-7ab8116d95a1


# ╔═╡ 5ed29d35-9a94-473e-8e47-287a661de27c
md"""
**P 3.2 (5 คะแนน)**

จากเวกเตอร์ข้อมูลที่ได้ในข้อ P 3.1 ต้องการทราบค่าของตำแหน่ง ความเร็ว และความเร่งที่เวลา $t_a = 0.4(y+z+3)$ วินาที โดยมีความแม่นยำเท่ากับจุดทศนิยม 2 ตำแหน่ง 
(ต้องค้นหาข้อมูล ณ เวลานั้นจากเวกเตอร์ ไม่ใช่การอ่านค่าจากกราฟด้วยตาเปล่า แสดงคำสั่งในการค้นหาด้วย)
"""

# ╔═╡ 831e8c6b-706d-40ce-8ecd-437e85ca9cee


# ╔═╡ 8004677f-105c-40ae-ae56-1de19fde0ce3
md"""
***
#### P 4 (25 คะแนน)

**P 4.1 (15 คะแนน)**

ออกแบบตัวควบคุมป้อนกลับสถานะสำหรับพลานต์ HDM ในข้อ P1 โดยทำตามขั้นตอนและตอบคำถามดังนี้
(ดูคำสั่งที่ใช้งานจาก Module 5 ของ Control Engineering Basics)

1. แปลงฟังก์ชันถ่ายโอนของพลานต์เป็นการบรรยายแบบปริภูมิสถานะ (2 คะแนน)
"""

# ╔═╡ d7a60daa-9667-4d34-976d-4238b6019123


# ╔═╡ ebde1b87-d376-4451-bbad-a7a77ad1ef00
md"""
2. ตรวจสอบว่าพลานต์เป็นแบบควบคุมได้หรือไม่ (2 คะแนน)
"""

# ╔═╡ e007a39a-2d3f-47b0-8540-0d4fced55600


# ╔═╡ f04b09b8-7e5a-47ab-b606-19631d8d4ecf
md"""
3. เลือกโพลระบบวงปิดที่เสถียรและมีสมรรถนะที่เหมาะสมกับหุ่นยนต์ (โจทย์ไม่ระบุข้อกำหนด สมรรถนะโดยทั่วไปคือไม่แกว่งมากหรือไม่ช้ามากเกินไป) และวางโพลระบบวงปิดตามตำแหน่งที่เลือก บรรยายระบบวงปิดในรูปสมการสถานะและตรวจสอบว่าตำแหน่งโพลได้ตามต้องการ พล็อตผลตอบสนองขั้นบันได (9 คะแนน)
"""

# ╔═╡ 0ac75960-8b8f-4ca6-9804-4ac7a72a2817


# ╔═╡ 729653e0-f22b-4a83-82a2-af401aadbccb


# ╔═╡ 3c566261-7c14-4a67-a8f8-6695d5254da0
md"""
4. ท่านคิดว่าตัวควบคุมป้อนกลับสถานะที่ออกแบบนี้ใช้งานได้จริงหรือไม่ อธิบายเหตุผลสนับสนุน (2 คะแนน)
"""

# ╔═╡ 53b79dd4-5460-4b85-acc7-023d6b04b4df


# ╔═╡ 409611c9-5dda-40f2-8b29-f07d7c56f03e
md"""
**P 4.2 (5 คะแนน)**

อธิบายว่าในการออกแบบตัวควบคุมแบบ loopshaping ทำไมเราถึงสามารถใช้ค่าขอบของเฟส (phase margin) เป็นตัวกำหนดความมีเสถียรภาพของระบบป้อนกลับได้
"""

# ╔═╡ cc286787-d2aa-4276-a025-c95fe547cb77


# ╔═╡ 6c68be2d-e0ee-436b-bae1-f43fe5179510
md"""
**P 4.3 (5 คะแนน)**
อธิบายว่าทำไมในพลานต์ข้อต่อหุ่นยนต์ขับเคลื่อนโดยดีซีมอเตอร์ ตัวควบคุม PD สามารถทำให้ค่าผิดพลาดในสถานะนิ่งเข้าสู่ศูนย์ได้ ในกรณีใดเราถึงต้องการใช้พจน์ปริพันธ์ (integrator) สำหรับควบคุมข้อต่อหุ่นยนต์
"""

# ╔═╡ 8bc7b403-11f6-4dc8-9347-091b20a1266b


# ╔═╡ db071572-a824-4f3d-aec6-74837afccbe1
md"""
***
#### P 5 (20 คะแนน) 
+Bonus (5 คะแนน)

รูปที่ 4 แสดงการซ้อนลูปตัวควบคุม PID (สำหรับข้อต่อหุ่นยนต์ที่ใช้ดีซีมอเตอร์ธรรมดา) เพื่อปรับปรุงสมรรถนะของระบบป้อนกลับ

!["Fig 4"](https://drive.google.com/uc?id=1uUQjWyLEXP1XmwUTk5KpU6Tcr84k61G7)

รูปที่ 4 การซ้อนลูปตัวควบคุม PID

ใช้พลานต์ HDM จากข้อ P1 โดยแยกส่วนพจน์ปริพันธ์ออกเพื่อใช้ในบล็อกของลูปภายนอก และที่เหลือเป็นบล็อกของลูปภายใน และใช้สมการ PID ทั้งสองลูปแบบพจน์อนุพันธ์เป็นตัวกรอง 

```math
C(s) = K_p + \frac{K_i}{s} + \frac{NK_d}{N/s+1}
```

เกณฑ์การให้คะแนนเป็นดังนี้
1. จำลองผลตอบสนองขั้นบันไดของระบบวงปิดในรูปที่ 4 (15 คะแนน)
2. พิจารณาว่าหากต้องการปรับพารามิเตอร์ของ PID ทั้งสองลูปให้ผลตอบสนองความถี่ของฟังก์ชันลูปได้ตามข้อกำหนดในข้อ P 2 จะต้องสร้างฟังก์ชันถ่ายโอน $C(s)$ และ $P(s)$ เพื่อใส่ในฟังก์ชัน lshape() อย่างไร (5 คะแนน) 

ทดลองปรับพารามิเตอร์ให้ได้สอดคล้องกับข้อกำหนด (ฺBonus +5 คะแนน)

"""

# ╔═╡ 9f4d3a69-671e-4abe-877a-723be81fb4c1


# ╔═╡ d91691af-69e9-4351-959a-48accbca25cb


# ╔═╡ e338cd11-4be3-4076-a9c3-8f8e0ca6de79
md"""
***
Last update : 18 สิงหาคม 2564
"""

# ╔═╡ 00000000-0000-0000-0000-000000000001
PLUTO_PROJECT_TOML_CONTENTS = """
[deps]
ControlSystems = "a6e380b2-a6ca-5380-bf3e-84a91bcd477e"
LinearAlgebra = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"
Plots = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
PlutoUI = "7f904dfe-b85e-4ff6-b463-dae2292396a8"

[compat]
ControlSystems = "~0.10.1"
Plots = "~1.20.0"
PlutoUI = "~0.7.9"
"""

# ╔═╡ 00000000-0000-0000-0000-000000000002
PLUTO_MANIFEST_TOML_CONTENTS = """
# This file is machine-generated - editing it directly is not advised

[[AbstractFFTs]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "485ee0867925449198280d4af84bdb46a2a404d0"
uuid = "621f4979-c628-5d54-868e-fcf4e3e8185c"
version = "1.0.1"

[[Adapt]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "84918055d15b3114ede17ac6a7182f68870c16f7"
uuid = "79e6a3ab-5dfb-504d-930d-738a2a938a0e"
version = "3.3.1"

[[ArgTools]]
uuid = "0dad84c5-d112-42e6-8d28-ef12dabb789f"

[[ArnoldiMethod]]
deps = ["LinearAlgebra", "Random", "StaticArrays"]
git-tree-sha1 = "f87e559f87a45bece9c9ed97458d3afe98b1ebb9"
uuid = "ec485272-7323-5ecc-a04f-4719b315124d"
version = "0.1.0"

[[ArrayInterface]]
deps = ["IfElse", "LinearAlgebra", "Requires", "SparseArrays", "Static"]
git-tree-sha1 = "2e004e61f76874d153979effc832ae53b56c20ee"
uuid = "4fba245c-0d91-5ea0-9b3e-6abc04ee57a9"
version = "3.1.22"

[[Artifacts]]
uuid = "56f22d72-fd6d-98f1-02f0-08ddc0907c33"

[[Base64]]
uuid = "2a0f44e3-6c83-55bd-87e4-b1978d98bd5f"

[[Bzip2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c3598e525718abcc440f69cc6d5f60dda0a1b61e"
uuid = "6e34b625-4abd-537c-b88f-471c36dfa7a0"
version = "1.0.6+5"

[[Cairo_jll]]
deps = ["Artifacts", "Bzip2_jll", "Fontconfig_jll", "FreeType2_jll", "Glib_jll", "JLLWrappers", "LZO_jll", "Libdl", "Pixman_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "e2f47f6d8337369411569fd45ae5753ca10394c6"
uuid = "83423d85-b0ee-5818-9007-b63ccbeb887a"
version = "1.16.0+6"

[[ChainRulesCore]]
deps = ["Compat", "LinearAlgebra", "SparseArrays"]
git-tree-sha1 = "f53ca8d41e4753c41cdafa6ec5f7ce914b34be54"
uuid = "d360d2e6-b24c-11e9-a2a3-2a2ae2dbcce4"
version = "0.10.13"

[[ColorSchemes]]
deps = ["ColorTypes", "Colors", "FixedPointNumbers", "Random", "StaticArrays"]
git-tree-sha1 = "ed268efe58512df8c7e224d2e170afd76dd6a417"
uuid = "35d6a980-a343-548e-a6ea-1d62b119f2f4"
version = "3.13.0"

[[ColorTypes]]
deps = ["FixedPointNumbers", "Random"]
git-tree-sha1 = "024fe24d83e4a5bf5fc80501a314ce0d1aa35597"
uuid = "3da002f7-5984-5a60-b8a6-cbb66c0b333f"
version = "0.11.0"

[[Colors]]
deps = ["ColorTypes", "FixedPointNumbers", "Reexport"]
git-tree-sha1 = "417b0ed7b8b838aa6ca0a87aadf1bb9eb111ce40"
uuid = "5ae59095-9a9b-59fe-a467-6f913c188581"
version = "0.12.8"

[[CommonSolve]]
git-tree-sha1 = "68a0743f578349ada8bc911a5cbd5a2ef6ed6d1f"
uuid = "38540f10-b2f7-11e9-35d8-d573e4eb0ff2"
version = "0.2.0"

[[CommonSubexpressions]]
deps = ["MacroTools", "Test"]
git-tree-sha1 = "7b8a93dba8af7e3b42fecabf646260105ac373f7"
uuid = "bbf7d656-a473-5ed7-a52c-81e309532950"
version = "0.3.0"

[[Compat]]
deps = ["Base64", "Dates", "DelimitedFiles", "Distributed", "InteractiveUtils", "LibGit2", "Libdl", "LinearAlgebra", "Markdown", "Mmap", "Pkg", "Printf", "REPL", "Random", "SHA", "Serialization", "SharedArrays", "Sockets", "SparseArrays", "Statistics", "Test", "UUIDs", "Unicode"]
git-tree-sha1 = "344f143fa0ec67e47917848795ab19c6a455f32c"
uuid = "34da2185-b29b-5c13-b0c7-acf172513d20"
version = "3.32.0"

[[CompilerSupportLibraries_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "e66e0078-7015-5450-92f7-15fbd957f2ae"

[[ConstructionBase]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "f74e9d5388b8620b4cee35d4c5a618dd4dc547f4"
uuid = "187b0558-2788-49d3-abe0-74a17ed4e7c9"
version = "1.3.0"

[[Contour]]
deps = ["StaticArrays"]
git-tree-sha1 = "9f02045d934dc030edad45944ea80dbd1f0ebea7"
uuid = "d38c429a-6771-53c6-b99e-75d170b6e991"
version = "0.5.7"

[[ControlSystems]]
deps = ["Colors", "DSP", "DelayDiffEq", "DiffEqCallbacks", "IterTools", "LaTeXStrings", "LinearAlgebra", "MacroTools", "OrdinaryDiffEq", "Plots", "Polynomials", "Printf", "Random", "SparseArrays"]
git-tree-sha1 = "0e58b8f9ba8c3fb404e963da244c282a9b71c6fa"
uuid = "a6e380b2-a6ca-5380-bf3e-84a91bcd477e"
version = "0.10.1"

[[DSP]]
deps = ["FFTW", "IterTools", "LinearAlgebra", "Polynomials", "Random", "Reexport", "SpecialFunctions", "Statistics"]
git-tree-sha1 = "2a63cb5fc0e8c1f0f139475ef94228c7441dc7d0"
uuid = "717857b8-e6f2-59f4-9121-6e50c889abd2"
version = "0.6.10"

[[DataAPI]]
git-tree-sha1 = "ee400abb2298bd13bfc3df1c412ed228061a2385"
uuid = "9a962f9c-6df0-11e9-0e5d-c546b8b5ee8a"
version = "1.7.0"

[[DataStructures]]
deps = ["Compat", "InteractiveUtils", "OrderedCollections"]
git-tree-sha1 = "4437b64df1e0adccc3e5d1adbc3ac741095e4677"
uuid = "864edb3b-99cc-5e75-8d2d-829cb0a9cfe8"
version = "0.18.9"

[[DataValueInterfaces]]
git-tree-sha1 = "bfc1187b79289637fa0ef6d4436ebdfe6905cbd6"
uuid = "e2d170a0-9d28-54be-80f0-106bbe20a464"
version = "1.0.0"

[[Dates]]
deps = ["Printf"]
uuid = "ade2ca70-3891-5945-98fb-dc099432e06a"

[[DelayDiffEq]]
deps = ["ArrayInterface", "DataStructures", "DiffEqBase", "LinearAlgebra", "Logging", "NonlinearSolve", "OrdinaryDiffEq", "Printf", "RecursiveArrayTools", "Reexport", "UnPack"]
git-tree-sha1 = "6eba402e968317b834c28cd47499dd1b572dd093"
uuid = "bcd4f6db-9728-5f36-b5f7-82caef46ccdb"
version = "5.31.1"

[[DelimitedFiles]]
deps = ["Mmap"]
uuid = "8bb1440f-4735-579b-a4ab-409b98df4dab"

[[DiffEqBase]]
deps = ["ArrayInterface", "ChainRulesCore", "DataStructures", "Distributions", "DocStringExtensions", "FastBroadcast", "ForwardDiff", "FunctionWrappers", "IterativeSolvers", "LabelledArrays", "LinearAlgebra", "Logging", "MuladdMacro", "NonlinearSolve", "Parameters", "PreallocationTools", "Printf", "RecursiveArrayTools", "RecursiveFactorization", "Reexport", "Requires", "SciMLBase", "Setfield", "SparseArrays", "StaticArrays", "Statistics", "SuiteSparse", "ZygoteRules"]
git-tree-sha1 = "ad27076f769f812e64310fcaf03658b68259cb85"
uuid = "2b5f629d-d688-5b77-993f-72d75c75574e"
version = "6.71.0"

[[DiffEqCallbacks]]
deps = ["DataStructures", "DiffEqBase", "ForwardDiff", "LinearAlgebra", "NLsolve", "OrdinaryDiffEq", "RecipesBase", "RecursiveArrayTools", "StaticArrays"]
git-tree-sha1 = "0972ca167952dc426b5438fc188b846b7a66a1f3"
uuid = "459566f4-90b8-5000-8ac3-15dfb0a30def"
version = "2.16.1"

[[DiffResults]]
deps = ["StaticArrays"]
git-tree-sha1 = "c18e98cba888c6c25d1c3b048e4b3380ca956805"
uuid = "163ba53b-c6d8-5494-b064-1a9d43ac40c5"
version = "1.0.3"

[[DiffRules]]
deps = ["NaNMath", "Random", "SpecialFunctions"]
git-tree-sha1 = "85d2d9e2524da988bffaf2a381864e20d2dae08d"
uuid = "b552c78f-8df3-52c6-915a-8e097449b14b"
version = "1.2.1"

[[Distances]]
deps = ["LinearAlgebra", "Statistics", "StatsAPI"]
git-tree-sha1 = "abe4ad222b26af3337262b8afb28fab8d215e9f8"
uuid = "b4f34e82-e78d-54a5-968a-f98e89d6e8f7"
version = "0.10.3"

[[Distributed]]
deps = ["Random", "Serialization", "Sockets"]
uuid = "8ba89e20-285c-5b6f-9357-94700520ee1b"

[[Distributions]]
deps = ["FillArrays", "LinearAlgebra", "PDMats", "Printf", "QuadGK", "Random", "SparseArrays", "SpecialFunctions", "Statistics", "StatsBase", "StatsFuns"]
git-tree-sha1 = "3889f646423ce91dd1055a76317e9a1d3a23fff1"
uuid = "31c24e10-a181-5473-b8eb-7969acd0382f"
version = "0.25.11"

[[DocStringExtensions]]
deps = ["LibGit2"]
git-tree-sha1 = "a32185f5428d3986f47c2ab78b1f216d5e6cc96f"
uuid = "ffbed154-4ef7-542d-bbb7-c09d3a79fcae"
version = "0.8.5"

[[Downloads]]
deps = ["ArgTools", "LibCURL", "NetworkOptions"]
uuid = "f43a241f-c20a-4ad4-852c-f6b1247861c6"

[[EarCut_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "92d8f9f208637e8d2d28c664051a00569c01493d"
uuid = "5ae413db-bbd1-5e63-b57d-d24a61df00f5"
version = "2.1.5+1"

[[Expat_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b3bfd02e98aedfa5cf885665493c5598c350cd2f"
uuid = "2e619515-83b5-522b-bb60-26c02a35a201"
version = "2.2.10+0"

[[ExponentialUtilities]]
deps = ["ArrayInterface", "LinearAlgebra", "Printf", "Requires", "SparseArrays"]
git-tree-sha1 = "ad435656c49da7615152b856c0f9abe75b0b5dc9"
uuid = "d4d017d3-3776-5f7e-afef-a10c40355c18"
version = "1.8.4"

[[ExprTools]]
git-tree-sha1 = "b7e3d17636b348f005f11040025ae8c6f645fe92"
uuid = "e2ba6199-217a-4e67-a87a-7c52f15ade04"
version = "0.1.6"

[[FFMPEG]]
deps = ["FFMPEG_jll"]
git-tree-sha1 = "b57e3acbe22f8484b4b5ff66a7499717fe1a9cc8"
uuid = "c87230d0-a227-11e9-1b43-d7ebe4e7570a"
version = "0.4.1"

[[FFMPEG_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "LAME_jll", "LibVPX_jll", "Libdl", "Ogg_jll", "OpenSSL_jll", "Opus_jll", "Pkg", "Zlib_jll", "libass_jll", "libfdk_aac_jll", "libvorbis_jll", "x264_jll", "x265_jll"]
git-tree-sha1 = "3cc57ad0a213808473eafef4845a74766242e05f"
uuid = "b22a6f82-2f65-5046-a5b2-351ab43fb4e5"
version = "4.3.1+4"

[[FFTW]]
deps = ["AbstractFFTs", "FFTW_jll", "LinearAlgebra", "MKL_jll", "Preferences", "Reexport"]
git-tree-sha1 = "f985af3b9f4e278b1d24434cbb546d6092fca661"
uuid = "7a1cc6ca-52ef-59f5-83cd-3a7055c09341"
version = "1.4.3"

[[FFTW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3676abafff7e4ff07bbd2c42b3d8201f31653dcc"
uuid = "f5851436-0d7a-5f13-b9de-f02708fd171a"
version = "3.3.9+8"

[[FastBroadcast]]
deps = ["LinearAlgebra"]
git-tree-sha1 = "26be48918640ce002f5833e8fc537b2ba7ed0234"
uuid = "7034ab61-46d4-4ed7-9d0f-46aef9175898"
version = "0.1.8"

[[FastClosures]]
git-tree-sha1 = "acebe244d53ee1b461970f8910c235b259e772ef"
uuid = "9aa1b823-49e4-5ca5-8b0f-3971ec8bab6a"
version = "0.3.2"

[[FillArrays]]
deps = ["LinearAlgebra", "Random", "SparseArrays", "Statistics"]
git-tree-sha1 = "8c8eac2af06ce35973c3eadb4ab3243076a408e7"
uuid = "1a297f60-69ca-5386-bcde-b61e274b549b"
version = "0.12.1"

[[FiniteDiff]]
deps = ["ArrayInterface", "LinearAlgebra", "Requires", "SparseArrays", "StaticArrays"]
git-tree-sha1 = "8b3c09b56acaf3c0e581c66638b85c8650ee9dca"
uuid = "6a86dc24-6348-571c-b903-95158fe2bd41"
version = "2.8.1"

[[FixedPointNumbers]]
deps = ["Statistics"]
git-tree-sha1 = "335bfdceacc84c5cdf16aadc768aa5ddfc5383cc"
uuid = "53c48c17-4a7d-5ca2-90c5-79b7896eea93"
version = "0.8.4"

[[Fontconfig_jll]]
deps = ["Artifacts", "Bzip2_jll", "Expat_jll", "FreeType2_jll", "JLLWrappers", "Libdl", "Libuuid_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "35895cf184ceaab11fd778b4590144034a167a2f"
uuid = "a3f928ae-7b40-5064-980b-68af3947d34b"
version = "2.13.1+14"

[[Formatting]]
deps = ["Printf"]
git-tree-sha1 = "8339d61043228fdd3eb658d86c926cb282ae72a8"
uuid = "59287772-0a20-5a39-b81b-1366585eb4c0"
version = "0.4.2"

[[ForwardDiff]]
deps = ["CommonSubexpressions", "DiffResults", "DiffRules", "LinearAlgebra", "NaNMath", "Printf", "Random", "SpecialFunctions", "StaticArrays"]
git-tree-sha1 = "b5e930ac60b613ef3406da6d4f42c35d8dc51419"
uuid = "f6369f11-7733-5829-9624-2563aa707210"
version = "0.10.19"

[[FreeType2_jll]]
deps = ["Artifacts", "Bzip2_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "cbd58c9deb1d304f5a245a0b7eb841a2560cfec6"
uuid = "d7e528f0-a631-5988-bf34-fe36492bcfd7"
version = "2.10.1+5"

[[FriBidi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "aa31987c2ba8704e23c6c8ba8a4f769d5d7e4f91"
uuid = "559328eb-81f9-559d-9380-de523a88c83c"
version = "1.0.10+0"

[[FunctionWrappers]]
git-tree-sha1 = "241552bc2209f0fa068b6415b1942cc0aa486bcc"
uuid = "069b7b12-0de2-55c6-9aab-29f3d0a68a2e"
version = "1.1.2"

[[Future]]
deps = ["Random"]
uuid = "9fa8497b-333b-5362-9e8d-4d0656e87820"

[[GLFW_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libglvnd_jll", "Pkg", "Xorg_libXcursor_jll", "Xorg_libXi_jll", "Xorg_libXinerama_jll", "Xorg_libXrandr_jll"]
git-tree-sha1 = "dba1e8614e98949abfa60480b13653813d8f0157"
uuid = "0656b61e-2033-5cc2-a64a-77c0f6c09b89"
version = "3.3.5+0"

[[GR]]
deps = ["Base64", "DelimitedFiles", "GR_jll", "HTTP", "JSON", "Libdl", "LinearAlgebra", "Pkg", "Printf", "Random", "Serialization", "Sockets", "Test", "UUIDs"]
git-tree-sha1 = "182da592436e287758ded5be6e32c406de3a2e47"
uuid = "28b8d3ca-fb5f-59d9-8090-bfdbd6d07a71"
version = "0.58.1"

[[GR_jll]]
deps = ["Artifacts", "Bzip2_jll", "Cairo_jll", "FFMPEG_jll", "Fontconfig_jll", "GLFW_jll", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Libtiff_jll", "Pixman_jll", "Pkg", "Qt5Base_jll", "Zlib_jll", "libpng_jll"]
git-tree-sha1 = "d59e8320c2747553788e4fc42231489cc602fa50"
uuid = "d2c73de3-f751-5644-a686-071e5b155ba9"
version = "0.58.1+0"

[[GeometryBasics]]
deps = ["EarCut_jll", "IterTools", "LinearAlgebra", "StaticArrays", "StructArrays", "Tables"]
git-tree-sha1 = "58bcdf5ebc057b085e58d95c138725628dd7453c"
uuid = "5c1252a2-5f33-56bf-86c9-59e7332b4326"
version = "0.4.1"

[[Gettext_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "9b02998aba7bf074d14de89f9d37ca24a1a0b046"
uuid = "78b55507-aeef-58d4-861c-77aaff3498b1"
version = "0.21.0+0"

[[Glib_jll]]
deps = ["Artifacts", "Gettext_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Libiconv_jll", "Libmount_jll", "PCRE_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "7bf67e9a481712b3dbe9cb3dac852dc4b1162e02"
uuid = "7746bdde-850d-59dc-9ae8-88ece973131d"
version = "2.68.3+0"

[[Grisu]]
git-tree-sha1 = "53bb909d1151e57e2484c3d1b53e19552b887fb2"
uuid = "42e2da0e-8278-4e71-bc24-59509adca0fe"
version = "1.0.2"

[[HTTP]]
deps = ["Base64", "Dates", "IniFile", "Logging", "MbedTLS", "NetworkOptions", "Sockets", "URIs"]
git-tree-sha1 = "44e3b40da000eab4ccb1aecdc4801c040026aeb5"
uuid = "cd3eb016-35fb-5094-929b-558a96fad6f3"
version = "0.9.13"

[[Hwloc]]
deps = ["Hwloc_jll"]
git-tree-sha1 = "92d99146066c5c6888d5a3abc871e6a214388b91"
uuid = "0e44f5e4-bd66-52a0-8798-143a42290a1d"
version = "2.0.0"

[[Hwloc_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "3395d4d4aeb3c9d31f5929d32760d8baeee88aaf"
uuid = "e33a78d0-f292-5ffc-b300-72abe9b543c8"
version = "2.5.0+0"

[[IfElse]]
git-tree-sha1 = "28e837ff3e7a6c3cdb252ce49fb412c8eb3caeef"
uuid = "615f187c-cbe4-4ef1-ba3b-2fcf58d6d173"
version = "0.1.0"

[[Inflate]]
git-tree-sha1 = "f5fc07d4e706b84f72d54eedcc1c13d92fb0871c"
uuid = "d25df0c9-e2be-5dd7-82c8-3ad0b3e990b9"
version = "0.1.2"

[[IniFile]]
deps = ["Test"]
git-tree-sha1 = "098e4d2c533924c921f9f9847274f2ad89e018b8"
uuid = "83e8ac13-25f8-5344-8a64-a9f2b223428f"
version = "0.5.0"

[[IntelOpenMP_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d979e54b71da82f3a65b62553da4fc3d18c9004c"
uuid = "1d5cc7b8-4909-519e-a0f8-d0f5ad9712d0"
version = "2018.0.3+2"

[[InteractiveUtils]]
deps = ["Markdown"]
uuid = "b77e0a4c-d291-57a0-90e8-8db25a27a240"

[[Intervals]]
deps = ["Dates", "Printf", "RecipesBase", "Serialization", "TimeZones"]
git-tree-sha1 = "323a38ed1952d30586d0fe03412cde9399d3618b"
uuid = "d8418881-c3e1-53bb-8760-2df7ec849ed5"
version = "1.5.0"

[[IterTools]]
git-tree-sha1 = "05110a2ab1fc5f932622ffea2a003221f4782c18"
uuid = "c8e1da08-722c-5040-9ed9-7db0dc04731e"
version = "1.3.0"

[[IterativeSolvers]]
deps = ["LinearAlgebra", "Printf", "Random", "RecipesBase", "SparseArrays"]
git-tree-sha1 = "1a8c6237e78b714e901e406c096fc8a65528af7d"
uuid = "42fd0dbc-a981-5370-80f2-aaf504508153"
version = "0.9.1"

[[IteratorInterfaceExtensions]]
git-tree-sha1 = "a3f24677c21f5bbe9d2a714f95dcd58337fb2856"
uuid = "82899510-4779-5014-852e-03e436cf321d"
version = "1.0.0"

[[JLLWrappers]]
deps = ["Preferences"]
git-tree-sha1 = "642a199af8b68253517b80bd3bfd17eb4e84df6e"
uuid = "692b3bcd-3c85-4b1f-b108-f13ce0eb3210"
version = "1.3.0"

[[JSON]]
deps = ["Dates", "Mmap", "Parsers", "Unicode"]
git-tree-sha1 = "81690084b6198a2e1da36fcfda16eeca9f9f24e4"
uuid = "682c06a0-de6a-54ab-a142-c8b1cf79cde6"
version = "0.21.1"

[[JpegTurbo_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d735490ac75c5cb9f1b00d8b5509c11984dc6943"
uuid = "aacddb02-875f-59d6-b918-886e6ef4fbf8"
version = "2.1.0+0"

[[LAME_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "f6250b16881adf048549549fba48b1161acdac8c"
uuid = "c1c5ebd0-6772-5130-a774-d5fcae4a789d"
version = "3.100.1+0"

[[LZO_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "e5b909bcf985c5e2605737d2ce278ed791b89be6"
uuid = "dd4b983a-f0e5-5f8d-a1b7-129d4a5fb1ac"
version = "2.10.1+0"

[[LaTeXStrings]]
git-tree-sha1 = "c7f1c695e06c01b95a67f0cd1d34994f3e7db104"
uuid = "b964fa9f-0449-5b57-a5c2-d3ea65f4040f"
version = "1.2.1"

[[LabelledArrays]]
deps = ["ArrayInterface", "LinearAlgebra", "MacroTools", "StaticArrays"]
git-tree-sha1 = "41fc666d11a346e55f7fb70318e7078bfc0ae7cb"
uuid = "2ee39098-c373-598a-b85f-a56591580800"
version = "1.6.3"

[[Latexify]]
deps = ["Formatting", "InteractiveUtils", "LaTeXStrings", "MacroTools", "Markdown", "Printf", "Requires"]
git-tree-sha1 = "a4b12a1bd2ebade87891ab7e36fdbce582301a92"
uuid = "23fbe1c1-3f47-55db-b15f-69d7ec21a316"
version = "0.15.6"

[[LazyArtifacts]]
deps = ["Artifacts", "Pkg"]
uuid = "4af54fe1-eca0-43a8-85a7-787d91b784e3"

[[LibCURL]]
deps = ["LibCURL_jll", "MozillaCACerts_jll"]
uuid = "b27032c2-a3e7-50c8-80cd-2d36dbcbfd21"

[[LibCURL_jll]]
deps = ["Artifacts", "LibSSH2_jll", "Libdl", "MbedTLS_jll", "Zlib_jll", "nghttp2_jll"]
uuid = "deac9b47-8bc7-5906-a0fe-35ac56dc84c0"

[[LibGit2]]
deps = ["Base64", "NetworkOptions", "Printf", "SHA"]
uuid = "76f85450-5226-5b5a-8eaa-529ad045b433"

[[LibSSH2_jll]]
deps = ["Artifacts", "Libdl", "MbedTLS_jll"]
uuid = "29816b5a-b9ab-546f-933c-edad1886dfa8"

[[LibVPX_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "12ee7e23fa4d18361e7c2cde8f8337d4c3101bc7"
uuid = "dd192d2f-8180-539f-9fb4-cc70b1dcf69a"
version = "1.10.0+0"

[[Libdl]]
uuid = "8f399da3-3557-5675-b5ff-fb832c97cbdb"

[[Libffi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "761a393aeccd6aa92ec3515e428c26bf99575b3b"
uuid = "e9f186c6-92d2-5b65-8a66-fee21dc1b490"
version = "3.2.2+0"

[[Libgcrypt_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgpg_error_jll", "Pkg"]
git-tree-sha1 = "64613c82a59c120435c067c2b809fc61cf5166ae"
uuid = "d4300ac3-e22c-5743-9152-c294e39db1e4"
version = "1.8.7+0"

[[Libglvnd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll", "Xorg_libXext_jll"]
git-tree-sha1 = "7739f837d6447403596a75d19ed01fd08d6f56bf"
uuid = "7e76a0d4-f3c7-5321-8279-8d96eeed0f29"
version = "1.3.0+3"

[[Libgpg_error_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "c333716e46366857753e273ce6a69ee0945a6db9"
uuid = "7add5ba3-2f88-524e-9cd5-f83b8a55f7b8"
version = "1.42.0+0"

[[Libiconv_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "42b62845d70a619f063a7da093d995ec8e15e778"
uuid = "94ce4f54-9a6c-5748-9c1c-f9c7231a4531"
version = "1.16.1+1"

[[Libmount_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "9c30530bf0effd46e15e0fdcf2b8636e78cbbd73"
uuid = "4b2f31a3-9ecc-558c-b454-b3730dcb73e9"
version = "2.35.0+0"

[[Libtiff_jll]]
deps = ["Artifacts", "JLLWrappers", "JpegTurbo_jll", "Libdl", "Pkg", "Zlib_jll", "Zstd_jll"]
git-tree-sha1 = "340e257aada13f95f98ee352d316c3bed37c8ab9"
uuid = "89763e89-9b03-5906-acba-b20f662cd828"
version = "4.3.0+0"

[[Libuuid_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7f3efec06033682db852f8b3bc3c1d2b0a0ab066"
uuid = "38a345b3-de98-5d2b-a5d3-14cd9215e700"
version = "2.36.0+0"

[[LightGraphs]]
deps = ["ArnoldiMethod", "DataStructures", "Distributed", "Inflate", "LinearAlgebra", "Random", "SharedArrays", "SimpleTraits", "SparseArrays", "Statistics"]
git-tree-sha1 = "432428df5f360964040ed60418dd5601ecd240b6"
uuid = "093fc24a-ae57-5d10-9952-331d41423f4d"
version = "1.3.5"

[[LineSearches]]
deps = ["LinearAlgebra", "NLSolversBase", "NaNMath", "Parameters", "Printf"]
git-tree-sha1 = "f27132e551e959b3667d8c93eae90973225032dd"
uuid = "d3d80556-e9d4-5f37-9878-2ab0fcc64255"
version = "7.1.1"

[[LinearAlgebra]]
deps = ["Libdl"]
uuid = "37e2e46d-f89d-539d-b4ee-838fcccc9c8e"

[[LogExpFunctions]]
deps = ["DocStringExtensions", "LinearAlgebra"]
git-tree-sha1 = "7bd5f6565d80b6bf753738d2bc40a5dfea072070"
uuid = "2ab3a3ac-af41-5b50-aa03-7779005ae688"
version = "0.2.5"

[[Logging]]
uuid = "56ddb016-857b-54e1-b83d-db4d58db5568"

[[LoopVectorization]]
deps = ["ArrayInterface", "DocStringExtensions", "IfElse", "LinearAlgebra", "OffsetArrays", "Polyester", "Requires", "SLEEFPirates", "Static", "StrideArraysCore", "ThreadingUtilities", "UnPack", "VectorizationBase"]
git-tree-sha1 = "c04222b22ac72faa19a396c14dc1cc1506434cd8"
uuid = "bdcacae8-1622-11e9-2a5c-532679323890"
version = "0.12.62"

[[MKL_jll]]
deps = ["Artifacts", "IntelOpenMP_jll", "JLLWrappers", "LazyArtifacts", "Libdl", "Pkg"]
git-tree-sha1 = "c253236b0ed414624b083e6b72bfe891fbd2c7af"
uuid = "856f044c-d86e-5d09-b602-aeab76dc8ba7"
version = "2021.1.1+1"

[[MacroTools]]
deps = ["Markdown", "Random"]
git-tree-sha1 = "0fb723cd8c45858c22169b2e42269e53271a6df7"
uuid = "1914dd2f-81c6-5fcd-8719-6d5c9610ff09"
version = "0.5.7"

[[ManualMemory]]
git-tree-sha1 = "71c64ebe61a12bad0911f8fc4f91df8a448c604c"
uuid = "d125e4d3-2237-4719-b19c-fa641b8a4667"
version = "0.1.4"

[[Markdown]]
deps = ["Base64"]
uuid = "d6f4376e-aef5-505a-96c1-9c027394607a"

[[MbedTLS]]
deps = ["Dates", "MbedTLS_jll", "Random", "Sockets"]
git-tree-sha1 = "1c38e51c3d08ef2278062ebceade0e46cefc96fe"
uuid = "739be429-bea8-5141-9913-cc70e7f3736d"
version = "1.0.3"

[[MbedTLS_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "c8ffd9c3-330d-5841-b78e-0817d7145fa1"

[[Measures]]
git-tree-sha1 = "e498ddeee6f9fdb4551ce855a46f54dbd900245f"
uuid = "442fdcdd-2543-5da2-b0f3-8c86c306513e"
version = "0.3.1"

[[Missings]]
deps = ["DataAPI"]
git-tree-sha1 = "4ea90bd5d3985ae1f9a908bd4500ae88921c5ce7"
uuid = "e1d29d7a-bbdc-5cf2-9ac0-f12de2c33e28"
version = "1.0.0"

[[Mmap]]
uuid = "a63ad114-7e13-5084-954f-fe012c677804"

[[Mocking]]
deps = ["ExprTools"]
git-tree-sha1 = "748f6e1e4de814b101911e64cc12d83a6af66782"
uuid = "78c3b35d-d492-501b-9361-3d52fe80e533"
version = "0.7.2"

[[MozillaCACerts_jll]]
uuid = "14a3606d-f60d-562e-9121-12d972cd8159"

[[MuladdMacro]]
git-tree-sha1 = "c6190f9a7fc5d9d5915ab29f2134421b12d24a68"
uuid = "46d2c3a1-f734-5fdb-9937-b9b9aeba4221"
version = "0.2.2"

[[NLSolversBase]]
deps = ["DiffResults", "Distributed", "FiniteDiff", "ForwardDiff"]
git-tree-sha1 = "144bab5b1443545bc4e791536c9f1eacb4eed06a"
uuid = "d41bc354-129a-5804-8e4c-c37616107c6c"
version = "7.8.1"

[[NLsolve]]
deps = ["Distances", "LineSearches", "LinearAlgebra", "NLSolversBase", "Printf", "Reexport"]
git-tree-sha1 = "019f12e9a1a7880459d0173c182e6a99365d7ac1"
uuid = "2774e3e8-f4cf-5e23-947b-6d7e65073b56"
version = "4.5.1"

[[NaNMath]]
git-tree-sha1 = "bfe47e760d60b82b66b61d2d44128b62e3a369fb"
uuid = "77ba4419-2d1f-58cd-9bb1-8ffee604a2e3"
version = "0.3.5"

[[NetworkOptions]]
uuid = "ca575930-c2e3-43a9-ace4-1e988b2c1908"

[[NonlinearSolve]]
deps = ["ArrayInterface", "FiniteDiff", "ForwardDiff", "IterativeSolvers", "LinearAlgebra", "RecursiveArrayTools", "RecursiveFactorization", "Reexport", "SciMLBase", "Setfield", "StaticArrays", "UnPack"]
git-tree-sha1 = "ef18e47df4f3917af35be5e5d7f5d97e8a83b0ec"
uuid = "8913a72c-1f9b-4ce2-8d82-65094dcecaec"
version = "0.3.8"

[[OffsetArrays]]
deps = ["Adapt"]
git-tree-sha1 = "5cc97a6f806ba1b36bac7078b866d4297ae8c463"
uuid = "6fe1bfb0-de20-5000-8ca7-80f57d26f881"
version = "1.10.4"

[[Ogg_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7937eda4681660b4d6aeeecc2f7e1c81c8ee4e2f"
uuid = "e7412a2a-1a6e-54c0-be00-318e2571c051"
version = "1.3.5+0"

[[OpenSSL_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "15003dcb7d8db3c6c857fda14891a539a8f2705a"
uuid = "458c3c95-2e84-50aa-8efc-19380b2a3a95"
version = "1.1.10+0"

[[OpenSpecFun_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "13652491f6856acfd2db29360e1bbcd4565d04f1"
uuid = "efe28fd5-8261-553b-a9e1-b2916fc3738e"
version = "0.5.5+0"

[[Opus_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "51a08fb14ec28da2ec7a927c4337e4332c2a4720"
uuid = "91d4177d-7536-5919-b921-800302f37372"
version = "1.3.2+0"

[[OrderedCollections]]
git-tree-sha1 = "85f8e6578bf1f9ee0d11e7bb1b1456435479d47c"
uuid = "bac558e1-5e72-5ebc-8fee-abe8a469f55d"
version = "1.4.1"

[[OrdinaryDiffEq]]
deps = ["Adapt", "ArrayInterface", "DataStructures", "DiffEqBase", "DocStringExtensions", "ExponentialUtilities", "FastClosures", "FiniteDiff", "ForwardDiff", "LinearAlgebra", "Logging", "MacroTools", "MuladdMacro", "NLsolve", "Polyester", "RecursiveArrayTools", "Reexport", "SparseArrays", "SparseDiffTools", "StaticArrays", "UnPack"]
git-tree-sha1 = "73d43522c1c756c739ef70a51941b0b028682994"
uuid = "1dea7af3-3e70-54e6-95c3-0bf5283fa5ed"
version = "5.60.2"

[[PCRE_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b2a7af664e098055a7529ad1a900ded962bca488"
uuid = "2f80f16e-611a-54ab-bc61-aa92de5b98fc"
version = "8.44.0+0"

[[PDMats]]
deps = ["LinearAlgebra", "SparseArrays", "SuiteSparse"]
git-tree-sha1 = "4dd403333bcf0909341cfe57ec115152f937d7d8"
uuid = "90014a1f-27ba-587c-ab20-58faa44d9150"
version = "0.11.1"

[[Parameters]]
deps = ["OrderedCollections", "UnPack"]
git-tree-sha1 = "2276ac65f1e236e0a6ea70baff3f62ad4c625345"
uuid = "d96e819e-fc66-5662-9728-84c9c7592b0a"
version = "0.12.2"

[[Parsers]]
deps = ["Dates"]
git-tree-sha1 = "bfd7d8c7fd87f04543810d9cbd3995972236ba1b"
uuid = "69de0a69-1ddd-5017-9359-2bf0b02dc9f0"
version = "1.1.2"

[[Pixman_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "b4f5d02549a10e20780a24fce72bea96b6329e29"
uuid = "30392449-352a-5448-841d-b1acce4e97dc"
version = "0.40.1+0"

[[Pkg]]
deps = ["Artifacts", "Dates", "Downloads", "LibGit2", "Libdl", "Logging", "Markdown", "Printf", "REPL", "Random", "SHA", "Serialization", "TOML", "Tar", "UUIDs", "p7zip_jll"]
uuid = "44cfe95a-1eb2-52ea-b672-e2afdf69b78f"

[[PlotThemes]]
deps = ["PlotUtils", "Requires", "Statistics"]
git-tree-sha1 = "a3a964ce9dc7898193536002a6dd892b1b5a6f1d"
uuid = "ccf2f8ad-2431-5c83-bf29-c5338b663b6a"
version = "2.0.1"

[[PlotUtils]]
deps = ["ColorSchemes", "Colors", "Dates", "Printf", "Random", "Reexport", "Statistics"]
git-tree-sha1 = "501c20a63a34ac1d015d5304da0e645f42d91c9f"
uuid = "995b91a9-d308-5afd-9ec6-746e21dbc043"
version = "1.0.11"

[[Plots]]
deps = ["Base64", "Contour", "Dates", "FFMPEG", "FixedPointNumbers", "GR", "GeometryBasics", "JSON", "Latexify", "LinearAlgebra", "Measures", "NaNMath", "PlotThemes", "PlotUtils", "Printf", "REPL", "Random", "RecipesBase", "RecipesPipeline", "Reexport", "Requires", "Scratch", "Showoff", "SparseArrays", "Statistics", "StatsBase", "UUIDs"]
git-tree-sha1 = "e39bea10478c6aff5495ab522517fae5134b40e3"
uuid = "91a5bcdd-55d7-5caf-9e0b-520d859cae80"
version = "1.20.0"

[[PlutoUI]]
deps = ["Base64", "Dates", "InteractiveUtils", "JSON", "Logging", "Markdown", "Random", "Reexport", "Suppressor"]
git-tree-sha1 = "44e225d5837e2a2345e69a1d1e01ac2443ff9fcb"
uuid = "7f904dfe-b85e-4ff6-b463-dae2292396a8"
version = "0.7.9"

[[Polyester]]
deps = ["ArrayInterface", "IfElse", "ManualMemory", "Requires", "Static", "StrideArraysCore", "ThreadingUtilities", "VectorizationBase"]
git-tree-sha1 = "81c59c2bed8c8a76843411ddb33e548bf2bcc9b2"
uuid = "f517fe37-dbe3-4b94-8317-1923a5111588"
version = "0.3.8"

[[Polynomials]]
deps = ["Intervals", "LinearAlgebra", "OffsetArrays", "RecipesBase"]
git-tree-sha1 = "0b15f3597b01eb76764dd03c3c23d6679a3c32c8"
uuid = "f27b6e38-b328-58d1-80ce-0feddd5e7a45"
version = "1.2.1"

[[PreallocationTools]]
deps = ["ArrayInterface", "ForwardDiff", "LabelledArrays"]
git-tree-sha1 = "9e917b108c4aaf47e8606542325bd2ccbcac7ca4"
uuid = "d236fae5-4411-538c-8e31-a6e3d9e00b46"
version = "0.1.0"

[[Preferences]]
deps = ["TOML"]
git-tree-sha1 = "00cfd92944ca9c760982747e9a1d0d5d86ab1e5a"
uuid = "21216c6a-2e73-6563-6e65-726566657250"
version = "1.2.2"

[[Printf]]
deps = ["Unicode"]
uuid = "de0858da-6303-5e67-8744-51eddeeeb8d7"

[[Qt5Base_jll]]
deps = ["Artifacts", "CompilerSupportLibraries_jll", "Fontconfig_jll", "Glib_jll", "JLLWrappers", "Libdl", "Libglvnd_jll", "OpenSSL_jll", "Pkg", "Xorg_libXext_jll", "Xorg_libxcb_jll", "Xorg_xcb_util_image_jll", "Xorg_xcb_util_keysyms_jll", "Xorg_xcb_util_renderutil_jll", "Xorg_xcb_util_wm_jll", "Zlib_jll", "xkbcommon_jll"]
git-tree-sha1 = "ad368663a5e20dbb8d6dc2fddeefe4dae0781ae8"
uuid = "ea2cea3b-5b76-57ae-a6ef-0a8af62496e1"
version = "5.15.3+0"

[[QuadGK]]
deps = ["DataStructures", "LinearAlgebra"]
git-tree-sha1 = "12fbe86da16df6679be7521dfb39fbc861e1dc7b"
uuid = "1fd47b50-473d-5c70-9696-f719f8f3bcdc"
version = "2.4.1"

[[REPL]]
deps = ["InteractiveUtils", "Markdown", "Sockets", "Unicode"]
uuid = "3fa0cd96-eef1-5676-8a61-b3b8758bbffb"

[[Random]]
deps = ["Serialization"]
uuid = "9a3f8284-a2c9-5f02-9a11-845980a1fd5c"

[[RecipesBase]]
git-tree-sha1 = "b3fb709f3c97bfc6e948be68beeecb55a0b340ae"
uuid = "3cdcf5f2-1ef4-517c-9805-6587b60abb01"
version = "1.1.1"

[[RecipesPipeline]]
deps = ["Dates", "NaNMath", "PlotUtils", "RecipesBase"]
git-tree-sha1 = "2a7a2469ed5d94a98dea0e85c46fa653d76be0cd"
uuid = "01d81517-befc-4cb6-b9ec-a95719d0359c"
version = "0.3.4"

[[RecursiveArrayTools]]
deps = ["ArrayInterface", "ChainRulesCore", "DocStringExtensions", "LinearAlgebra", "RecipesBase", "Requires", "StaticArrays", "Statistics", "ZygoteRules"]
git-tree-sha1 = "0426474f50756b3b47b08075604a41b460c45d17"
uuid = "731186ca-8d62-57ce-b412-fbd966d074cd"
version = "2.16.1"

[[RecursiveFactorization]]
deps = ["LinearAlgebra", "LoopVectorization"]
git-tree-sha1 = "2e1a88c083ebe8ba69bc0b0084d4b4ba4aa35ae0"
uuid = "f2c3362d-daeb-58d1-803e-2bc74f2840b4"
version = "0.1.13"

[[Reexport]]
git-tree-sha1 = "5f6c21241f0f655da3952fd60aa18477cf96c220"
uuid = "189a3867-3050-52da-a836-e630ba90ab69"
version = "1.1.0"

[[Requires]]
deps = ["UUIDs"]
git-tree-sha1 = "4036a3bd08ac7e968e27c203d45f5fff15020621"
uuid = "ae029012-a4dd-5104-9daa-d747884805df"
version = "1.1.3"

[[Rmath]]
deps = ["Random", "Rmath_jll"]
git-tree-sha1 = "bf3188feca147ce108c76ad82c2792c57abe7b1f"
uuid = "79098fc4-a85e-5d69-aa6a-4863f24498fa"
version = "0.7.0"

[[Rmath_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "68db32dff12bb6127bac73c209881191bf0efbb7"
uuid = "f50d1b31-88e8-58de-be2c-1cc44531875f"
version = "0.3.0+0"

[[SHA]]
uuid = "ea8e919c-243c-51af-8825-aaa63cd721ce"

[[SLEEFPirates]]
deps = ["IfElse", "Static", "VectorizationBase"]
git-tree-sha1 = "bfdf9532c33db35d2ce9df4828330f0e92344a52"
uuid = "476501e8-09a2-5ece-8869-fb82de89a1fa"
version = "0.6.25"

[[SciMLBase]]
deps = ["ArrayInterface", "CommonSolve", "ConstructionBase", "Distributed", "DocStringExtensions", "IteratorInterfaceExtensions", "LinearAlgebra", "Logging", "RecipesBase", "RecursiveArrayTools", "StaticArrays", "Statistics", "Tables", "TreeViews"]
git-tree-sha1 = "f0bf114650476709dd04e690ab2e36d88368955e"
uuid = "0bca4576-84f4-4d90-8ffe-ffa030f20462"
version = "1.18.2"

[[Scratch]]
deps = ["Dates"]
git-tree-sha1 = "0b4b7f1393cff97c33891da2a0bf69c6ed241fda"
uuid = "6c6a2e73-6563-6170-7368-637461726353"
version = "1.1.0"

[[Serialization]]
uuid = "9e88b42a-f829-5b0c-bbe9-9e923198166b"

[[Setfield]]
deps = ["ConstructionBase", "Future", "MacroTools", "Requires"]
git-tree-sha1 = "fca29e68c5062722b5b4435594c3d1ba557072a3"
uuid = "efcf1570-3423-57d1-acb7-fd33fddbac46"
version = "0.7.1"

[[SharedArrays]]
deps = ["Distributed", "Mmap", "Random", "Serialization"]
uuid = "1a1011a3-84de-559e-8e89-a11a2f7dc383"

[[Showoff]]
deps = ["Dates", "Grisu"]
git-tree-sha1 = "91eddf657aca81df9ae6ceb20b959ae5653ad1de"
uuid = "992d4aef-0814-514b-bc4d-f2e9a6c4116f"
version = "1.0.3"

[[SimpleTraits]]
deps = ["InteractiveUtils", "MacroTools"]
git-tree-sha1 = "5d7e3f4e11935503d3ecaf7186eac40602e7d231"
uuid = "699a6c99-e7fa-54fc-8d76-47d257e15c1d"
version = "0.9.4"

[[Sockets]]
uuid = "6462fe0b-24de-5631-8697-dd941f90decc"

[[SortingAlgorithms]]
deps = ["DataStructures"]
git-tree-sha1 = "b3363d7460f7d098ca0912c69b082f75625d7508"
uuid = "a2af1166-a08f-5f64-846c-94a0d3cef48c"
version = "1.0.1"

[[SparseArrays]]
deps = ["LinearAlgebra", "Random"]
uuid = "2f01184e-e22b-5df5-ae63-d93ebab69eaf"

[[SparseDiffTools]]
deps = ["Adapt", "ArrayInterface", "Compat", "DataStructures", "FiniteDiff", "ForwardDiff", "LightGraphs", "LinearAlgebra", "Requires", "SparseArrays", "StaticArrays", "VertexSafeGraphs"]
git-tree-sha1 = "1d9f8d4fbcef6b2bf6447f95149cf74615a0ab7b"
uuid = "47a9eef4-7e08-11e9-0b38-333d64bd3804"
version = "1.16.1"

[[SpecialFunctions]]
deps = ["ChainRulesCore", "LogExpFunctions", "OpenSpecFun_jll"]
git-tree-sha1 = "508822dca004bf62e210609148511ad03ce8f1d8"
uuid = "276daf66-3868-5448-9aa4-cd146d93841b"
version = "1.6.0"

[[Static]]
deps = ["IfElse"]
git-tree-sha1 = "62701892d172a2fa41a1f829f66d2b0db94a9a63"
uuid = "aedffcd0-7271-4cad-89d0-dc628f76c6d3"
version = "0.3.0"

[[StaticArrays]]
deps = ["LinearAlgebra", "Random", "Statistics"]
git-tree-sha1 = "3fedeffc02e47d6e3eb479150c8e5cd8f15a77a0"
uuid = "90137ffa-7385-5640-81b9-e52037218182"
version = "1.2.10"

[[Statistics]]
deps = ["LinearAlgebra", "SparseArrays"]
uuid = "10745b16-79ce-11e8-11f9-7d13ad32a3b2"

[[StatsAPI]]
git-tree-sha1 = "1958272568dc176a1d881acb797beb909c785510"
uuid = "82ae8749-77ed-4fe6-ae5f-f523153014b0"
version = "1.0.0"

[[StatsBase]]
deps = ["DataAPI", "DataStructures", "LinearAlgebra", "Missings", "Printf", "Random", "SortingAlgorithms", "SparseArrays", "Statistics", "StatsAPI"]
git-tree-sha1 = "fed1ec1e65749c4d96fc20dd13bea72b55457e62"
uuid = "2913bbd2-ae8a-5f71-8c99-4fb6c76f3a91"
version = "0.33.9"

[[StatsFuns]]
deps = ["LogExpFunctions", "Rmath", "SpecialFunctions"]
git-tree-sha1 = "30cd8c360c54081f806b1ee14d2eecbef3c04c49"
uuid = "4c63d2b9-4356-54db-8cca-17b64c39e42c"
version = "0.9.8"

[[StrideArraysCore]]
deps = ["ArrayInterface", "ManualMemory", "Requires", "ThreadingUtilities", "VectorizationBase"]
git-tree-sha1 = "e1c37dd3022ba6aaf536541dd607e8d5fb534377"
uuid = "7792a7ef-975c-4747-a70f-980b88e8d1da"
version = "0.1.17"

[[StructArrays]]
deps = ["Adapt", "DataAPI", "StaticArrays", "Tables"]
git-tree-sha1 = "000e168f5cc9aded17b6999a560b7c11dda69095"
uuid = "09ab397b-f2b6-538f-b94a-2f83cf4a842a"
version = "0.6.0"

[[SuiteSparse]]
deps = ["Libdl", "LinearAlgebra", "Serialization", "SparseArrays"]
uuid = "4607b0f0-06f3-5cda-b6b1-a6196a1729e9"

[[Suppressor]]
git-tree-sha1 = "a819d77f31f83e5792a76081eee1ea6342ab8787"
uuid = "fd094767-a336-5f1f-9728-57cf17d0bbfb"
version = "0.2.0"

[[TOML]]
deps = ["Dates"]
uuid = "fa267f1f-6049-4f14-aa54-33bafae1ed76"

[[TableTraits]]
deps = ["IteratorInterfaceExtensions"]
git-tree-sha1 = "c06b2f539df1c6efa794486abfb6ed2022561a39"
uuid = "3783bdb8-4a98-5b6b-af9a-565f29a5fe9c"
version = "1.0.1"

[[Tables]]
deps = ["DataAPI", "DataValueInterfaces", "IteratorInterfaceExtensions", "LinearAlgebra", "TableTraits", "Test"]
git-tree-sha1 = "d0c690d37c73aeb5ca063056283fde5585a41710"
uuid = "bd369af6-aec1-5ad0-b16a-f7cc5008161c"
version = "1.5.0"

[[Tar]]
deps = ["ArgTools", "SHA"]
uuid = "a4e569a6-e804-4fa4-b0f3-eef7a1d5b13e"

[[Test]]
deps = ["InteractiveUtils", "Logging", "Random", "Serialization"]
uuid = "8dfed614-e22c-5e08-85e1-65c5234f0b40"

[[ThreadingUtilities]]
deps = ["ManualMemory"]
git-tree-sha1 = "03013c6ae7f1824131b2ae2fc1d49793b51e8394"
uuid = "8290d209-cae3-49c0-8002-c8c24d57dab5"
version = "0.4.6"

[[TimeZones]]
deps = ["Dates", "Future", "LazyArtifacts", "Mocking", "Pkg", "Printf", "RecipesBase", "Serialization", "Unicode"]
git-tree-sha1 = "81753f400872e5074768c9a77d4c44e70d409ef0"
uuid = "f269a46b-ccf7-5d73-abea-4c690281aa53"
version = "1.5.6"

[[TreeViews]]
deps = ["Test"]
git-tree-sha1 = "8d0d7a3fe2f30d6a7f833a5f19f7c7a5b396eae6"
uuid = "a2a6695c-b41b-5b7d-aed9-dbfdeacea5d7"
version = "0.3.0"

[[URIs]]
git-tree-sha1 = "97bbe755a53fe859669cd907f2d96aee8d2c1355"
uuid = "5c2747f8-b7ea-4ff2-ba2e-563bfd36b1d4"
version = "1.3.0"

[[UUIDs]]
deps = ["Random", "SHA"]
uuid = "cf7118a7-6976-5b1a-9a39-7adc72f591a4"

[[UnPack]]
git-tree-sha1 = "387c1f73762231e86e0c9c5443ce3b4a0a9a0c2b"
uuid = "3a884ed6-31ef-47d7-9d2a-63182c4928ed"
version = "1.0.2"

[[Unicode]]
uuid = "4ec0a83e-493e-50e2-b9ac-8f72acf5a8f5"

[[VectorizationBase]]
deps = ["ArrayInterface", "Hwloc", "IfElse", "Libdl", "LinearAlgebra", "Static"]
git-tree-sha1 = "88380249e2bc36163ac136ce6b6e84ad6c208585"
uuid = "3d5dd08c-fd9d-11e8-17fa-ed2836048c2f"
version = "0.20.30"

[[VertexSafeGraphs]]
deps = ["LightGraphs"]
git-tree-sha1 = "b9b450c99a3ca1cc1c6836f560d8d887bcbe356e"
uuid = "19fa3120-7c27-5ec5-8db8-b0b0aa330d6f"
version = "0.1.2"

[[Wayland_jll]]
deps = ["Artifacts", "Expat_jll", "JLLWrappers", "Libdl", "Libffi_jll", "Pkg", "XML2_jll"]
git-tree-sha1 = "3e61f0b86f90dacb0bc0e73a0c5a83f6a8636e23"
uuid = "a2964d1f-97da-50d4-b82a-358c7fce9d89"
version = "1.19.0+0"

[[Wayland_protocols_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll"]
git-tree-sha1 = "2839f1c1296940218e35df0bbb220f2a79686670"
uuid = "2381bf8a-dfd0-557d-9999-79630e7b1b91"
version = "1.18.0+4"

[[XML2_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libiconv_jll", "Pkg", "Zlib_jll"]
git-tree-sha1 = "1acf5bdf07aa0907e0a37d3718bb88d4b687b74a"
uuid = "02c8fc9c-b97f-50b9-bbe4-9be30ff0a78a"
version = "2.9.12+0"

[[XSLT_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Libgcrypt_jll", "Libgpg_error_jll", "Libiconv_jll", "Pkg", "XML2_jll", "Zlib_jll"]
git-tree-sha1 = "91844873c4085240b95e795f692c4cec4d805f8a"
uuid = "aed1982a-8fda-507f-9586-7b0439959a61"
version = "1.1.34+0"

[[Xorg_libX11_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll", "Xorg_xtrans_jll"]
git-tree-sha1 = "5be649d550f3f4b95308bf0183b82e2582876527"
uuid = "4f6342f7-b3d2-589e-9d20-edeb45f2b2bc"
version = "1.6.9+4"

[[Xorg_libXau_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4e490d5c960c314f33885790ed410ff3a94ce67e"
uuid = "0c0b7dd1-d40b-584c-a123-a41640f87eec"
version = "1.0.9+4"

[[Xorg_libXcursor_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXfixes_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "12e0eb3bc634fa2080c1c37fccf56f7c22989afd"
uuid = "935fb764-8cf2-53bf-bb30-45bb1f8bf724"
version = "1.2.0+4"

[[Xorg_libXdmcp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "4fe47bd2247248125c428978740e18a681372dd4"
uuid = "a3789734-cfe1-5b06-b2d0-1dd0d9d62d05"
version = "1.1.3+4"

[[Xorg_libXext_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "b7c0aa8c376b31e4852b360222848637f481f8c3"
uuid = "1082639a-0dae-5f34-9b06-72781eeb8cb3"
version = "1.3.4+4"

[[Xorg_libXfixes_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "0e0dc7431e7a0587559f9294aeec269471c991a4"
uuid = "d091e8ba-531a-589c-9de9-94069b037ed8"
version = "5.0.3+4"

[[Xorg_libXi_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXfixes_jll"]
git-tree-sha1 = "89b52bc2160aadc84d707093930ef0bffa641246"
uuid = "a51aa0fd-4e3c-5386-b890-e753decda492"
version = "1.7.10+4"

[[Xorg_libXinerama_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll"]
git-tree-sha1 = "26be8b1c342929259317d8b9f7b53bf2bb73b123"
uuid = "d1454406-59df-5ea1-beac-c340f2130bc3"
version = "1.1.4+4"

[[Xorg_libXrandr_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libXext_jll", "Xorg_libXrender_jll"]
git-tree-sha1 = "34cea83cb726fb58f325887bf0612c6b3fb17631"
uuid = "ec84b674-ba8e-5d96-8ba1-2a689ba10484"
version = "1.5.2+4"

[[Xorg_libXrender_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "19560f30fd49f4d4efbe7002a1037f8c43d43b96"
uuid = "ea2f1a96-1ddc-540d-b46f-429655e07cfa"
version = "0.9.10+4"

[[Xorg_libpthread_stubs_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "6783737e45d3c59a4a4c4091f5f88cdcf0908cbb"
uuid = "14d82f49-176c-5ed1-bb49-ad3f5cbd8c74"
version = "0.1.0+3"

[[Xorg_libxcb_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "XSLT_jll", "Xorg_libXau_jll", "Xorg_libXdmcp_jll", "Xorg_libpthread_stubs_jll"]
git-tree-sha1 = "daf17f441228e7a3833846cd048892861cff16d6"
uuid = "c7cfdc94-dc32-55de-ac96-5a1b8d977c5b"
version = "1.13.0+3"

[[Xorg_libxkbfile_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libX11_jll"]
git-tree-sha1 = "926af861744212db0eb001d9e40b5d16292080b2"
uuid = "cc61e674-0454-545c-8b26-ed2c68acab7a"
version = "1.1.0+4"

[[Xorg_xcb_util_image_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "0fab0a40349ba1cba2c1da699243396ff8e94b97"
uuid = "12413925-8142-5f55-bb0e-6d7ca50bb09b"
version = "0.4.0+1"

[[Xorg_xcb_util_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxcb_jll"]
git-tree-sha1 = "e7fd7b2881fa2eaa72717420894d3938177862d1"
uuid = "2def613f-5ad1-5310-b15b-b15d46f528f5"
version = "0.4.0+1"

[[Xorg_xcb_util_keysyms_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "d1151e2c45a544f32441a567d1690e701ec89b00"
uuid = "975044d2-76e6-5fbe-bf08-97ce7c6574c7"
version = "0.4.0+1"

[[Xorg_xcb_util_renderutil_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "dfd7a8f38d4613b6a575253b3174dd991ca6183e"
uuid = "0d47668e-0667-5a69-a72c-f761630bfb7e"
version = "0.3.9+1"

[[Xorg_xcb_util_wm_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xcb_util_jll"]
git-tree-sha1 = "e78d10aab01a4a154142c5006ed44fd9e8e31b67"
uuid = "c22f9ab0-d5fe-5066-847c-f4bb1cd4e361"
version = "0.4.1+1"

[[Xorg_xkbcomp_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_libxkbfile_jll"]
git-tree-sha1 = "4bcbf660f6c2e714f87e960a171b119d06ee163b"
uuid = "35661453-b289-5fab-8a00-3d9160c6a3a4"
version = "1.4.2+4"

[[Xorg_xkeyboard_config_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Xorg_xkbcomp_jll"]
git-tree-sha1 = "5c8424f8a67c3f2209646d4425f3d415fee5931d"
uuid = "33bec58e-1273-512f-9401-5d533626f822"
version = "2.27.0+4"

[[Xorg_xtrans_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "79c31e7844f6ecf779705fbc12146eb190b7d845"
uuid = "c5fb5394-a638-5e4d-96e5-b29de1b5cf10"
version = "1.4.0+3"

[[Zlib_jll]]
deps = ["Libdl"]
uuid = "83775a58-1f1d-513f-b197-d71354ab007a"

[[Zstd_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "cc4bf3fdde8b7e3e9fa0351bdeedba1cf3b7f6e6"
uuid = "3161d3a3-bdf6-5164-811a-617609db77b4"
version = "1.5.0+0"

[[ZygoteRules]]
deps = ["MacroTools"]
git-tree-sha1 = "9e7a1e8ca60b742e508a315c17eef5211e7fbfd7"
uuid = "700de1a5-db45-46bc-99cf-38207098b444"
version = "0.2.1"

[[libass_jll]]
deps = ["Artifacts", "Bzip2_jll", "FreeType2_jll", "FriBidi_jll", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "acc685bcf777b2202a904cdcb49ad34c2fa1880c"
uuid = "0ac62f75-1d6f-5e53-bd7c-93b484bb37c0"
version = "0.14.0+4"

[[libfdk_aac_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "7a5780a0d9c6864184b3a2eeeb833a0c871f00ab"
uuid = "f638f0a6-7fb0-5443-88ba-1cc74229b280"
version = "0.1.6+4"

[[libpng_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Zlib_jll"]
git-tree-sha1 = "94d180a6d2b5e55e447e2d27a29ed04fe79eb30c"
uuid = "b53b4c65-9356-5827-b1ea-8c7a1a84506f"
version = "1.6.38+0"

[[libvorbis_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Ogg_jll", "Pkg"]
git-tree-sha1 = "c45f4e40e7aafe9d086379e5578947ec8b95a8fb"
uuid = "f27f6e37-5d2b-51aa-960f-b287f2bc3b7a"
version = "1.3.7+0"

[[nghttp2_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "8e850ede-7688-5339-a07c-302acd2aaf8d"

[[p7zip_jll]]
deps = ["Artifacts", "Libdl"]
uuid = "3f19e933-33d8-53b3-aaab-bd5110c3b7a0"

[[x264_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "d713c1ce4deac133e3334ee12f4adff07f81778f"
uuid = "1270edf5-f2f9-52d2-97e9-ab00b5d0237a"
version = "2020.7.14+2"

[[x265_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg"]
git-tree-sha1 = "487da2f8f2f0c8ee0e83f39d13037d6bbf0a45ab"
uuid = "dfaa095f-4041-5dcd-9319-2fabd8486b76"
version = "3.0.0+3"

[[xkbcommon_jll]]
deps = ["Artifacts", "JLLWrappers", "Libdl", "Pkg", "Wayland_jll", "Wayland_protocols_jll", "Xorg_libxcb_jll", "Xorg_xkeyboard_config_jll"]
git-tree-sha1 = "ece2350174195bb31de1a63bea3a41ae1aa593b6"
uuid = "d8fb68d0-12a3-5cfd-a85a-d49703b185fd"
version = "0.9.1+5"
"""

# ╔═╡ Cell order:
# ╟─02a8b540-f5c7-11eb-3d05-35019cfb6ccc
# ╠═639ef02d-c58f-4950-9b68-d7f5e533b39c
# ╟─38915e46-a18d-48eb-8e1c-cf575adcc269
# ╠═264646aa-75b9-485b-9633-b74302ff6e5e
# ╟─9aa877f7-ab25-498a-aff9-85aa8d2ad899
# ╟─beea2d33-ce11-4004-ba01-0fad265df93b
# ╟─266c819d-1b2b-485b-a196-92bb9f655685
# ╟─07130aea-2900-407c-9709-de1c3f565aab
# ╟─e1972492-7b2c-45a7-9680-917c725c7f33
# ╠═2a9d0439-b5e0-4b88-b69c-9fbdc5b9e3aa
# ╟─0cb71990-c0e0-43f7-a464-5b1c5ac39a41
# ╠═b151d1b5-d4a6-4887-8731-413966607992
# ╟─e7304ccf-74b9-497e-b2b9-b200a44c697a
# ╠═74836ddd-8abf-4dec-b6ca-f6e2bc08735a
# ╟─b9c39e55-d6a1-46be-9ac5-6761ad9ed4b6
# ╠═339a7306-9cf8-4ef1-8dcc-9a8ed5573944
# ╟─f38f4e82-8e9a-4cb1-b5e1-2228fb0f4d17
# ╠═c8503662-7a5a-4498-8703-9e845d6c520e
# ╟─9f9fb1b2-d834-45c8-9e01-e6d22388d516
# ╠═e5ae5456-901e-4912-bb15-52d0db183114
# ╠═882001df-c383-4973-be72-f9579099e0b8
# ╟─35b1bf20-2f24-4ad3-8f63-46862499ab93
# ╠═7956388b-36c9-4f39-853d-1f915f335c9b
# ╠═bfb3ec9c-c161-4e3a-afa3-40198afca01f
# ╠═b1b203d5-8800-460d-a34a-36613f7d3f90
# ╟─9559fd7f-7f73-439d-a4a9-4650dfe815e4
# ╠═a5446e1a-1cfe-4677-a2d4-587b83af7e9c
# ╠═f11a43ac-70a0-441e-bf67-4e62879b91cd
# ╠═2b8e40f0-ce78-4033-9b76-7ab8116d95a1
# ╟─5ed29d35-9a94-473e-8e47-287a661de27c
# ╠═831e8c6b-706d-40ce-8ecd-437e85ca9cee
# ╟─8004677f-105c-40ae-ae56-1de19fde0ce3
# ╠═d7a60daa-9667-4d34-976d-4238b6019123
# ╟─ebde1b87-d376-4451-bbad-a7a77ad1ef00
# ╠═e007a39a-2d3f-47b0-8540-0d4fced55600
# ╟─f04b09b8-7e5a-47ab-b606-19631d8d4ecf
# ╠═0ac75960-8b8f-4ca6-9804-4ac7a72a2817
# ╠═729653e0-f22b-4a83-82a2-af401aadbccb
# ╟─3c566261-7c14-4a67-a8f8-6695d5254da0
# ╠═53b79dd4-5460-4b85-acc7-023d6b04b4df
# ╟─409611c9-5dda-40f2-8b29-f07d7c56f03e
# ╠═cc286787-d2aa-4276-a025-c95fe547cb77
# ╟─6c68be2d-e0ee-436b-bae1-f43fe5179510
# ╠═8bc7b403-11f6-4dc8-9347-091b20a1266b
# ╟─db071572-a824-4f3d-aec6-74837afccbe1
# ╠═9f4d3a69-671e-4abe-877a-723be81fb4c1
# ╠═d91691af-69e9-4351-959a-48accbca25cb
# ╟─e338cd11-4be3-4076-a9c3-8f8e0ca6de79
# ╟─00000000-0000-0000-0000-000000000001
# ╟─00000000-0000-0000-0000-000000000002
