# title:   game title
# author:  game developer, email, etc.
# desc:    short description
# site:    website link
# license: MIT License (change this to your license of choice)
# version: 0.1
# script:  ruby

$t=0
$x=96
$y=24
$tic=0

$lx=$x
$ly=$y

FR0_Id=260
FR1_Id=356
FRW0_Id=256
FRW1_Id=352
RT0_Id=268
RTW0_Id=360
RTW1_Id=364

def TIC
	$y-=1 if btn 0
	$y+=1 if btn 1
	$x-=1 if btn 2
	$x+=1 if btn 3
	
	flip=0
	sp_id=if ($t%30)<15 then
	    FR0_Id
			else
			  FR1_Id
			end
	
	if $y!=$ly then
	  if $t%16<4 then
			  sp_id=FR0_Id
			elsif $t%16<8 then
			  sp_id=FRW0_Id
			elsif $t%16<12
			  sp_id=FR0_Id
			else
			  sp_id=FRW1_Id
			end
	end
	
	if $x!=$lx then
		 if $t%16<4 then
			  sp_id=RT0_Id
			elsif $t%16<8 then
			  sp_id=RTW0_Id
			elsif $t%16<12
			  sp_id=RT0_Id
			else
			  sp_id=RTW1_Id
			end
			flip=1 if $x>$lx
	end

	cls 13
	spr(sp_id, $x, $y, 0, 1, flip, 0, 4, 6)

 text="Call me RORONA!"
	print(text,85,85,15)
	print(text,84,84,3)
	$t+=1
	$lx=$x; $ly=$y
end

# <TILES>
# 001:eccccccccc888888caaaaaaaca888888cacccccccacc0ccccacc0ccccacc0ccc
# 002:ccccceee8888cceeaaaa0cee888a0ceeccca0ccc0cca0c0c0cca0c0c0cca0c0c
# 003:eccccccccc888888caaaaaaaca888888cacccccccacccccccacc0ccccacc0ccc
# 004:ccccceee8888cceeaaaa0cee888a0ceeccca0cccccca0c0c0cca0c0c0cca0c0c
# 017:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
# 018:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
# 019:cacccccccaaaaaaacaaacaaacaaaaccccaaaaaaac8888888cc000cccecccccec
# 020:ccca00ccaaaa0ccecaaa0ceeaaaa0ceeaaaa0cee8888ccee000cceeecccceeee
# </TILES>

# <SPRITES>
# 000:0000000000000000000000000000000000000000000000000000000300000033
# 001:000000000000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc
# 002:00000000aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33
# 003:0000000000000000000000000000000000000000000000003000000033000000
# 004:0000000000000000000000000000000000000000000000000000000300000033
# 005:000000000000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc
# 006:00000000aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33
# 007:0000000000000000000000000000000000000000000000003000000033000000
# 008:0000000000000000000000000000000000000000000000000000000300000033
# 009:000000000000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc
# 010:00000000aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33
# 011:0000000000000000000000000000000000000000000000003000000033000000
# 013:0000000000000aaa0000aaaa000aaaac000aaacc000aaccc0000cccc0000cccc
# 014:0000000000000000c0000000cc000000ccc00000cccc0000cccc3300ccc33330
# 016:0000003300000333000033330003333300033332000333320003332200000222
# 017:3333cccc3333cccc3333cccc222222222242242222422422244224222ffff444
# 018:ccccc333ccccc333ccccc33322222222242422222424222224242442444ffff2
# 019:3300000033300000333300003333300022333000223330002233300022200000
# 020:0000003300000333000033330003333300033332000333320003332200000222
# 021:3333cccc3333cccc3333cccc222222222242242222422422244224222ffff444
# 022:ccccc333ccccc333ccccc33322222222242422222424222224242442444ffff2
# 023:3300000033300000333300003333300022333000223330002233300022200000
# 024:0000003300000333000033330003333300033332000333320003332200000222
# 025:3333cccc3333cccc3333cccc222222222242242222422422244224222ffff444
# 026:ccccc333ccccc333ccccc33322222222242422222424222224242442444ffff2
# 027:3300000033300000333300003333300022333000223330002233300022200000
# 028:0000000000000000000000000000000200000002000000020000002200000022
# 029:000ccccc000ccccc02222ccc222222cc2242222c224222222242222222442222
# 030:cc333333cc333333c3333333c333333333333333333333332333333322233333
# 031:00000000300000003330000033300000333c000033ccc0003ccccc003ccccc00
# 032:0000022200000222000002220000022200000222000002220000022200000222
# 033:f4ff4444f4ff444444ff444444aa444444aa4444444444443344444433444444
# 034:4444ff4f4444ff4f4444ff444444aa444444aa44444444444444443344444433
# 035:2220000022200000222000002220000022200000222000002220000022200000
# 036:0000022200000222000002220000022200000222000002220000022200000222
# 037:f4ff4444f4ff444444ff444444aa444444aa4444444444443344444433444444
# 038:4444ff4f4444ff4f4444ff444444aa444444aa44444444444444443344444433
# 039:2220000022200000222000002220000022200000222000002220000022200000
# 040:0000022200000222000002220000022200000222000002220000022200000222
# 041:f4ff4444f4ff444444ff444444aa444444aa4444444444443344444433444444
# 042:4444ff4f4444ff4f4444ff444444aa444444aa44444444444444443344444433
# 043:2220000022200000222000002220000022200000222000002220000022200000
# 044:0000002200000002000000000000000000000000000000000000000000000000
# 045:2fff422224f4f42224f4f42204a4442204a44422044444220444444244444442
# 046:222233332222233c222223cc222222cc422222cc4222222c4222222242222222
# 047:cccccc00cccccc00cccccc00ccccc000ccccc000cccc000022c0000022000000
# 048:0000022200000022000000020000000000000000000000000000000000000000
# 049:444444442444334422244333002244440002224400cc44440cccc444333ccccc
# 050:44444444433444423344422244442200422200004444cc0044ccccc0cccc3330
# 051:2220000022000000200000000000000000000000000000000000000000000000
# 052:0000022200000022000000020000000000000000000000000000000000000000
# 053:444444442444334422244333002244440002224400cc44440cccc444333ccccc
# 054:44444444433444423344422244442200422200004444cc0044ccccc0cccc3330
# 055:2220000022000000200000000000000000000000000000000000000000000000
# 056:0000022200000022000000020000000000000000000000000000000000000000
# 057:444444442444333322244333002244440002224400cc44440cccc444333ccccc
# 058:44444444333444423344422244442200422200004444cc0044ccccc0cccc3330
# 059:2220000022000000200000000000000000000000000000000000000000000000
# 061:44444444443334440433444404444444000000040000000400000ccc0000ccc3
# 062:42222222442222224422222244222222442222224cc22002ccc0000033c00000
# 063:2200000022000000220000002000000020000000000000000000000000000000
# 065:333cccff333ccccc3333ccccccc322224442222f003222220032222f00322222
# 066:fccc3330ccccccc0ccc344402223444022224440222230002222300022223000
# 069:333cccff333cccccccc3cccc444322224442222f444222220032222f00322222
# 070:fccc3330cccc3330ccc3ccc02223444022224440222244402222300022223000
# 073:333cccff333cccccccc3cccc444322224442222f444222220032222f00322222
# 074:fccc3330cccc3330ccc3ccc02223444022224440222244402222300022223000
# 077:0000ccc30000ccc300000ccc0000002400000024000002240000022200000222
# 078:3330000033330000cc3300004433000044330000443300002223000022233000
# 081:033222220333444300002f2000002220000022200000fff00000000000000000
# 082:22223300444333004440000044400000222000002f2000002220000022200000
# 085:0332222203334443000044400000222000002f20000022200000222000002220
# 086:222233004443330044400000222000002f200000222000002220000022200000
# 089:0332222203334443000044400000222000002f20000022200000222000002220
# 090:222233004443330044400000222000002f200000222000002220000022200000
# 093:0000000400000004000000020000000200000002000000020000222200002222
# 094:4403300044033000220000002200000022000000220000002200000022000000
# 096:0000000000000000000000000000000000000000000000000000000300000033
# 097:000000000000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc
# 098:00000000aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33
# 099:0000000000000000000000000000000000000000000000003000000033000000
# 100:0000000000000000000000000000000000000000000000030000003300000033
# 101:0000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc3333cccc
# 102:aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33ccccc333
# 103:0000000000000000000000000000000000000000300000003300000033000000
# 105:000000000000000000000aaa0000aaaa000aaaac000aaacc000aaccc0000cccc
# 106:000000000000000000000000c0000000cc000000ccc00000cccc0000cccc3300
# 109:000000000000000000000aaa0000aaaa000aaaac000aaacc000aaccc0000cccc
# 110:000000000000000000000000c0000000cc000000ccc00000cccc0000cccc3300
# 112:0000003300000333000033330003333300033332000333320003332200000222
# 113:3333cccc3333cccc3333cccc222222222242242222422422244224222ffff444
# 114:ccccc333ccccc333ccccc33322222222242422222424222224242442444ffff2
# 115:3300000033300000333300003333300022333000223330002233300022200000
# 116:0000033300003333000333330003333200033332000333220000022200000222
# 117:3333cccc3333cccc222222222242242222422422244224222ffff444f4ff4444
# 118:ccccc333ccccc33322222222242422222424222224242442444ffff24444ff4f
# 119:3330000033330000333330002233300022333000223330002220000022200000
# 120:0000000000000000000000000000000000000002000000020000000200000022
# 121:0000cccc000ccccc000ccccc02222ccc222222cc2242222c2242222222422222
# 122:ccc33330cc333333cc333333c3333333c3333333333333333333333323333333
# 123:0000000000000000300000003330000033300000333c000033ccc0003ccccc00
# 124:0000000000000000000000000000000000000002000000020000000200000022
# 125:0000cccc000ccccc000ccccc02222ccc222222cc2242222c2242222222422222
# 126:ccc33330cc333333cc333333c3333333c3333333333333333333333323333333
# 127:0000000000000000300000003330000033300000333c000033ccc0003ccccc00
# 128:0000022200000222000002220000022200000222000002220000022200000222
# 129:f4ff4444f4ff444444ff444444aa444444aa4444444444443344444433444444
# 130:4444ff4f4444ff4f4444ff444444aa444444aa44444444444444443344444433
# 131:2220000022200000222000002220000022200000222000002220000022200000
# 132:0000022200000222000002220000022200000222000002220000022200000222
# 133:f4ff444444ff444444aa444444aa444444444444334444443344444444444444
# 134:4444ff4f4444ff444444aa444444aa4444444444444444334444443344444444
# 135:2220000022200000222000002220000022200000222000002220000022200000
# 136:0000002200000022000000020000000000000000000000000000000000000000
# 137:224422222fff422224f4f42224f4f42204a4442204a444220444442204444442
# 138:22233333222233332222233c222223cc222222cc422222cc4222222c42222222
# 139:3ccccc00cccccc00cccccc00cccccc00ccccc000ccccc000cccc000022c00000
# 140:0000002200000022000000020000000000000000000000000000000000000000
# 141:224422222fff422224f4f42224f4f42204a4442204a444220444442204444442
# 142:22233333222233332222233c222223cc222222cc422222cc4222222c42222222
# 143:3ccccc00cccccc00cccccc00cccccc00ccccc000ccccc000cccc000022c00000
# 144:0000022200000022000000020000000000000000000000000000000000000000
# 145:444444442444334422244333002244440002224400cc4444ccccc444333ccccc
# 146:44444444433444423344422244442200422200004444cc0044ccccc0cccc3330
# 147:2220000022000000200000000000000000000000000000000000000000000000
# 148:0000002200000002000000000000000000000000000000000000000000000000
# 149:2444334422244333002244440002224400cc44440cccc444333ccccc333cccff
# 150:433444423344422244442200422200004444cc0044ccccc0cccc3330fccc3330
# 151:2200000020000000000000000000000000000000000000000000000000000000
# 153:4444444244444444443334440433444404444444000000040000000400000ccc
# 154:4222222242222222442222224422222244222222442222224cc22002ccc00000
# 155:2200000022000000220000002200000020000000200000000000000000000000
# 157:4444444244444444443334440433444404444444000000040000000400000ccc
# 158:4222222242222222442222224422222244222222442222224cc22002ccc00000
# 159:2200000022000000220000002200000020000000200000000000000000000000
# 161:333cccffcccccccc4443cccc444322224442222f003222220032222f00322222
# 162:fccc3330cccc3330ccc333302223ccc022224440222230002222300022223000
# 165:333cccccccc3cccc444322224442222f444222220032222f0032222203322222
# 166:cccc3330ccc3ccc0222344402222444022224440222230002222300022223300
# 169:0000ccc30000cccc0000cccc00000ccc000444c2000444420004422200000222
# 170:33c0000033300000ccc30000ccc3000022030000222300002223300022233000
# 173:0000ccc30000ccc30000ccc300000ccc00000022000000220000022200000222
# 174:33c00000333000003cc30000ccc30000cc440000244440002244400022233000
# 177:033222220333444300004440000044400000222000002f200000222000002220
# 178:22223300444333002f2000002220000022200000fff000000000000000000000
# 181:0333444300004440000044400000222000002f20000022200000222000002220
# 182:444333004440000044400000222000002f200000222000002220000022200000
# 185:0000222200000440000044400000240000022200222222002222200000220000
# 186:2223330044403300044400000042000000222000002220000022200022220000
# 189:0000222200000440000044400000240000022200222222002222200000220000
# 190:2223330044403300044400000042000000222000002220000022200022220000
# 192:0000000000000000000000000000000000000000000000000000000300000033
# 193:000000000000000a00000caa00000caa033cccaa333cccca333ccccc333ccccc
# 194:00000000aa000000aaac0000aaac0000aaaccc30aacccc33cccccc33cccccc33
# 195:0000000000000000000000000000000000000000000000003000000033000000
# 208:0000003300000333000033330003333300033332000333320003332200000222
# 209:3333cccc3333cccc3333cccc222222222242242222422422244224222ffff444
# 210:ccccc333ccccc333ccccc33322222222242422222424222224242442444ffff2
# 211:3300000033300000333300003333300022333000223330002233300022200000
# 224:0000022200000222000002220000022200000222000002220000022200000222
# 225:f4ff4444f4ff444444ff444444aa444444aa4444444444443344444433444444
# 226:4444ff4f4444ff4f4444ff444444aa444444aa44444444444444443344444433
# 227:2220000022200000222000002220000022200000222000002220000022200000
# 240:0000022200000022000000020000000000000000000000000000000000000000
# 241:444444442444334422244333002244440002224400cc44440cccc444333ccccc
# 242:44444444433444423344422244442200422200004444cc0044ccccc0cccc3330
# 243:2220000022000000200000000000000000000000000000000000000000000000
# </SPRITES>

# <WAVES>
# 000:00000000ffffffff00000000ffffffff
# 001:0123456789abcdeffedcba9876543210
# 002:0123456789abcdef0123456789abcdef
# </WAVES>

# <SFX>
# 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
# </SFX>

# <TRACKS>
# 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
# </TRACKS>

# <PALETTE>
# 000:1a1c2c5d275db16953faa5a5ffde99a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
# </PALETTE>
