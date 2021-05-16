
    memFrom, memTo, lib, num, lim, results, src, ok = 0, -1, nil, 0, 32, {}, nil, false function name(n) local srd = gg;if lib ~= n then lib = n ranges = srd.getRangesList(lib) if #ranges == 0 then else memFrom = ranges[1].start memTo = ranges[#ranges]['end'] end end end function hex2tbl(hex) ret = {} hex:gsub('%S%S', function (ch) ret[#ret + 1] = ch return '' end) return ret end function original(orig) tbl = hex2tbl(orig) len = #tbl if len == 0 then return end used = len if len > lim then used = lim end s = '' for i = 1, used do if i ~= 1 then s = s..';' end v = tbl[i] if v == '??' or v == '**' then v = '0~~0' end s = s..v..'r' end s = s..'::'..used gg.searchNumber(s, 1, false, gg.SIGN_EQUAL, memFrom, memTo) if len > used then for i = used + 1, len do v = tbl[i] if v == '??' or v == '**' then v = 256 else v = ('0x'..v) + 0 if v > 127 then v = v - 256 end end tbl[i] = v end end found = gg.getResultCount(); results = {} count = 0 checked = 0 while true do if checked >= found then break end all = gg.getResults(8) total = #all start = checked if checked + used > total then break end for i, v in ipairs(all) do v.address = v.address + myoffset end gg.loadResults(all) while start < total do good = true offset = all[1 + start].address - 1 if used < len then get = {} for i = lim + 1, len do get[i - lim] = {address = offset + i, flags = 1, value = 0} end get = gg.getValues(get) for i = lim + 1, len do ch = tbl[i] if ch ~= 256 and get[i - lim].value ~= ch then good = false break end end end if good then count = count + 1 results[count] = offset checked = checked + used else del = {} for i = 1, used do del[i] = all[i + start] end gg.removeResults(del) end start = start + used end end end function replaced(repl) num = num + 1 tbl = hex2tbl(repl) if src ~= nil then source = hex2tbl(src) for i, v in ipairs(tbl) do if v ~= '??' and v ~= '**' and v == source[i] then tbl[i] = '**' end end src = nil end cnt = #tbl set = {} s = 0 for _, addr in ipairs(results) do for i, v in ipairs(tbl) do if v ~= '??' and v ~= '**' then s = s + 1 set[s] = { ['address'] = addr + i,  ['value'] = v..'r', ['flags'] = 1,} end end end if s ~= 0 then gg.setValues(set) end ok = true 
end


Bar = " 🇲🇦 🕑TSNA BRO ☺️ ... 🕑 🇲🇦 \n💣💣💣💣💣💣"
for i = 1, 7 do
gg.sleep(500)
Bar = Bar:gsub("💣", "💥", 1)
gg.toast(Bar)
end
gg.alert("CREATORS : \n\n 🇲🇦 ANAS 🇲🇦\n\n\n \n\n\n", "💗THANK YOU💗")
if os.date("%Y%m%d") > "25210727 " then
gg.alert("┏━───────╯⌬╰───────━┓\n\nSCRIPT \n\n\n ☢TSALAT SCRIPT DOZ 3ND an4s_btl☢\n┗━───────╮⌬╭───────━┛\n")
print("☆┌─┐ .─┐☆👤FREE FIRE👤ACTUAL★")
print("│▒│ /▒/Version: 🆅︎ 80.1")
print("│▒│/▒/ CREADOR 👤: 😉 LXR TEAM 😉 ")
print("│▒/▒/─┬─┐ CREADORES : 🇲🇦ISHAK, 🇲🇦ANAS")
print("│▒│▒|▒│▒│ 😈 GRACIAS POR")
print("┌┴─┴─┐-┘─┘ UTILIZAR MI")
print("│▒┌──┘▒▒▒SCRIPT VE A MI")
print("└┐▒▒▒▒▒▒┌┘ CANAL Y DESCARGA")
print("└┐▒▒▒▒┌┘LA ACTUALIZAZION 😈")
os.exit()
end
local info = gg.getTargetInfo();local localpack = info.nativeLibraryDir;local localdata = info.dataDir
if localdata == "/data/user/0/io.va.exposed" then localpack = "/data/data/io.va.exposed/virtual/data/app/com.dts.freefireth/lib/"end
local ASUEKKK = gg;local Jemboet = ASUEKKK.getRangesList
function JIHEDYT(Offset, Replaced)
local t = Jemboet(localpack.."/libil2cpp.so")
if #t == 0 then gg.alert("⚠Make Sure You Are In The Game To Run The Script⚠")
return os.exit(print("⚠Make Sure You Are In The Game To Run The Script⚠"))else 
for Mpek, JncK in pairs(t) do local t = gg.getValues({{address = JncK.start, flags = gg.TYPE_DWORD}, {address = JncK.start + 0x12, flags = gg.TYPE_WORD}})
if t[1].value == 0x464C457F then Offset = JncK["start"] + Offset end assert(Offset ~= nil, "[rwmem]: error, provided address is nil.") Mpekrw = {}
if type(Replaced) == "number" then Mpek = "" for Mpek = 1, Replaced do Mpekrw[Mpek] = {address = (Offset - 1) + Mpek, flags = gg.TYPE_BYTE} end
for v, JncK in ipairs(gg.getValues(Mpekrw)) do Mpek = Mpek .. string.format("%02X", JncK.value & 0xFF) end return Mpek end
Byte = {} Replaced:gsub("..", function(x) Byte[#Byte + 1] = x Mpekrw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"}end)gg.setValues(Mpekrw)
end;end;end
function UN(Offset, Replaced)
local t = Jemboet(localpack.."/libunity.so")
if #t == 0 then gg.alert("⚠Make Sure You Are In The Game To Run The Script⚠")
return os.exit(print("⚠Make Sure You Are In The Game To Run The Script⚠"))else 
for Mpek, JncK in pairs(t) do local t = gg.getValues({{address = JncK.start, flags = gg.TYPE_DWORD}, {address = JncK.start + 0x12, flags = gg.TYPE_WORD}})
if t[1].value == 0x464C457F then Offset = JncK["start"] + Offset end assert(Offset ~= nil, "[rwmem]: error, provided address is nil.") Mpekrw = {}
if type(Replaced) == "number" then Mpek = ""for Mpek = 1, Replaced do Mpekrw[Mpek] = {address = (Offset - 1) + Mpek, flags = gg.TYPE_BYTE} end
for v, JncK in ipairs(gg.getValues(Mpekrw)) do Mpek = Mpek .. string.format("%02X", JncK.value & 0xFF) end return Mpek end
Byte = {} Replaced:gsub("..", function(x) Byte[#Byte + 1] = x Mpekrw[#Byte] = {address = (Offset - 1) + #Byte, flags = gg.TYPE_BYTE, value = x .. "h"}end)gg.setValues(Mpekrw)
end;end;end





function START()
if gg.choice({
" ˡˣʳ⇝ DESBANE 🔐",
" ⚠️ EXIT ⚠️ "
}, nil, "●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●\nঔৣ͜͡➳ Script ˡˣʳ 🅥︎ 198.2\n༒︎➳ Creators 🔥 TC GAMER YT AND LUXTAR YT🔥\n༒︎➳ Expire: 27/04/2021\n●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●") == 1 then
DESBANEOS()
end
 if gg.choice({

" ˡˣʳ⇝ DESBANE 🔐",
" ⚠️ EXIT ⚠️ "
}, nil, "●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●\nঔৣ͜͡➳ Script ˡˣʳ 🅥︎ 198.2\n༒︎➳ Creators 🔥 TC GAMER YT AND LUXTAR YT🔥\n༒︎➳ Expire: 27/04/2021\n●▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬▬●") == 2 then
exit()
end
end


function DESBANEOS()
R = gg.multiChoice({
"OPCIÓN 1🔐",
"OPCIÓN 2🔏",
"OPCIÓN 3🔑",
"OPCIÓN 4🔒",
"OPCIÓN 5🔏",
"❌ANTES❌"
}, nil, "🔏 DESBANEOS 🔐")
if R == nil then
else
if R[1] == true then
E1()
end
if R[2] == true then
E2()
end
if R[3] == true then
E3()
end
if R[4] == true then
E4()
end
if R[5] == true then
E5()
end
if R[6] == true then
START()
end
end
XGCK = -1
end

function E1()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 23986648
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults(8)
gg.toast("Activado")
end

function E2()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 23986920
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults(8)
gg.toast("Activado")
end

function E3()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 23993960
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults(8)
gg.toast("Activado")
end

function E4()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 23986648
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults(8)
gg.toast("Activado")
end

function E5()
gg.setRanges(gg.REGION_CODE_APP)
name("libil2cpp.so")
myoffset = 23986648
original("7F 45 4C 46 01 01 01 00")
replaced("00 00 A0 E3 1E FF 2F E1")
gg.clearResults(8)
gg.toast("Activado")
end



function exit()
if gg.alert("ＣＲＥＡＤＯＲE S: \n\n🔥 ANAS🔥", " 💗GRACIAS CRACKS💗") ~= 1 then
print("☆┌─┐ .─┐☆👤FREE FIRE👤 Ⓥ ACTUAL★")
print("│▒│ /▒/Version: 🆅︎ 13.7")
print("│▒│/▒/ CREADOR👤: 😉 LXR TEAM 😉 ")
print("│▒/▒/─┬─┐ CREADORES : 🇲🇦ISHAK , 🇲🇦ANAS")
print("│▒│▒|▒│▒│ 😈 GRACIAS POR")
print("┌┴─┴─┐-┘─┘ UTILIZARMI")
print("│▒┌──┘▒▒▒SCRIPT TU CUENTA")
print("└┐▒▒▒▒▒▒┌┘ ESTA SEGURA")
print("└┐▒▒▒▒┌┘SEGUN TUUSO ??")
os.exit()
end
print("☆┌─┐ .─┐☆👤FREE FIRE👤 Ⓥ ACTUAL★")
print("│▒│ /▒/Version: 🆅︎ 13.7")
print("│▒│/▒/ CREADOR👤: 😉 LXR TEAM 😉 ")
print("│▒/▒/─┬─┐ CREADORES : 🇲🇦ANAS , 🇲🇦ISHAK")
print("│▒│▒|▒│▒│ 😈 GRACIAS POR")
print("┌┴─┴─┐-┘─┘ UTILIZARMI")
print("│▒┌──┘▒▒▒SCRIPT TU CUENTA")
print("└┐▒▒▒▒▒▒┌┘ ESTA SEGURA")
print("└┐▒▒▒▒┌┘SEGUN TUUSO 😈")
os.exit()
end
 



function noselect()
gg.toast("LXR TEAM ")
end

while true do
if gg.isVisible(true) then
XGCK = 1
gg.setVisible(false)
gg.clearResults()
os.remove(gg.EXT_STORAGE .. "/😉😊")
end
if XGCK == 1 then
START()
end
XGCK = -1
end
