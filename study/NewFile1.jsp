<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>21点游戏</title>
<style type="text/css">
<!--
body {  font-family: "宋体"; font-size: 9pt; margin-top: 0px; margin-left: 4px; margin-right: 0px}
A { COLOR: black; FONT-SIZE: 13px; FONT-WEIGHT: 400; TEXT-DECORATION: none }
 A:hover { COLOR: red; FONT-SIZE: 13px; FONT-WEIGHT: 400; TEXT-DECORATION: underline }
a:active     { font: 9pt "宋体"; cursor: hand; color: #FF0033 }
--></style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body bgcolor="#fef4d9">
<br>
<center><font color=red face="隶书" size=6>21点游戏</font></center>
<br>
<center>
<table border=5 bordercolor=blue borderlight=green>
<tr><td align=center><font size=5 color=red face="Arial, Helvetica, sans-serif"><strong>下面框中为脚本显示区</strong></font></td></tr>
<tr><td align=center height=80 width=400>
<SCRIPT LANGUAGE="JavaScript">

<!-- Hide from non-JavaScript browsers

function random(maxValue)
//定义一个随机函数
{

   day = new Date();

   hour = day.getHours();

   min = day.getMinutes();

   sec = day.getSeconds();

   return (((hour + 1) * (min + 1) * sec) % maxValue) + 1;

}
//获取当前时间
function pickSuit()
//定义一个函数pickSuit
{

   suit = random(4);
 //生成随机数赋值给suit
if(suit == 1)

      return "Spades";
//如果值是1，返回Spades
if(suit == 2)

      return "Clubs";
//如果值是2，返回Clubs
if(suit == 3)

      return "Diamonds";
//如果值是3，返回Diamonds
return "Hearts";

}

function cardName(card)
//定义卡片值
{

   if(card == 1)

      return "Ace";
//如果卡片值是1，返回Ace
if(card == 11)

      return "Jack";
//如果卡片值是11，返回Jack
if(card == 12)

      return "Queen";
//如果卡片值是12，返回Queen
if(card == 13)

      return "King";
//如果卡片值是13，返回King
return "" + card;

}

function cardValue(card)
//定义 一个参数为card，在函数cardValue调用时进行传参
{

   if(card == 1)

      return 11;
//如果卡片值是1，返回11
if(card > 10)

      return 10;
//如果卡片值大于10，返回10
return card;

}

function PickACard(strWho)
//定义 一个参数为strWho，在函数PickACard调用时进行传参
{

   card = random(13);
//生成随机数赋值给card
   suit = pickSuit();
//调用的函数的返回值
//alert(strWho + " picked the " + cardName(card) + " of " + suit);

return cardValue(card);
//返回cardValue的参数
}

function NewHand(form)
//定义一个函数NewHand，在函数进行调用时传递参数，form为参数名
{

   form.dealer.value = 0;
// 庄家的值是0
   form.you.value = 0;
//你的值是0
form.dealer.value = eval(form.dealer.value) + PickACard("Dealer");
//庄家的值+随机生成点数
   form.you.value = eval(form.you.value) + PickACard("You");
//=你的值+随机生成点数
}

function Dealer(form)
//定义一个函数Dealer，在函数进行调用时传递参数，form为参数名
{

   while(form.dealer.value < 17)
//如果值小于17
   {

      form.dealer.value = eval(form.dealer.value) + PickACard("Dealer");
//继续加随机数
   }

}

function User(form)
//你的值加随机数
{

   form.you.value = eval(form.you.value) + PickACard("You");

if(form.you.value > 21)
//如果你的值大于21
   {

      alert("不好意思，你爆了!");
//提示不好意思，你爆了！
   }

}

function LookAtHands(form)
//定义一个函数LookAtHands，在函数进行调用时传递参数，form为参数名
{

   if(form.dealer.value > 21)
//如果庄家的值大于21
   {

      alert("庄家爆了，你赢!");
//提示庄家爆了，你赢！
   }

   else   if(form.you.value > form.dealer.value)
//否则如果你的值大于庄家的值
   {

      alert("你赢了!");
//提示你赢了
   }

   else

   if(form.dealer.value == form.you.value)
//如果你和庄家值相等
   {

      alert("Push!");
//提示push
   }

   else

   {

      alert("庄家赢了!");
//提示庄家赢了！
   }

}

//-->

</SCRIPT>
<FORM>
<TABLE BORDER=3>
<TR>
  <TD>庄家有</TD>
  <TD><INPUT TYPE=TEXT NAME=dealer>点</TD>
</TR>
<TR> <TD>你有</TD>
  <TD><INPUT TYPE=TEXT NAME=you>点</TD>
</TR>
</TABLE>
<INPUT TYPE=BUTTON VALUE="再要一张" onClick=User(this.form)>
<INPUT TYPE=BUTTON VALUE="亮牌" onClick="Dealer(this.form);LookAtHands(this.form);">
<INPUT TYPE=BUTTON VALUE="重新发牌" onClick=NewHand(this.form)>
</td></tr></table></center>
</body>
</html>