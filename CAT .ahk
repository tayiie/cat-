/*; 打开指定微信好友、群影子更新后放入Yzlibfunc.ahk
wechat(id){
	run,D:\Program Files (x86)\Tencent\WeChat\WeChat.exe
	Sleep,800
	Send,^{f}
	SendInput, % id
	Sleep,500
	send,{Enter}
	Return
	}
	;;托盘按钮
*/

;托盘设置
{
	Menu, Tray, NoStandard	;去掉标准托盘按钮
	Menu, Tray, DeleteAll	;清空托盘按钮
	Menu, Tray, Add,我老婆最棒啦,EXIT
	Menu, Tray,Icon, 我老婆最棒啦,%A_ScriptDir%\icon\胡桃.ico
	Menu, Tray, Add,
;应用菜单
{
	;Menu, 应用, Add, SciTE&S,TS
	;Menu, 应用, Icon,SciTE&S,
	;Menu, 应用, Add, Obsidian&O,TO
	;Menu, 应用, Icon,Obsidian&O,C:\Users\xiyan\AppData\Local\Obsidian\Obsidian.exe
;	Menu, 应用, Add, TIM&T, TT	; 添加子菜单到上面的菜单中.
	;Menu, 应用, Icon,TIM&T,D:\Program Files (x86)\Tencent\TIM\Bin\QQScLauncher.exe
	;Menu, 应用, Add, 微信&W, TW
	;Menu, 应用, Icon,微信&W,C:\Program Files (x86)\Tencent\WeChat\WeChat.exe
	Menu, 应用, Add, 笔记本&N, TN
	Menu, 应用, icon,笔记本&N, C:\Windows\System32\notepad.exe
	Menu, 应用, Add, 便笺&B, TB
  Menu, 应用, icon,便笺&B, %A_ScriptDir%\icon\宵宫.ico
	Menu, 应用, Add, Todo&T, TD
  Menu, 应用, icon,Todo&T, %A_ScriptDir%\icon\心海.ico
	Menu, Tray, Add, 应用&Y, :应用	; 创建第一个菜单的子菜单 (右箭头指示符). 当用户选择它时会显示第二个菜单.
	Menu, Tray,Icon, 应用&Y,%A_ScriptDir%\icon\钟离.ico
	}
;文件菜单
{

	Menu, 文件, Add, OneDrive&O, FF1
	Menu, 文件,icon, OneDrive&O,C:\Program Files\Microsoft OneDrive\OneDrive.exe
	Menu, 文件, Add, 下载&J, FF2
	Menu, 文件,Icon, 下载&J,%A_ScriptDir%\icon\下载.ico
	Menu, 文件, Add, 桌面&H, FF3
	Menu, 文件,Icon, 桌面&H,%A_ScriptDir%\icon\桌面.ico
	Menu, Tray, Add, 文件&F, :文件
	Menu, Tray,Icon, 文件&F,%A_ScriptDir%\icon\万叶.ico
}
;网页标签
{
	Menu, 网页, Add, B站&B, WW1
	Menu, Tray, Add, 网页&W, :网页
	Menu, Tray,Icon, 网页&W,%A_ScriptDir%\icon\刻晴.ico
}
	Menu, Tray, Add
	Menu, Tray, Add, 编辑&B, srfedit
	Menu, Tray,Icon, 编辑&B,%A_ScriptDir%\icon\班尼特.ico
	Menu, Tray, Add
	Menu, 设置, Add, 挂起&P, srfsuspend
	Menu, 设置,Icon, 挂起&P,%A_ScriptDir%\icon\皇女.ico
	Menu, 设置, Add, 重启&R, srfreload
	Menu, 设置,Icon, 重启&R,%A_ScriptDir%\icon\神理.ico
	Menu, 设置, Add, 退出&X, EXIT
	Menu, 设置,Icon, 退出&X,%A_ScriptDir%\icon\魈.ico
	Menu, Tray, Add, 设置&S, :设置
	Menu, Tray,Icon, 设置&S,%A_ScriptDir%\icon\风神.ico
	Menu, Tray, Add
	Menu, Tray, Add, 关闭&E, 关闭
	Menu, Tray,Icon, 关闭&E,%A_ScriptDir%\icon\可莉.ico
	Menu,Tray,Icon,%A_ScriptDir%\icon\ico.ico,,1
}

;变量
{
;菜单设置

;PrintScreen变量
{
CA:="{Home}"	;行首
CB:="{enter}"
CC:=""	;
CD:="{End}"	;行末
CE:="+{End}"	;页末
CF:=""
CG:=""
CH:=""
CI:="{right}"
CJ:="^{PgUp}"	;前翻标签页
CK:="^{PgDn}"	;后翻标签页
CL:="{!}[[]]{left 2}"
CM:="{PgDn}"	;下页
CN:="{PgUp}"	;上页
CO:="^+{Home}"	;选至文首
CP:="^+{End}"	;选至文末
CQ:="+{Home}"	;选至行首
CR:=""
CS:="{RButton}"	;菜单键
CT:=""
CU:="{left}"
CV:=""
CW:="{Home 2}+{End}"	;选中行
CX:="^!x"	;微信
CY:=""
CZ:="^!z"		;tim
Cright:="{right 5}"
Cleft:="{left 5}"
}

;LAT变量
{
;QQ变量
{
QQ1:="545951083"	;Q群1
QQ2:="717947647"
QQ3:="749442922"
Q1:="1515232989"	;QQ号1
Q2:="317983624"
}
}
}
;基础函数定义
{
;CAPS
{
CAPSLOCK & A::Send,%CA%
CAPSLOCK & B::Send,%CB%
CAPSLOCK & C::Send,%CC%
CAPSLOCK & D::Send,%CD%
CAPSLOCK & E::Send,%CE%
CAPSLOCK & F::Send,%CF%
CAPSLOCK & G::Send,%CG%
CAPSLOCK & H::Send,%CH%
CAPSLOCK & I::Send,%CI%
CAPSLOCK & J::Send,%CJ%
CAPSLOCK & K::Send,%CK%
CAPSLOCK & L::Send,%CL%
CAPSLOCK & M::Send,%CM%
CAPSLOCK & N::Send,%CN%
CAPSLOCK & O::Send,%CO%
CAPSLOCK & P::Send,%CP%
CAPSLOCK & Q::Send,%CQ%
CAPSLOCK & R::Send,%CR%
CAPSLOCK & S::Send,%CS%
CAPSLOCK & T::Send,%CT%
CAPSLOCK & U::Send,%CU%
CAPSLOCK & V::Send,%CV%
CAPSLOCK & W::Send,%CW%
CAPSLOCK & X::Send,%CX%
CAPSLOCK & Y::Send,%CY%
CAPSLOCK & Z::Send,%CZ%
CAPSLOCK & PrintScreen::Send,{F11}
CAPSLOCK & Right::Send,%Cright%
CAPSLOCK & Left::Send,%Cleft%
CAPSLOCK & [::

Send,^x
Sleep,10
Send,「」{Left}
Sleep,10
send ,^v
Sleep,10
send,{End}
return
PrintScreen & .::Send,>
}
;ALT
{
;QQ快速调用
/*{
fuin:="821298197"
<!1::
p := "tencent://message/?uin=" . Q1
Run,% p
return
<!2::
p := "tencent://message/?uin=" . Q2
Run,% p
return
#<!1::
p := "tencent://groupwpa/?subcmd=all&param="
o := "{""ExtParam"":{""appId"":""21""},""groupUin"":" . QQ1 . ",""visitor"":1}"
Loop, Parse, o
p .= Format("{1:02X}", Ord(A_LoopField))
Run,% p
return
#<!2::
p := "tencent://groupwpa/?subcmd=all&param="
o := "{""ExtParam"":{""appId"":""21""},""groupUin"":" . QQ2 . ",""visitor"":1}"
Loop, Parse, o
p .= Format("{1:02X}", Ord(A_LoopField))
Run, % p
return
#<!3::
p := "tencent://groupwpa/?subcmd=all&param="
o := "{""ExtParam"":{""appId"":""21""},""groupUin"":" . QQ3 . ",""visitor"":1}"
Loop, Parse, o
p .= Format("{1:02X}", Ord(A_LoopField))
Run, % p
return
}
*/
;快速打开对应文件夹
{
#IfWinActive ahk_exe Weixin.exe
<!f::run, C:\腾讯\xwechat_files\wxid_09tdgckk1xso21_f4bd\msg\file\%A_YYYY%-%A_MM%
#If
/*#IfWinActive ahk_exe TIM.exe
<!f::run, D:\OneDrive\文档\Tencent Files\821298197\FileRecv
#If
#IfWinActive ahk_exe WXWork.exe
<!f::run, D:\OneDrive\文档\WXWork\1688851243206759\Cache\File\%A_YYYY%-%A_MM%
#If

#IfWinActive ahk_exe PCManager.exe
<!f::run, D:\HONOR Magic-link\Backup\Photos\myphone_125826AF0D7B\工作照片
#If
*/
}
}
}
;菜单定义
关闭:
SendInput, {Esc}
return
标签:
MsgBox, 那是当然,我老婆最棒的啦o(*≧▽≦)ツ
return
;文件夹变量
{
FF1:
run,C:\OneDrive
return
FF2:
run,C:\Users\戏言\Downloads
return
FF3:
run,C:\Users\戏言\桌面
return
}
;网页变量
{
WW1:
run,www.bilibili.com
return
}
;菜单变量
{
TB:
run,C:\OneDrive\Apps\我的应用\便笺
return
TD:
run,C:\OneDrive\Apps\我的应用\Todo
return
TG:
run,C:\Program Files (x86)\WXWork\WXWork.exe
return
TN:
run,C:\Windows\System32\notepad.exe
return
TT:
run,C:\Program Files (x86)\Tencent\TIM\Bin\QQScLauncher.exe
return
TO:
run,C:\Users\xiyan\AppData\Local\Obsidian\Obsidian.exe
return
TW:
run,D:\Program Files (x86)\Tencent\WeChat\WeChat.exe
return
}
srfedit:
Edit
return

EXIT:
ExitApp
return

srfsuspend:
suspend,Toggle
return

srfreload:
reload
return
^PrintScreen::menu,Tray,Show
return
#InstallKeybdHook
Joy10::Send {Media_Play_Pause}
JOY9::Send {Click}
2Joy10::Send {Media_Play_Pause}
2JOY9::Send {Click}
3Joy10::Send {Media_Play_Pause}
3JOY9::Send {Click}
4Joy10::Send {Media_Play_Pause}
4JOY9::Send {Click}
return

#IfWinActive, ahk_exe explorer.exe ahk_class CabinetWClass
;判定是否在资源管理器窗口
~LButton::
MouseGetPos, OutputVarX, OutputVarY, OutputVarWin, OutputVarControl
PixelGetColor, OutputVarColor, OutputVarX, OutputVarY, RGB
;if (A_PriorHotKey = "~LButton" and A_TimeSincePriorHotkey < 400) and (OutputVarColor = "0xFFFFFF")
;判定是否点击的点是白色
;send !{up} ;如果是则发送alt+上键
if (A_PriorHotKey = "~LButton" and A_TimeSincePriorHotkey < 400) and (OutputVarColor = "0x191919")
;判定是否点击的点是黑色
SendInput !{up} ;如果是则发送alt+上键
return
#if
