-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Tue Dec 27 13:21:11 2022
-- Host        : DESKTOP-SQGSJV7 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top ebaz4205_mult_gen_0_3 -prefix
--               ebaz4205_mult_gen_0_3_ ebaz4205_mult_by_4_0_sim_netlist.vhdl
-- Design      : ebaz4205_mult_by_4_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
DKwuQ0aO1o4xPWv3S7X2cQqcGZzRcHdILcDz5vFiiL+gKhHJ8EmLqT+obUmKFllosTfWWPfw6o3W
EKYijlr22e4tsyftrP5Ih1htSs5AUS9J+ITMIu7ifuRAa3P6969W8N26ZMayyL4kkcKVGKN2+V1C
EWOo+ySD86Dq4uTey7s=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
aqM4G1eN04rHMaC8dEp3T/UB2ShUS+ZTZwphdITgIxVjSglVesOcBWUX4H0PsKXFPcrMSYKBM00q
St3XVkf4drCO5UvaKpQy7cUv5ibJB8r34nEZhWLbTky0zBrOBFRfq7Uwig59sqovSN1xahMIAENz
wUbvWdnMBJJkCLY1VloiJSJn0jGCKdRX2ygt8/zTJSEcHLIVqJY7ZkONI9AO4k220pXbdMC3CV5p
FZfxKmE7Vz5B7Po3n50llghcIFjWmsWPyKuUN0TII6bE/YWZtaJSc1DDuIwZ7dUkMs3znU5ZWmfX
vfA5KpFoFhQAitqrvx+XocD+ncnK5umzxfaA9Q==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
Ype2ywNiYBXzN1iZQECBgP2i6SrYunJy26pUNb1ybpjvE9rrB8zVifRkVKzsA7TxlKrkdIbz5gf5
UoZnyozLVF40I3gSh7+ELuZZdRvRsRbEKm7E+BYUxgfCNX+6eGBskiPW7T+/a9P4HaYmvFvNrxKE
JkkXUp2ZEtgqnToxSoA=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OfiaJt80KOLyjWTQXazqAPYmtf9Lhrm9yq6orR9DcIoVyic4vuIqanWgU9z9axkww4ZXeOe/rGx4
MWfhvnU/S1x0bMtHhdBEL9f0saR0/Bo9XvXu6PVfHA0qzsjOZpLSyICwVtwAMC/kDTYxHC4JXWc+
9U51kkq5kLykUj1RHUQD9C0cWNvboTZVdFT8YRi8BainccoghSTgmsQwiEfjRyCGxVxiOCJBP66J
op5bdGwwxCLVo0SSHbxtIJ+texL7T3V/AuNqWFX11SpSaKgPTuhIKuCdt7fcD558s8Kvhv2XaqWK
HXEIk0gB/0biGjMdmu77OvtqpVuoaUBA3RECtg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GAZu0sZ3H6bB1x7QA9PnZrXP5ytYTLR6AyMXzjtnNPeIuZwuMSXsJKfa8boTcLWX4PTOiRousiX+
MkSA8SyC1LklSsGtdw2dT5nkWhNTLUC2hkda3nTdLKeUdQB0uFZet1YP34ETkJvEu84qk+8ZhCf1
OFoZJE9wC6mXj9i7bWVYaDoC7dZ1vGWaA3ispjcy8cRn6rHqnemOrr3XqjhqqXSocecO6G6cPeDn
c2X7HbK5mxvNquvWm7h1rtbXLCiouuXY1dpBRkpBfwxtEbuyZCebDK1v68VlKa2IHjFrxfXUdy/m
bh2vF1gXJdYYz+bzFYNivhlihyhlNknv6gNL1Q==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
TBjqZD8oi2AcKjw6iu/gXbnfB0Dbb/mLSKiruFcTjny2EE6BVUMqqkqLon3+m1WDjCEYJG8TkTBT
0uhAWnMkiynyLKt/cYDgdpRDD1iTT1Kyo1afxYrb+0xopdGNdTjZbY2WLwxQ2f1rJgdm10w4F7mf
bsKl7LuczR5UT54nAJVsXLqgc6Gg5LTU5XIsF2X63nSpNnfGv9vwxJcr/ZOO8erM05SY5xKqDI6k
Nifa3mIOziue42T9ydV5f5FzZDuoIxwC5u6XCQG5phskysXna0YHtCvTrNGaGCIRrBbXt3Zw6jYi
o3TgMMbFQzglMlfA+i+o8L3vYteDQhvvVpDjDQ==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
PFhF3YUeMn8Z6JD0iZT2JSKLHEQ6pneGVVZDtBqANmoc80MpV5jfAs1PcO6Es+Uzo4SvwX4DuQMp
55yYLsgETICw9nBFknffC++KC5xUSO4srJpckAilF0doP4Yt+sUvqaUGGoM3X2//b5PK7kEW3sF0
CX3G98OGHzG1TINaGqHo+QoYKxdGBOelZKxsa5Vmc2Wdui7ywLa1ESp5CAh9zU6OLG5qS+9FoivM
t1wjLZgLoblCeUjFR9Zo9AsAsZf4pnPMVWhuAHVfwABicVJ/zeE8Sr/vG3iLEinLmePaZ4cRc+7c
JXbxLkJNfwTCk2q1HHnv43ImGo41GtSC8gbtRg==

`protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`protect key_block
F3MJyXRNsShA4O1pkfdP1+3LFymNSmMgUmD41fPmFw2FTmlNplDfy76rxe+V9euf+V0Rf204q94P
zSvQuREQI5J98HA7i0d9BFOsktiReC+6iuu6GGLpV3ibUAbcJLevD3GqNPlgMkzZbz5xehOcht6X
G26h1C+cqZ7dgydCx57tUlE+KgvHDC4+7arPkyn2/+G/t025wy4ilGgD3NcSJjnxpX6xxtW4VGxl
g+kX08/gPxUbUsZhFZ7xYz588YBwQPPNDuDwwQapBHqs8C11vFOSIJ8NovvyeceFe6ZGb5herR5/
hh5KlaW/r+XYjkzP9Rv8uNgxFp9gw5KweP/DUn4bXmZM3TzsIZpbiWcmi2GjtGD5Ufm+cpu+3t5J
kgI8ioWPUCy3GM7vVNDmqcEQifR+ujkl+pDQyQwMI0/sPx86ayNthszNF/UmL3pnuUKu0q+FiuHe
Gcp5kq2qC0nPy2PHexipzJ/sAUZT77515/TrSq8vJjPbpV8EvqAyE/tl

`protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
GZhGCeBM6/VimBKe4YMng3rXDM/FrhYvQy96160w9zP+pTr46M3ISuLle+Zvqx1gB3Knhrgr4MsG
NP0nMs5NJxBYYEksBLNU8Wt+DIdyy32F3aN8+Dm/zppNw/UPGR7sNhcxTBEhDMOzdxLEXpVdjLe7
pQeo1ZEPTqfkqVNkzs9I2LcLxcJV0n9cBDj7dH8/Ny2q/99ExQn0lcTMRmXh4omAnaDRWL6nLoWw
ukL4BGdSYFRfqvyxm+GpqMefW39OJyAftww3pV2qR9kZk5r7p1uWWdO4dl4Cli3AjEJAfuEcySQ/
w+o+bXfXx2DKhPZ3pYjPmLeTXOdw6Kz23NzY5A==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gPp5etw11Jmik5hxfNr5ISR84b0mVNDRg1w3HmfYnsEOlaej3YjJtHtCgiQBGnOHq+UIrXjdF6Si
d/prd5jouYjfSATKRD1W7U+huKZG1/Y3OfH6LceeKBDgOVzalM0jhNy2QfhrJNTJyveubzVRbdYW
JSPQiW+pd28NOvPU6Bbblr5JKTv/2CB/jUfgrnAZs2lvz8XyFvzgwjSOk30YHdDhXYVchSNzdQ3z
EL5zgE16buhq6We7Q0mSdrFXSow+uNcZ68rgvcQQM3WHs2KFA6J97exxrW1Fuh+eM+o8nRFwB7qd
Z93lNqgIqlHdd1iWkvMl2RtxD3i6dUiFJ9OR3Q==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
f0+LbJNeTaVPy+uOeOAJ+KF4aNyIkZ2q4+W1BLB59yBpNLX4VpnAKLq1tBCq6Yxz5cubn2F5euBI
eP3dCsXvY792czjtQDVrBECWS2jLqS+HBVo8XbNlC5Yx5mwqHhb8ceSLSix2N3GYZk5fzQU4aqa8
GNigUz0J9uxIo8HeZxISNYu5IjMjVqNexS7q9i7YygaTrxykdE0/OzlUhfBY8JtNeE3qbjbALizF
sX8/Qvhr/Op/Pz3TaRQbckYSK9wPS8Xj7N2Ug1qSG6UENMymgUCkSkav+uS5P0FwFOSoWdTL0d87
FpPiZcV2n6+em6/T+3bQ4ieldc+eOQPzBV1JfQ==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 12528)
`protect data_block
jHMzwMVlQjm8+4q2mXZFzAxWgVvKyzv0d5sx880JzRBVnJWux+huYRYBDFksomYG1y/Exsr6ETG1
yfWImSmlVSK5wLmRikJ8CFxO/9h+Qrt82rlGEG7UaTjlXxkDtYh+9nfBJJHwRffBi0W7IpnCZSSM
8btqfga/l/rWXjrRJTZj8Sw2tvScO6k+2D/yXdLTV3woyDdxqHOnafEd7JJ8UWRXytnLRG18Xyy7
BCaPOW9s9WaKX6aocUcDUe0gCwvbcq2GMiGMsHWZmywEaGnYVe2iiQlcn1zSBgS1LNcuPdZgrOnS
+qzF7Afpk563sssDhcWIbqcj/IgEB18UrSQ0YnoiNHoSj8lFf6eGea1VqEEdhY7mV8i9yCQ6wqFZ
+wgNHROEyjop8XkCHwOREZc+hb62RlDBLWHnLY5Yqpb8qEJXPuQFHDpxVSS7bHCD1mK+TjmKEnzD
RJwpWpEhW9rrWA+IxuC8Psxj2XbXyxO0MAqrpPn19Em5t3Gj0H02egJv6q2kUMZI9ksdzHd2ydHx
zdGSShYqcdFCrOIQvBQB9YNmK+P0eH0gywbG3Fi6viR/YftKdizhhD8VmF5vNxwCox0ORgK7qrC3
t4QQeDZJAY3jOi32yGVLreosXV9orBXnpED7nSZ/nqdxDlAYcYBClYeLld1IosNpZDWXKjpda6iq
MEeflY3JzfOj3c9mAliV4C0+RuQHauddYIV0OAjyZKtoMK2HzGCICIRcu3nVyPWTxfE6HOk8mObm
v8mGfKo52s4h416WwvisgX7gQSBFeK//g9BwoudPdaj+T6ry90INVowMw6Z39KJXitA0MQUpauaH
smjjHKYnBD2YVMDfEkmLdv2jIJmNo8L+L6IHVGBRffWfphgiZwRJIFjmL00ZpgbWmTFk45yqByH8
tUm4S+v2dwmBsWGXh1tsjsY7yFPdV/aEJyJ722D6QRzZ6u8e01WTA6JxvDBPg9h5DdC3qvr0KzRO
ZezHb2Ho8/2ZUMLlTjb0GYXWRlW44dv751+vmCk49dj6b+lwcdTJTlTadYuEQN3s/Ddk+T1U8F1u
6iZ0X8FAqk5bx5q95iue2nkpU98BCRDuZMMQ1VrgFO3uAsyaMtaNkKR89UadHVTbqJXFhwIPoWu1
wEDSOh8Y1r8d3Q46iLGt0UXjzzthjsGruwHw5uOZKuHwqLpFZfRUaaumserJ+riTroN51q7jMmzR
po+yt2H6tPgHefUqIlTRg/7P9Sn3urVaDQmDBFBs6CrGesOLTtu6NI6+VkfpF39rxA1okL7E2ZEF
AdUfKIUWDPeCN1kC/LJilM7UNtK90yoe9aUoFVlrYgGidCox9xB1J4oBmw3FXbA5pd84seNkONSX
x+p0itnqqMgWkGQU+G0+YEeP1zapO98zUH0tvB1rsutx1QcHdmv1qBCg4IvWql8yXgJf+iDogfSv
SeTaHXmdsLKdWDGzBIUeMjj89ah+EvpWOY2eJ/oKKqwfhsim3iBWZhwYefhOFvEzmVrUcQCWWGUg
E8Z3V2QvtVhWYkAy/1LGtznZ/Ho2v7Rb8gmWR0GDW7hUFbVft8ch9001pTKBDYXtyjfuiC8g8aKN
3Whi7iAEn13RFTRWyRH5PaeGZkkcC5/LUMd8n4potOdK9ApezisyvUoTdj5aVAVvzXfOwGLmQGgN
qw5Rwa3JPf0e4b+VLi6f3vVJxYO9SX2VCb1G913A5EzHGJpsx7xbRsL7/agQjzpJStogBYYPfmB7
NHJBp61ypdjBSJpvxgSnDGBvOCumrnb5s9L0Ot7ft2zCbgv/2ricZ9tdSH9Qh5ZWgPpWyyoYn/OQ
0pxpkQUaNib1UMBYrGxdvYCm1v9aRmt5nBFx1xgqW/uP8/L6j7NtGFl0GSsqFBVeLIhHx5KS/vLA
U/2NJlDscCxT5Aa6OjmRVspPeoDK4qvamS0h9sTbZgqOFI7dGKAUNe+sknu/Vvtd9tYP5AlJYy95
BpXI29MDeKox3CRevak34RNEj9mO4rO6sEGxmrnFvDZqJj3OAqs+VU+vdtBxI0cr1A+0lQgFjv8Q
Wj+k9M9zQX8fEVgxst1lWdR1pitrBvm538HorvLAFkn8DDJM34ypWNEW7ikz3C8sdOiTs8ZFaXSY
8wcxpA+FdfUqcqNwGpnbaQCEjaaPtG8G43pcPG2RM3yN35LC82cLqw7fsqG3W/le26HBri4dZcI3
OAEkQA+L330NIDq9Cbl6bDbp1YL8JUumnX7YoqXYvyUeylq2Sv26XB+/0MxTGkfdQmX39RQBZcjI
9P/YKSUhKObjHYCiPgfW9qawR31AzPB3bjj876fwMOhKDMQNKpOakmCSM7HVKH2F+7G+cIQm5VcD
on31JlDVPFxG96vXluWJ4Vbem0NqvJRVb0OpQBULYZdxxHY9LuN3/sDteuRuwQsEumj0hQMexozz
mtFDaZPB9/zqnERMAZWSO5DCH1/u6hCzs+z1UeZG7V2HfOCr301MueYsWboXUhBD0UmIpJxVZkTR
SdpRF4veclccu3NKc1jBmeJEEnI6WTRWD3pEZHVibJ+MaxBTOeWjynd6sRNeBdViG415x3e01Wit
iR0XN1265JYgBJcg1c/fOUsMvdTYdbZ3UDIGcbLvTs8AS+QiY6SuApCI6onSGZeB3kjTmuXUwMWj
1KGWOaFY4nD3it5ZQ21xEifNS+zVLCYbGSurxiSitqkl6vXc5RYrg1TkT6yTrhaeC9iBZCD4f2uf
Nffrk4q8lYvq1YhJJCMcwPhjcStPyDD+Dir8cCP7/9b6SBOOZ4fQmz8MjIFctQmPXfxBPUyQ+7zr
ZZqoZcl2MGYAXtCo3nXR1/T5qKaA/GJx78zv/lG1hMPeRvB/Cm3I2f+80xkJ0HPMu4O05+fRaDj+
ew9TLoY6qzn3GlTx01CfFiNsuNmKWJajb68yceg4qdHoEwjt7DDhBTdANMWAvsxigPuudkKChqgq
b1mBpP7jK9t/8ERrV4GrrY9Up0UqqOSppUtfN8pLcJgzMATe7IYeAvh5nP4y1IAVaAYj5TM6kUhH
wJ13ibo1OjU0wQiG3u+G4j48VbdyEEZGWFy2m/ZjCbXlPZ+2Wonb6B5hOOTCdz4n7d2PkjutZMdb
s2Tf1mliyGk7biByMoXDbNOQvXEo2I0tOxA3pghmUnE1ANIxJBaE5gbigHuVUxG0NiMcYnzQItCj
E5Wqhz77xiV0b+tMI6gsth9UV+yaUiWpObKagb2QG2O4jicYvJ4kYn1/2/H7C6c+uXO+9xl3z1w3
6wPzz1+IK8qynNwny268TNxKEg5Viiz7QJmuX4/sBvhAA7gETpVOoH+zcPuC92CrgfXg5mD8APDh
VYC8metDWsE+gXyRcrT0UJVi1Fiwf5ThdJK4LpBX4OYeF2YcqtkVQfzmccoREq4Up4AZAnPPhSBO
cOK7kkj286lachQkXna7x8pCS3ErEgJ4n9w9seJCByqsJjdrF9IpJT+iFIQX5C1r9jwNF9GPWf56
LSzHrtlInspAYD/C/ftVvV/bds8dpIc1J25OxVz3sb1MeQHjjWL6z7+/GPSRQssFr8QvYkKPHBh9
TlQ/FHrems1eoOKYR0NPDw2ynh1u3FBx6L35LcstS0MRm/Kh6TskLdoe4okN0jm1/nW+tHXWWQi1
fBTiAaHfypFV5y6aq70VF7fRTy7jXjwRXTCgHvnkZaIKwcjMvkpFltQD3xkI7l5lmNzlAoXZROnk
bApXXHCNWnyHZA9salDjLUodI+087pR/braCPfMJw7vyct0Gua9VFbobDCe87he92Af/Ep51Uqo7
44fXYriAnDM/HBuxo79PoBp4dVhkbRVgT05f2h5zYVSyTMm1mNuy3T/DTLs5DtHF1KnyFKRzQuJY
iyhrtMMTyEWhQXsO7H/ytJrpAz1TWWbxPazsEGM6+upFfogy4kXMhtOn9vOsVN8TZ35nqSCIKg3I
t3QVIeyagdpqsoyzJ7/JIHthLYCJsf02iJT7orI0GYT+LfHebIHZngrOQC/XhzYvez2zdV8nCmzJ
3O4vCKUHtkZoSCOBr5boLAkG+2ZI3Ik+h+9957lpdCdKXu/gz4m9Oin8GSWnU3V7HNrKVGHSOfx3
XSik6a3Q+TSf2fggtW13ohntNPLCxrMHL1zhHMuBAkFeQrHRAknGTxKPHFypCjcYWm1uoNlxMMak
HZ8/UtfSR/1MXdTALUMHBYE6nupJuBAz1Otw+ZquLNPk+oPfwQi30s6SDvKXqs49+0r/ZpkoVicQ
9VSXdyDmYfBZlruqaFGT2t7bFrtBn4brakxmbpEeFBwz32IX/QaYpI2qsJY5NvG/vE3KCE9xam5F
a4rorJIJOTqJIyP0PLMeY1xoVxN71a6w6EG2FCPMIf/MdTHQdfTu+hPEz6cG0/V0dxinyk12vSum
rx3yXC6ol9I5hs8n+PjBlfA0hWwkLPgwL3nYw4qfMsA8nb8VTfn3wmPrIR3btKXQWsPS4ZAoh22s
TrVshYF3YBVzsmwzgrPD4UYWyq4UYFU9lf7X5VwyBUbrH9Pk2LTrTzog9xN8opoytUuySZd2V89T
DvED8spWY2q+X89Pg5bucmAlFtzXT/uWpcwRjZe7AyJ+xcIlzPLxSxGk9RNaej+rf9vROELFL+Pz
t7LNN9xZgw02hCJAHBpwNy/Sy02OdEjkO9dpJ7xcC4VjhnDY+DePbUZCBcN7kBH4OQmAqM8J3Ljm
Y7A3WrhSSDZUophEF2TNA6lTS0ta8vzg7zUuNJFoPhKE/wiAXN28D0hw3tk9Y3QSoowTFMBHJsHX
qvZiS04Aa1TNYB2eMRLVFhRAEDAdFJps6H7sgbsUCCHHdzU3eN+9CXjtm8px4efHjao8MXo5JZ5X
U9mn5I6b45xnaxrkcB0B9SZ7n5vTxw14xP9RH/Q9TmfIoODJavQuY1YgETQUf2otZMaOuA3tDgCZ
ziW0F6s+/VIfaSZsXIDiI4VaPCp9LYnWbyl0eby/nO8wrM2YCwptFPu9veiieA28gM3Lzi3x58Ya
rW1f3g/rvhgSr61h3WSj4OjGAN2g3WFzfEG6gFXCc2J5/id1PuwPEAptkdnoubULLPecfzEe1wwT
Glpb3GEEROzncOk05b3enVZCyZzVCx5+/1dFk2J5gK4Ye7e2C8VABGuz+Mjr3ItpXP9inRmZcQPI
aH5ngGNijQhjrKWfznv7/LnqHdXRrOaBgAFtOHeI5BVRcmNJScBCjTAcGiN7gM0p2RvkTFz5D++Q
3DBlj91lgSLMmH43xVZFdZvg1TcjJ5zNsJRJkC3Ld+3meL8xzgjCi88yIUp4zB7bd1lrwzMvctaQ
epIbbFvt8i2Gu3IFrZqBsL9AJ51m+oOZ2pdhF1iYdbfF+xD2oR8cSDvLPXayGDK52PJl/zpzGuHp
0fA0B4x0Ot9CoMgWxrU/OfosSRV7SRg4+hq+LpP5hOL0/+y4g4U5zA2bozKTGSi/qN4GB6wohjT5
HaEV5YpYemu2OCNV7+/1pm5EL3no+7OcgvValsyg49oP6yX5tY6n2jol0abnR6SDS24KwFXSnMA0
u6MQELMnjUFbNEFheGVt23GG9B6wd5PfaPBIkh1xsCQviJWT1ZQn18Jg3jHWpTg8jGKi0hah1Kf+
2SdoQeI+48wclsGp9pRmed6rFukmPq0s99YRY4v0Qk4mipqhI5RuVVOIDEGbzyyWP3k3DL3/QiUZ
LO/E00RU7NAgDjqbkJpFisuWm/TD4QTkE3JinKLkpOXZSeXl2Ie78waAtwwPNKvh+drb4gLVJWmJ
joRCugpIngFyBiGhBPjFrSJXH9BI+Upgiw4NBBEsxA8JeJOIRuWAU38CYx2jMlzMLsbrD8xuKtU3
12G2si/MtyWoPPyk/g9rLbEPXH7LvxB988dEgr01A8PE3V1JjRcol8poeobnfsMYl7XgRkM5Vf1n
Lmjz8dNCm7fQ8T50IVi9PGoSUypIyJeiNbXl+DF9n66r/tdCndr6ImY1gq/V03BFtoapDuy7LtrH
EoBJSAS+0SuxYL3zxkznHy/quncS9krLgkSRfIcb/dfQ0SCvTJjsLqJeESlc71/J0Q51Fs/monpI
FnydEoElMz3r0IrOR3nt2tGi96UFshUxXuQbQVQfacEbBURSZ1A11yavyoyfGEuDKXkkKUGKYBFZ
K0XgJU0JZeJXLKgjziOdOTwAmneVzbGPAb780e0D+18Jl9cKzHU0Bgu+cCw+Mbn+RmE6eEEDxJtD
k9NKxpvlUrIlMD6M/k37TdDtgtkPxsyptZHbnABLoGPAb/nEkt2UVPZHTbEleQ6G/hfPOCI7NDov
a/fZR7ltkJiyfy4OXc63XMYcC7rn2PahC8gonGZ6yU31UTGnjGf9Mv0HFXXI01XPANbT++l6VJmW
foymgdleZlR8SkpmHY8E3mfQaub4OwiCAvSPo561x30v0LW2hud+aoRHzuY+n6VMyADfeqjQJv0B
8mGOmQlDhF5glUl88WDHsiM700p86eLoTSrAHDN9CyYphEOy/w+UYHPjbC0JaeF1UcVIpncyOj0e
2I7pgd0C+gyiHI8XEO+29ZjmYB/XR4Nlxu3ANsmA2OJpnK2Qcr/FlF5/N+toEEU33qfwayNnypaa
sj9dCr3TzvgQm3Ilct6D6mdLArvPKo+h6ia6SvvVIpSaD64psCCNI6JDF6f87muui/zs1rTbrjDF
AFt1uxUVS9rYayqMQhQ09wyexLCKMmCp0gBjLBozGlFK5Ux1VSCJ170UaeYAR9HnBvgRBrUcFx3y
EB35d3lEmqVAHBltx1dgd4xUyYplygJ7U45L9+Ctq/6CU6BCjqC7Q5hE+LwOo19eTOHSKraEDjXJ
fAxyIg+i9ro+092r/35GQC6/cZ24AgC+K9YpHH6857n2hmNvzoJP4ODj655ZSAGgrzjXkmavMSgQ
56WamESzaKpMHh4thObfo6gv04V1mTxeoGGN2bythgdw/SJW+ktydVPK9GpeHKbw/q6fs/WeeBRV
KF98+s0OKpFvUtuHX4y1pbVhyXAxWoSX0isTCcPYcHU0j48+/JD7jje05bAYlDt1YUxNtVFjtgeZ
knilQYqN83UEmdcrG7ePQNH+ocNFZcao+01PJ1cWeGfVV/oAp4f/Yv2ksGpMDm0H9ZBFErg0tUqv
sT434wQuzhV+TUFGDMxzk4lKqccG4Z7lLn7HqCV6Mxfwahx7lHYQqz5c71Xu7DFTQ5nDLxvLNgOg
ZAjGHPAqVaC1OKUgo3gPymikJAPkWTCvlMXFXR7CX3camd8en+K3CX9WBj/11BZgGTHzD+k2bTKw
T9eZ47RrX4DeiEJ6RGZieTUwO/SI8IJ9v7TjjZ3EXWqk14uhuSGq+WU3WMuS0bBjvWyoPIZIUQuD
kA+Pd+a4CXdn+i0VSbxr0XjGjQcydPKfQ+JA1eeyR6sIC0ikOnitHRXTM0sEf0JYmu+xkMcbNPRO
aD/rET3w1qNLldthn80aYokf3T7ozKnaLyVMwgva8vQcfDRRABejea9qNwMKGrG00dt63tHYZWkN
Fhe0JcgbmqFKzGdlWUyp9Z3bwa1ECE8Is8BINvRySpwdGzlri88r+2hk2ZdugU124yzzEa7dcdKa
csTn9mFzITiXZmQFJTEOUL72c2UyTHS+zOWXPw52UXe3N8bWgRlPwRk6UuwB+t5UyrRL2TrTzsEn
2oDmiKjPTaNNxjMJcU7mSd0d8X+2KLIaOCGXfqDsQ5n8PwbckONMLmMVVMves4fqN5XvNdibbt1o
hWy3WAAxXQ5Au1M4kDy9JOdlbea2TLI4fWu/4HCX1nzhqJIraV3oL1rNS135nQvOfUKqmBDG20cx
SVZF/gMAM2wYgiO7mFyz9mn4JActEuv9A8+d16IUrFv7dii2vlFFvWYeuUCeLrOuse9tkEyba1cj
nfMsdnm8+va8XtEhvTzST13wqxd51G9MinQvrt5SV8LNBH00QJwtDuMw9liPayLUSqD3ekxP7F1r
t+Bm7jssFPRzWDALcAzLJTUVXIkoTexJ4UyuE+/gVprp3/KpGbj5gJPbTvrlQxsaCHiL0tympMU0
L17Sxc6TTEeN3a85h+snhdGIf39+RARngcA2lH8EZWkhuw2t23qCD83px27/r6I7L5iluwIWvNU7
8cleT7iGAjE30FpYdHAnlXm14eK2irfx5XeyVS2/vvdPlAiluei2dNtvlr9DpkHjId2A8r4eH5Yn
f12O7x83jGfQpt0VohZAP2mRPs4PUSvB0XvH+86XRtwxxN6fZDkpacFiANoHPKqsRB3FhOJbnJIn
bBCZ6RxCmykAuBGId0Lw988XJ+XxXWfJq3PhJKfwkcBtguOUmLUvVI9GtaBRJpIflV+Er4bMG3Tb
rh2aHdby3/ZGNxJmHrQqX2gdAYJDw0Tf+SlS1aM7w5QOmCyjzwUSaK9+fh8kripE4ap/9KV0Uv1E
9KYIcJnMsuqDurvx28iUdEGVz4z4BeiSSz4uu0i54vgE13UbgKrR4vdg6dy7TGg9A44N+H7HLQg8
0m3bSCzvPjFIOgA+vQYTo+whkpXkwzKZ1JpmHAwGMekV/mJrGh87yMmHCd2qzk85dSdGnnsuUW6a
pGa/WNDYM6EKmkRWBgw5gdfg8e2GQ3wZWXhJjcrtTHsaHWHQJ44WZQ5fMI2OBgAAc6Wf5nhjTuvR
M5j8L+Ja5zP1MOyD+kG7WknIQzDcY3SNhH0v97I9NzwaETPz5/XqxEJUtCz+QMjI+oIRD1X3lrCb
xctbN3nCE/sl8M1Cv2IKR4thUrFJiX3T1SBK5TeKMDDBzIFHfO3pX1loN3eFMkROKwGfxm4gyB1P
2jLLj28Md/Iy4yh8/3Xah3bw+FlFRL2lJsPz/H42bQTBneq7RwdjUCVwEI2OmMCq6OcE3aj7Xxlt
bJAMwf1muDXrsiv1nEaA/G9usmDG/npJI/gttbMP3HL3GCvz8Hqrdtejikr8BHhWLe0RqW7lizfB
pMO7UDuO7QnXZ7G68v0AqFP3Dkkf6wNtFz6W7rJOXTrgm2hOc7RQbvi4Z0I5YHqF7PmQPSy7JdSv
JV0tEWwF+bJ8TwE1nhmbmfNbWfiTBv7RjXLa0vaPoZ3PjoWlIzUVd7DljJb7wPr+IFBL2s6kUHEY
cmuu9Qn5SlT6qULCuvoebvCS5DbUp9SJz1aBGmhiv7fbnBIG0RJbQRdB9kGxeNZKtzRxxoBdm/k6
xgeuIRdPD5DRgRhlxaqWHBSNHBN3GPDrNJsc6SMHAMwpdPltR+Phf+epW2ee2mJqlbUKgYxl9+zZ
a/CXW041QZHr2GkUeMaBdie+SIaQdWINquN76vtpubPWIdvZSA6V2jwX3XIKhLNJrj88Qlg3tJ7B
HeuqrmT/lEtLaHx25TkzfE1k0YYI0uc4UPu+hOdJd4D2A0jcfZdxdyQ7/AWi/KrcmZH74hDOCZfO
H7hs7OyH7O3p8qkBb/Sc8ZfIIesFe60Dh9Mp/3jhXUeF7eIA7M4oQRuEIB1P2OGj6DFJ1uC/SjRk
aXtr/7qt1v1rtLHFWmrQElD93Nsmha+Rf8mHau2UepiLS/OkSlz+aUtHHyStsmNeqzbkIYvIbXYQ
HH2RAYL3KdSI/hfR6j2lo/3d9I0HSfKoj2SYl012xeADaYaaGdRwP2rZZjCeNWp6G/DEtNkQhCAn
+jvKonEkH8jmrD9qnvndtuHK/MPfhSh0drOLIIBSTixU/PzRyuiJ3FF6CCT5J328F/STP6NJY/hw
2U0DHd+df+/8f7uFpbX0lwWH8Lr2elwzYvNHX93g3YiENqAiXrj4a03xddeYvKh8hrOqUKCBcSPW
fOEkyFbxEgN298tH3hdR01tXIcCS9tVMkirkAHTSIULcgIlLO93wC3TNr1kDpsx9E65e/OoVFX6l
LgSIJrTW07Hm6cq/ugBnQg27fLDEtG+IznSN6cAL5PPeqUvptLtveCLtWbnmxGfAxxtu+f3KewO0
g81gDt1hBjSjhdy7UHp9FY45VIH+j+msQIbvVK4tUU4YkiTQHGb5fTZCitR2Oos5OkDgl431vvBT
jrNrw/np120+lPMytL98zzzHehKa3nrsGXmhpFOk52CiChnPtml3eDzJpgpr7w8H2DnB7DuVs2i7
Z7Ds6ojx81MnI7h71XmDbanWc1eOyaiCNA2oMjuKsCuRsjse6+bt9ShomYsXxhSENoXKCG/CQqNn
FmbZvXVz2G81pm2Vothn08uhdbKV5qPKZNfo1gda0QI6q7PgSxeirS7PHqAEOF+DgQ10KV4uMzzJ
yU/JnSLvO4Rxd5dq+ViJcI3L4zs4Lt1/yUz3Rm6o2hSurCU9n5zaPwtGRvxKxH+5i7E9mY5lrLjL
QYe1xabI8GDmx2WvRn6xFEyc+ZDKLkZ1aovdRMbNqYxLHAJtDe2jF9cFDZA5Buym7vO98sp6jKOE
tpFPboHLL9vcMSCMgrCGx/vBOReFt0YfQR+wq22NgU9Qhgag4gW2es+QFLvEgbuJp1xzyjP/wqew
3clONNV9Tw6HV/lC9CZSI0vU0YqC4DtlWkmKc+7U4uwKkS0vr15azhaJ/5XWPzWKhIRyhj69Wc6y
JT32Bz+RVpi8YRqKPkl5IR7QiPq2C6w/Jy5KHHpwd8jkfQItbDH/Wj5BtH/Kmx2jS4ICrhtzOjxf
kr678F5Og+BjPR3ihu2vNHFjKmvJ/qoQoFeLDYiw83gMdt7oogEWynV+thOPmYDF3pBfFi7igCoD
hKmTxKamPOPZC9MU7BGrkmElrEMcU2GYpVdsirFaGLfxA5d+Db82ODqMQXOhcfMt2eJYgTTnd2iR
FYWIZ6SHd+U7fMnRmKMR9SWd1Y6BqO9yR3ZDkqiyPUyQ1WuCdYKDOtlsNOsrgzRTDwNOiiggcFtn
9aUOSBzYQLlmGEd8sV80fDrp4baRhwvsEcpy+55mY80IU6GJP8nOI2FfQpnmxf6+S/7Qqs4diiVS
06qQAdSU/N3QiQsvZGJtBjypkKACp9Jauys1FOj3JlsTS9DGFBadj2leTvdE+TUtBHd6E91/SxJR
6Ut5+I0W9Zd0dvflk3hu0EB55zRcY2EErHCeG0rQKzk7vyG4jqTWqMmKHfZzuYLRFD/GKjWmkpYc
osTMfkXSigIyNq6pLBZ5rg5IB32NkmEVipKyp+Si41pJdCghyTYZcbwSEShXgz8CYeKsNPi50eMo
BcIJ6K1R2yR2v0Gz+qnUU0uNLJoieeo2zGCpDNAdEoOm283Yp8mfCAglelcRmr+cXONdueBC5YTH
SMHbtAm0t8DAwvlGS6nawvwuqosNhzYYbnaX35rkUR0iI/j24VreY9ONK87PWw1f/DBlj8MECXal
Nt5iHUznziMSD+sNXAqqMLX1lmC8KN0TNMZGqdx3GW9umnoTDYx0F5e41PvAnyWo3BZpfyPsYhUv
5KHTjeDt755S/X3lUzLJMeo33G4MQgdoz3d+q2BGFvs3lMzw3uZZoSQAipwWU1JahtNrnqK5VGrr
dQVG9oP3VIhwoPE9Ce/cyRoWNxFt2QnrYFHSeW4qLdaVf2XcUz5LsuiXmoPrsrwORtBQt+afsAiE
gfUZWbRxCOQWa9QyYmPbQbFEy14WrDxT3q9VgqKJnUfPtFTsv0rJYak8fdACDmCtQ97qn+bpXB/C
E1NBd8rl1DUnGiZPaTG/MJpvFb0nAnRP3PmxnP/zm8Lakxm5ecqeXniX+TdCZXmWw7CXVaZyCX+K
yRo9nXNQzE1TA4GuM6Lwiocrzd4VKOnKkIiMXX/jSHrPWHku+pz9UzERdRDF9DP+0q/K5CfT8EUP
3sM128Zi9dm+HO8LBDU/5deEtgreBu4L4NJAYqtoY6msWGBxyQLiOMmZ+OOiJdbf4cFYDMzQaVUl
v66Gbb4Hsry+nl2exD4HDSslk835bpQTaC9vBHW+m4AIVAjQ9Kk9WEZCajjP5WVGF+C/D6sGjz1z
XPoOs6U8rHlmKewthnU61Hj1hLUiDPctHiCjnJDs8gOcfLYFl7rBgeLHbPLBhsTZ+yBwqoECFtIK
QVqhe02v8QeR57CFEbPF8ga/xkcKMPRAgqZwhCYFEDbOJFyMtWJmfMN7T1A52bFQItNiu28WxQC7
iioGeNbMRioDS18kx5FCK87gVexdDjV4f0qiImEt74qIuEwunGUgGoPmbnDztsj9JtvtUH40SpjD
NAHpF1AuWmuSvMumqO/ITLVpbvBhcgN+8NilhcwZ3x03RmYDBcnkb3JDb5LHfr2ByjBEf9JSN6PP
HmaUBg7qZ+kEJudXdySBpdSPFaeTr5PGrTkaw2s8XqPQffsgB4KVSUztS90TCcWGKn3lgSSlXS5Z
L9UU93FJsnW15tvQNJbjNys7NUobfv2mnhEYWabcfzPnenNuO40+WQFx+cY69V48DtnUjE5JFYBf
TtL1IbufphvfhvZpjiSOS6tZDU+K4RUXn8gXQGdh8XphW3W7ZCq69tffqvx/yXgLv4vvbVNvIwo1
584huDXJuRMYZGon0IOvifPKEj39+EDiZxloqb9a7YjATy0gMQvoin6Uw5MMH/73VAJYN1OXQjNe
pV9todzBL87JMInOH4owdwrtjswX6A4OTu/7aq3oyRwiufqB8qeOtFqmn6Gaj//7LNBNSTgTuVce
0nI9eqVTliWaagZm6+OUg6qsQZ+kdP6G8YqqdGsRULqcb3P0rrGGsQhfUogu5ucXwMqTV4zlsjK1
7C+d7J/zeeiFCnmoRU1UAkFUV6riqbKOovWoKBgzFXkmsOkgeMRy+amn2YASgxlNwfB7EAjoeaqi
0Kwybsnh0CQ++qovRUP8fUPEKqf7Q+1S8OM3gp2af+gfNmo6crccN1zYKRYm3izdN0onln91BuMK
b8kSf6/3C2YgVKni7Ugy43Q0ABJRtPx1cjvXkASINxMvZomZ2+itj89/haVDPAByD/ONjNSHD4NR
TQtRN/+QIjJf5CMBl/MSKPFYlOOMShvpkDPru/HCubK9SdSHjUGrn56zvlJ/mL1Jn2xJJtJiv5PQ
sWipYcGYEaGMJ2d9pbsBrak7JwZM2VBFOplh1Y3iz1K9Bvkpg/2lZ/sAIv+fe6kWB+p28bBpce2w
09M6zdX6UV2nSx684W4RKdcjHhoBr2DFSI/3u0S96FSoeRvuCuso0N4QWJgF8Moi3XEbNbg7Dd2z
Zgh5auOKaUvSbRe00YPjmxJZ1b07cNzdcBWkaKhohsNa56Y6u0JLcHZbxtGf7SJtYMsuL3o2moge
MKu2GcufCZF4/Kvh2OVpOORhwSrGVQzeUgFZw/mLdmEoKXlh5yx2DJtAQzEYzRBr27xnDwbdSWtG
kKLW5iVhgjrQtLb58pz2JwwVxO0MvkBRKGquBaesDuNKza6r8Fpvwp7rtBO+ToY23Qnx2t2SZQnb
q+iw5uxwF14GO+A34aC4naesHMm6b6mbuomKWi5wYZluQanHnJqW+iDTcrLgEZyiofirLaZLjOrZ
ZtCH9+/0Y+kmJxCS6zXxnlHDKfwx9rHk9zWCBFdCVbAXrD/ZslWNe2LHMfPi74ELySHcoGjKU38s
F4dWS8vXo/QcfIAkCWzeF+d5yvMSBV16w4Pj3s66JwWN+++myo2TRGflnKiqhhjpmQ68zAFTHBty
WKfzbwRsnklZg5MQ11uaibjj4/g7o6SPz4Thz//P/Go3uqNKhSY0uajqVpLHsctvU/wwdOg83EA0
SZF/FZOk2DDSgy+CvFySxG85MZgXoREvVnYI5uXCRrFpM58shqY/nPLAqJ4+QsXfaetnTQRY0aJC
8jk7GZoWmE67AS46n8oZ7F+THmnLrdirogDPkQc4rPIl6jJRStW4v/4KiIkFDVAb5CIHYArcLJvP
NB6BxghMAsSYN6AieVC1P5RM8P8Tcp71MLYH9JGlNRs1BTRDdu3O5gguNy34eZi1/N5dy0EyXwl9
zqBCLkUvbpmtU2ITyncl1qOPFHsmwQNrCqF6VpRxbIzEXm5NerSscvSPeIDmVsOvfTlCVqKyZh5w
guoRz49sD+Yyeo1J1AUwj+IGnSye7Jo18lb15WtgbageTXCnjxXTKb7qfU80cwuFe53iZINBlu4m
YUNmEfb4/rfCbnQ3T5bj3vvZihm0NbYiDrZxN/mqoVe3ZyOz8o2bv0kn5yZ2Icr0Cpdq4Vf/cah9
eId10b/KBzhvtgiY1qKCSee2B4UNan1IbKFEGgkH4hEnsHt3+9syD3t0S8NvgcxmjZ2l7Kg+sVKg
JGsqUKCAF4Q5NV7VAukyq0y/kLZgEE36hs7a1w/Ce88lTOeWFhe1GzxUboEtWS4hUGjKoOFF4MV3
qFl/KrwQTAvyDanj97JPjJF5gCDXYyef4hJL2BG2LUDqYK/+XBDorAA+axas2al7fEqpZYlZtH5+
bBqtDYDq0AhUOCadVwOpvJqSetiXkcEcIqqZOisHKyVm7/yMm3JQZi/IiVcmW+k7yR8DIwi2EqsA
0tUtnUWFTZrtZo/OWw5A5J5EJ9V1E+yUSekEPw4TXdnT6AxjqoKvQbJoXp54yTwhGPf5kU2Scvn1
LX6/mYvMxTtaJLoCMaQY1KALogAPdsz3irSIB4Fy/kyAj4SR4qtpOc2su5JRyUKWHf22HS4XdzHe
XFg/CBSAgZjfvSZsLDZgwOipETpv6qfZUr3YQONfzxQatBb0GwSQa+qoJM3fPNBun0RYa2GdmDL5
KNvMNBRqctEZ7X+1xHu/f4IjBl+YoS01McmG8rHokL7oF/uTOr6zgXvSOIescxWGUh1dKwub49M5
3fK4JverdI01XoomeBdi4oNDESQtcpmBvtCw8AkzRqaJbg35ObYCkdEXbae1rqDduy1GoMQgVbKP
zQW887o9KyKoRX8PKBgTvhyUajIS7sfdr1IrlplW1pD7GTt5XIBWdtq+4B6vWLcYr7IlDwNZJsWH
wxL5p5TKlsj88dAdB1iof+cfzUeAjKrtoP6PrCM1aiLeGPtLI/PWkK0HjN1n621tS8r4bPly2yrn
lyR/zCZw52rrYiBg87asCMPjW0wnt7CkBROYBSKdsVUoUhPkHfrT7RkPn8kB4BugPd0WueDn7MZh
rJ/2j9K+pYNBMHtquziDm5JB2U/97Vpw9UzLIp68/7pRrFYXETACZalOr3RqE1f9cVuMkqi3ufRg
hu+N4Wz443UFzHWhIhy0b6yXb9HrSJeUuu53XtnDV5LBLcoXadckkgNh4AuJOJQjCGsFiWNmE8CR
ANCS/L4kccT/iYGvjMhJ58NoURiNSjW3Jit0yG92AgTdZu0HXSR9tIhwc+K1KbhuDS0UVVZWHETp
ZVj1W6GLv5GrrRDyTrUyHZ/IlJvS1wxGGi+kcD5r/QpWTrQACyM054zjp1SCEboXaJ2e/e0nozE2
21vOepKlESBcZza2PfkM+lbklgOIWZgR+3lmImGplxrjaczXv/EA6GW5rjgeZd9Bti96V88oDtGG
/iPT4H3whFb9AvHoM/Z8FKzH5+Fd/+yaMGmgbgzP/p0bE1ydLJRL6ZKzys3s8569Yl8FdOfEmWVs
VUkKabu1UEMkgJ3uaPns0nDvBWvrcMVan3LoYPfjoI02acCsOZdsi8hQvdRCpBs0jpjcxiDVbB5w
31VWEsQC04AOgJQsFaUAaI1jH9ihcBbsFudB4//vbR+Uv47NZJ0vwt8CD1LAM2VpALUm1lKOinj1
6exnOhLe6wGEgWsUjTe+sJo/rdiqf2+ik1rA1cQ4DTazkAjKWLHAOY+NYkCz4LYuRjPLkSzHhZd2
tezQDJyXdtFboGqtxB/+MMPlRgeUCYEaH31ujw9LLdKilKCTAjs6uEMqgEJx48Awk2GxDFYhl/TO
Ur2go/ggGWFlNchkRgbYeXEeZUprOPyuTgHc54AUY29oh7YSJ5am1xEY92QDluAhjNKQYvPw7k63
CgsAkpReiHOB8DGxqpXCuebbF/ra4ASXNrnN9hpwZ/Fcc2ZhA3TpBPTLiDDbLBEmR/dQWa/tCMf8
SC8PUvZPaF3VsbjIpfRT/I/IdjqeQKvMZjHu1t6Pbgg3FAQroQjGNOK7X9uVh5OMV1+edOO5omq4
ATUFwbw324Akj0qeMCsvbuZUK87cqnI/5yQ2wsrQpUuyB6V/ZlVnrGH45lSvPi82oSJzr5R3AfGS
GgrCHPY6QUtmkGNNJHFEe/UMe4CX399fnUAY+DC5b3EuN/c4mcx+U8ieuLMfLsXMc7GsgyFsoUhg
lcagreLkgfVRr7Y1FCz1/NklnSgh/PxqPw/fclg3xbk6Q3waJmGSDIyv49H+bOCDvUJ2RB7u3Qyl
XKXAUte6vlSkyKvZtSz39u1UER+NafdRY1EgknrodD1U3YR2lfqg5pLsM6DJKqf4fQS/gCY1GrUD
hFp3B/ROjzTa1ckI8yinVMPPtHUSF/8uDCKjtkg3hFxd5/xWEEAmQRFAccDlikDk8mNnaJ4ScJbK
zg+4oGZCG7mxFLsfaLJyo1uk77SUzlUffV5Rgfg0hRfcVCI+EWrdk0VIn/GB5WPx89W9Cb17lrQO
EiLW9Gxe5fbNPmrUHS3zgkEv7vkXE1v7RhCW9c2dF2m/i1zHiPSuu/NYEgxl7CxKBpCqQt10ruqS
hT3soopUA9MIjAjWqBvwEDMPB3aQMJgrr8v6GkhHyyXAyNFneclz6tE9aWDCfDYpuD9xr19KhdGx
s0PGcFWuJZzEKkPAdE4Lnz3qA3HPat0SIHR5ZOc1//qMuy5GDWLpm0Lzp3wo
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ebaz4205_mult_gen_0_3 is
  port (
    A : in STD_LOGIC_VECTOR ( 15 downto 0 );
    P : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ebaz4205_mult_gen_0_3 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ebaz4205_mult_gen_0_3 : entity is "ebaz4205_mult_by_4_0,mult_gen_v12_0_17,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ebaz4205_mult_gen_0_3 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ebaz4205_mult_gen_0_3 : entity is "mult_gen_v12_0_17,Vivado 2021.2";
end ebaz4205_mult_gen_0_3;

architecture STRUCTURE of ebaz4205_mult_gen_0_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \^p\ : STD_LOGIC_VECTOR ( 15 downto 2 );
  signal NLW_U0_P_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_PCASC_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_U0_ZERO_DETECT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_A_TYPE : integer;
  attribute C_A_TYPE of U0 : label is 0;
  attribute C_A_WIDTH : integer;
  attribute C_A_WIDTH of U0 : label is 16;
  attribute C_B_TYPE : integer;
  attribute C_B_TYPE of U0 : label is 1;
  attribute C_B_VALUE : string;
  attribute C_B_VALUE of U0 : label is "100";
  attribute C_B_WIDTH : integer;
  attribute C_B_WIDTH of U0 : label is 3;
  attribute C_CCM_IMP : integer;
  attribute C_CCM_IMP of U0 : label is 0;
  attribute C_CE_OVERRIDES_SCLR : integer;
  attribute C_CE_OVERRIDES_SCLR of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_ZERO_DETECT : integer;
  attribute C_HAS_ZERO_DETECT of U0 : label is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of U0 : label is 0;
  attribute C_MODEL_TYPE : integer;
  attribute C_MODEL_TYPE of U0 : label is 0;
  attribute C_MULT_TYPE : integer;
  attribute C_MULT_TYPE of U0 : label is 2;
  attribute C_OPTIMIZE_GOAL : integer;
  attribute C_OPTIMIZE_GOAL of U0 : label is 1;
  attribute C_OUT_HIGH : integer;
  attribute C_OUT_HIGH of U0 : label is 15;
  attribute C_OUT_LOW : integer;
  attribute C_OUT_LOW of U0 : label is 0;
  attribute C_ROUND_OUTPUT : integer;
  attribute C_ROUND_OUTPUT of U0 : label is 0;
  attribute C_ROUND_PT : integer;
  attribute C_ROUND_PT of U0 : label is 0;
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "zynq";
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of U0 : label is "soft";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of U0 : label is "true";
  attribute x_interface_info : string;
  attribute x_interface_info of A : signal is "xilinx.com:signal:data:1.0 a_intf DATA";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of A : signal is "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef";
  attribute x_interface_info of P : signal is "xilinx.com:signal:data:1.0 p_intf DATA";
  attribute x_interface_parameter of P : signal is "XIL_INTERFACENAME p_intf, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data} bitwidth {attribs {resolve_type generated dependency bitwidth format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type generated dependency signed format bool minimum {} maximum {}} value TRUE}}}} DATA_WIDTH 16}";
begin
  P(15 downto 2) <= \^p\(15 downto 2);
  P(1) <= \<const0>\;
  P(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.ebaz4205_mult_gen_0_3_mult_gen_v12_0_17
     port map (
      A(15 downto 14) => B"00",
      A(13 downto 0) => A(13 downto 0),
      B(2 downto 0) => B"000",
      CE => '1',
      CLK => '1',
      P(15 downto 2) => \^p\(15 downto 2),
      P(1 downto 0) => NLW_U0_P_UNCONNECTED(1 downto 0),
      PCASC(47 downto 0) => NLW_U0_PCASC_UNCONNECTED(47 downto 0),
      SCLR => '0',
      ZERO_DETECT(1 downto 0) => NLW_U0_ZERO_DETECT_UNCONNECTED(1 downto 0)
    );
end STRUCTURE;
