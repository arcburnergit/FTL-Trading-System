
--Button to open the trading menu
--local menuButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_off.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--local menuButtonOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_on.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--local menuButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_button_select2.png", 1207, 608, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Menu Back and stencil
local backImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backImageStencil = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_stencil.png", -650, -320, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Tab Buttons
local tab1Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab1.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab2Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab2.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab3Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab3.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab4Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab4.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--local tab5Image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab5.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab1ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab1_select.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab2ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab2_select.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab3ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab3_select.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local tab4ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab4_select.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--local tab5ImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_tab5_select.png", 325-48, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Tabs Static Background
--local backImageTab1 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_tab1.png", 325, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backImageTab2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_tab2.png", -143, -143, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backImageTab4 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_main_tab4.png", 325, 78, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--planetImages for tab2
local planetImageTag = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planetselect.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planetselect3.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planetImageList = {
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet1.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet2.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet3.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet4.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet5.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet6.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet7.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planet8.png", -45, -45, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}

--name tag on bottom
local planettag3l = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3l.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag3c = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3c.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag3r = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag3r.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--name tag on top
local planettag1l = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1l.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag1c = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1c.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local planettag1r = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/planettag1r.png", -45, -45-17, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--<Back button
local backButtonTab2Off = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_off.png", 345, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backButtonTab2On = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_on.png", 345, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local backButtonTab2Select = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_back_select2.png", 345, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Credits to scrap exchange buttons
local exchangeButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_ex_button.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local exchangeButtonSmall = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_ex_button_small.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Button to switch between planet and your cargo
local switchButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_off.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local switchButtonOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_on.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local switchButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_switch_select2.png", 874, 180, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

-- Selected Item Side Images
local sidebarTop = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_top.png", 669, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

-- With Jettison
local sidebarBot = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--Buy
local sidebarBot2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot2.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
--Sell
local sidebarBot3 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sidebar_bot3.png", 679, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Jettison Button
local jettisonButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_jettison.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_jettison.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

--Buy Button
local buyButton = {on = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	off = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(160/255, 162/255, 171/255, 1), 1, false),
	select = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
}
--local buyButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(160/255, 162/255, 171/255, 1), 1, false)
--local buyButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_buy.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

--Sell Button
local sellButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sell.png", 743, 511, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local sellButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_sell.png", 743, 511, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

--Buttons for changing quantity
local jettisonUpMin = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_min.png", 817, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpMinS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_min.png", 817, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonUpBig = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_big.png", 829, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpBigS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_big.png", 829, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonUpMax = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_full.png", 841, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonUpMaxS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_full.png", 841, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

--Buttons for changing quantity
local jettisonDownMin = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_minf.png", 767, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownMinS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_minf.png", 767, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonDownBig = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_bigf.png", 755, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownBigS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_bigf.png", 755, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)
local jettisonDownMax = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_fullf.png", 743, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local jettisonDownMaxS = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_increase_fullf.png", 743, 498, 0, Graphics.GL_Color(58/255, 127/255, 255/255, 1), 1, false)

--Item List stencil
local stencilImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_stencil.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetStencil = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_stencil.png", 241, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Item image with just supply and demand
local itemImage = {
	base = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_base.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	on = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	off = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	select = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	glow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}
local itemImageBase = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_base.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemImageSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Item image with pricing
local itemImagePriced = {
	base = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_base.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	on = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	off = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	select = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	glow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}
local itemPlanetBase = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_base.png", 355, 142, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_off.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemPlanetSelectGlow = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_planet_select3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Item Price Trend icons
local itemTrend1 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_1.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend2 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend3 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend4 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_4.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local itemTrend5 = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_item_trend_5.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Scroll Top Button
local scrollUpOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_off.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollUpOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_on.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollUpSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_up_select2.png", 335 + 324, 78 + 64, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Scroll Bottom Button
local scrollDownOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_off.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollDownOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_on.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollDownSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_down_select2.png", 335 + 324, 78 + 441, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Scroll Bar
local scrollBar = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_bar.png", 335 + 324, 78 + 84, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local scrollBarScale = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_scroll_bar_scale.png", 335 + 327, 78 + 87, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Bottom left and right corner images when buying and selling
local creditTab = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_credits.png", 684, 498, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--Images for item types
local typeImages = {
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type1.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type2.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type3.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type4.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type5.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false),
	Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_type6.png", 355, 132, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
}

-- Right Arrow Button
local arrowROff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_off.png", 553, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowROn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_on.png", 553, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowRSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_r_select2.png", 553, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

-- Left Arrow Button
local arrowLOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_off.png", 352, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowLOn = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_on.png", 352, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local arrowLSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_arrow_l_select2.png", 352, 330, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

--quest box
local questBox = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_quest_back.png", 0, 0, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local acceptButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_accept.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local acceptButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_accept_off.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local acceptButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_accept_select.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local abandonButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_abandon.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local abandonButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_abandon_off.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local abandonButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_abandon_select.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local completeButton = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_complete.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local completeButtonOff = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_complete_off.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local completeButtonSelect = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/trade_complete_select.png", 27, 160, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

-- Loot Overlay
local lootOverlay = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/s_loot_overlay.png", -16, -16, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)

mods.arcTrade = {}

local function vter(cvec)
    local i = -1
    local n = cvec:size()
    return function()
        i = i + 1
        if i < n then return cvec[i] end
    end
end

local function get_distance(point1, point2)
    return math.sqrt(((point2.x - point1.x)^ 2)+((point2.y - point1.y) ^ 2))
end

mods.arcTrade.planetNameList = {
	"Lizzards mum",
	"Planet-X",
	"Hawk 2-A",
	"Cyclotron",
	"Grease 12 b",
	"E_r#or ###2#432w2",
	"Zoltooine",
	"Spe",
	"Arion",
	"Arkas",
	"Orbitar",
	"Taphao Thong",
	"Taphao Kaew",
	"Dimidium",
	"Galileo",
	"Brahe",
	"Lipperhey",
	"Janssen",
	"Harriot",
	"Ægir",
	"Amateru",
	"Dagon",
	"Tadmor",
	"Meztli",
	"Smertrios",
	"Hypatia",
	"Quijote",
	"Dulcinea",
	"Rocinante",
	"Sancho",
	"Thestias",
	"Saffar",
	"Samh",
	"Majriti",
	"Fortitudo",
	"Draugr",
	"Poltergeist",
	"Phobetor",
	"Arber",
	"Tassili",
	"Madriu",
	"Naqaỹa",
	"Bocaprins",
	"Yanyan",
	"Sissi",
	"Ganja",
	"Tondra",
	"Eburonia",
	"Drukyul",
	"Yvaga",
	"Naron",
	"Guarani",
	"Mastika",
	"Bendida",
	"Nakanbé",
	"Awasis",
	"Caleuche",
	"Wangshu",
	"Melquíades",
	"Pipitea",
	"Ditsö̀",
	"Asye",
	"Veles",
	"Finlay",
	"Onasilos",
	"Makropulos",
	"Surt",
	"Boinayel",
	"Eyeke",
	"Cayahuanca",
	"Hämarik",
	"Abol",
	"Hiisi",
	"Bélisama",
	"Mintome",
	"Neri",
	"Toge",
	"Iolaus",
	"Koyopa'",
	"Indépendance",
	"Ixbalanqué",
	"Victoriapeak",
	"Magor",
	"Fold",
	"Santamasa",
	"Noifasui",
	"Kavian",
	"Babylonia",
	"Bran",
	"Alef",
	"Lete",
	"Chura",
	"Wadirum",
	"Buru",
	"Staburags",
	"Beirut",
	"Umbäässa",
	"Vytis",
	"Peitruss",
	"Trimobe",
	"Baiduri",
	"Ġgantija",
	"Cuptor",
	"Xólotl",
	"Isli",
	"Hairu",
	"Bagan",
	"Laligurans",
	"Nachtwacht",
	"Kererū",
	"Xolotlan",
	"Equiano",
	"Albmi",
	"Perwana",
	"Jebus",
	"Pollera",
	"Tumearandu",
	"Sumajmajta",
	"Haik",
	"Leklsullun",
	"Pirx",
	"Viriato",
	"Aumatex",
	"Negoiu",
	"Teberda",
	"Dopere",
	"Vlasina",
	"Viculus",
	"Kráľomoc",
	"Iztok",
	"Krotoa",
	"Halla",
	"Riosar",
	"Samagiya",
	"Isagel",
	"Eiger",
	"Ugarit",
	"Sazum",
	"Tanzanite",
	"Maeping",
	"Agouto",
	"Ramajay",
	"Khomsa",
	"Göktürk",
	"Tryzub",
	"Barajeel",
	"Cruinlagh",
	"Mulchatna",
	"Ibirapitá",
	"Madalitso",
	"Bambaruush[1]",
	"Tahay",
	"Awohali",
	"Su",
	"Enaiposha",
	"Phailinsiam",
	"Puli",
	"Guataubá",
	"Zembretta",
	"Levantes",
	"Najsakopajk",
	"Qingluan",
	"Kua'kua",
	"Cuancoá",
	"Banksia",
	"Astrolábos",
	"Regoč",
	"Makombé",
	"Tylos",
	"Catalineta",
	"Ahra"
}
local planetNameList = mods.arcTrade.planetNameList

local itemNoImage = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/none.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false)
local cargoList = {
	{name = "Steel", basePrice = 80, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/steel.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Aluminium", basePrice = 25, type = 1, supply = 2, demand = {false, false, true, false, false, false, true, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/aluminium.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Titanium", basePrice = 160, type = 1, supply = 2, demand = {false, false, true, false, false, true, false, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/titanium.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Nickel", basePrice = 95, type = 1, supply = 2, demand = {false, false, true, false, false, true, false, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/nickel.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Copper", basePrice = 30, type = 1, supply = 2, demand = {false, false, true, false, false, false, true, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/copper.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Iron", basePrice = 45, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/iron.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Iridium", basePrice = 420, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/iridium.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Rhodium", basePrice = 700, type = 1, supply = 2, demand = {true, false, true, false, false, true, false, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/rhodium.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) }, 

	{name = "Grain", basePrice = 25, type = 2, supply = 4, demand = {true, false, false, false, false, false, true, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/grain.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Baked Goods", basePrice = 55, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/baked_goods.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Animal Meat", basePrice = 80, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/animal_meat.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Vegetables", basePrice = 35, type = 2, supply = 4, demand = {false, false, false, false, false, false, true, false}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/vegetables.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Synthetic Meat", basePrice = 95, type = 2, supply = 3, demand = {false, false, false, false, false, false, true, true}, average = 0, image = Hyperspace.Resources:CreateImagePrimitiveString("arc_trading/resources/synthetic_meat.png", 679+67, 142+117, 0, Graphics.GL_Color(1, 1, 1, 1), 1, false) },
	{name = "Basic Rations", basePrice = 60, type = 2, supply = 4, demand = {true, true, true, false, false, false, false, false}, average = 0 },
	{name = "Adv. Rations", basePrice = 120, type = 2, supply = 4, demand = {false, false, false, false, false, true, true, true}, average = 0 },

	{name = "Basic Medicines", basePrice = 40, type = 3, supply = 3, demand = {false, false, false, true, false, false, true, false}, average = 0 },
	{name = "Stimulants", basePrice = 120, type = 3, supply = 3, demand = {false, false, false, false, false, true, false, true}, average = 0 },
	{name = "Adv. Medicines", basePrice = 210, type = 3, supply = 3, demand = {false, false, false, true, false, false, true, false}, average = 0 },
	{name = "Power Cells", basePrice = 120, type = 3, supply = 5, demand = {false, true, false, false, false, true, true, true}, average = 0 },
	{name = "Ion Distributor", basePrice = 80, type = 3, supply = 3, demand = {false, false, false, false, true, false, true, true}, average = 0 },
	{name = "Water", basePrice = 20, type = 3, supply = 3, demand = {false, true, false, true, false, false, true, true}, average = 0, average = 0 },
	{name = "Oxygen", basePrice = 40, type = 3, supply = 3, demand = {false, true, false, true, false, false, true, true}, average = 0 },

	{name = "Personal Weapons", basePrice = 80, type = 4, supply = 8, demand = {false, true, false, true, false, false, true, false}, average = 0 },
	{name = "Battle Weapons", basePrice = 120, type = 4, supply = 8, demand = {false, true, false, false, false, true, true, false}, average = 0 },
	{name = "Personal Armour", basePrice = 60, type = 4, supply = 8, demand = {false, true, false, false, false, true, true, false}, average = 0 },
	{name = "Protective Suits", basePrice = 35, type = 4, supply = 8, demand = {true, true, false, false, true, true, false, false}, average = 0 },
	{name = "Robotics", basePrice = 180, type = 4, supply = 8, demand = {true, true, true, false, false, true, false, false}, average = 0 },

	{name = "Luxury Goods", basePrice = 250, type = 5, supply = 7, demand = {false, false, false, true, false, false, false, true}, average = 0 },
	{name = "Consumer Tech", basePrice = 90, type = 5, supply = 7, demand = {false, false, true, true, false, true, false, false}, average = 0 },
	{name = "Appliances", basePrice = 65, type = 5, supply = 7, demand = {true, false, false, true, false, false, false, true}, average = 0 },
	{name = "Wine", basePrice = 85, type = 5, supply = 7, demand = {false, false, false, true, false, false, false, true}, average = 0 },
	{name = "Beer", basePrice = 70, type = 5, supply = 7, demand = {true, true, false, true, false, true, false, false}, average = 0 },

	{name = "Concrete", basePrice = 10, type = 6, supply = 1, demand = {false, false, true, true, true, false, false, true}, average = 0 },
	{name = "Prefab Buildings", basePrice = 100, type = 6, supply = 1, demand = {false, true, false, true, false, false, false, true}, average = 0 },
	{name = "Shuttle Parts", basePrice = 1000, type = 6, supply = 6, demand = {false, true, false, false, false, false, true, true}, average = 0 }
}

local industryList = {
	"Construction",
	"Mining",
	"Factory",
	"Farming",
	"Fuel",
	"Shipyard",
	"Amenities",
	"Military"
}

local industryListShort = {
	"Con",
	"Mine",
	"Fact",
	"Farm",
	"Fuel",
	"Ship",
	"Ame",
	"Mil"
}

local eventList = {
	"None",
	"Food Crisis",
	"Resource Shortage",
	"Refugees",
	"High Tariffs",
	"War Preparation"
}

local resourceTypeList = {
	"Metals",
	"Foods",
	"Supplies",
	"Military",
	"Amenities",
	"Resources",
}

local questList = {
	"DELIVERY",
	"SOURCE", 
	"Source" -- next sector
}

mods.arcTrade.licenseList = {}
local licenseList = mods.arcTrade.licenseList
licenseList["STANDARD_SPACE"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["CIVILIAN_SECTOR"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_UNION"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_UNION_UNIQUE"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_MILITIA_UNIQUE"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_FEDERATION_UNIQUE"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_FREEMANTIS"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_FREEMANTIS_UNIQUE"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECTOR_ASTEROID_GENERIC"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["SECRET_SPIDER"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}
licenseList["FINAL"] = {"Civilian Trading License", "ARC_TRADE_LICENSE_CIV"}

licenseList["SECTOR_HACKER_UNIQUE"] = {"C1vi|i@n Trading License", "ARC_TRADE_LICENSE_HACKER"}

licenseList["SECTOR_HARMONY"] = {"Harmony Trading License", "ARC_TRADE_LICENSE_HARM"}
licenseList["SECTOR_HARMONY_UNIQUE"] = {"Harmony Trading License", "ARC_TRADE_LICENSE_HARM"}

licenseList["SECTOR_MINISTRY"] = {"Zoltan Trading License", "ARC_TRADE_LICENSE_ZOLT"}
licenseList["SECTOR_MINISTRY_UNIQUE"] = {"Zoltan Trading License", "ARC_TRADE_LICENSE_ZOLT"}
licenseList["SECTOR_DUSKBRINGER"] = {"Zoltan Trading License", "ARC_TRADE_LICENSE_ZOLT"}
licenseList["SECTOR_DUSKBRINGER_UNIQUE"] = {"Zoltan Trading License", "ARC_TRADE_LICENSE_ZOLT"}
licenseList["SECTOR_MONK_UNIQUE"] = {"Zoltan Trading License", "ARC_TRADE_LICENSE_ZOLT"}

licenseList["SECTOR_GATHERING"] = {"Orchid Trading License", "ARC_TRADE_LICENSE_ORC"}
licenseList["SECTOR_GATHERING_UNIQUE"] = {"Orchid Trading License", "ARC_TRADE_LICENSE_ORC"}
licenseList["SECTOR_CONFEDERATE"] = {"Orchid Trading License", "ARC_TRADE_LICENSE_ORC"}
licenseList["SECTOR_CONFEDERATE_UNIQUE"] = {"Orchid Trading License", "ARC_TRADE_LICENSE_ORC"}

licenseList["SECTOR_OUTCAST"] = {"Outcast Trading License", "ARC_TRADE_LICENSE_OUT"}
licenseList["SECTOR_OUTCAST_UNIQUE"] = {"Outcast Trading License", "ARC_TRADE_LICENSE_OUT"}
licenseList["SECTOR_LOSTSUN_UNIQUE"] = {"Outcast Trading License", "ARC_TRADE_LICENSE_OUT"}

licenseList["SECTOR_IMPERIAL"] = {"Crystal Trading License", "ARC_TRADE_LICENSE_CRYS"}
licenseList["SECTOR_IMPERIAL_UNIQUE"] = {"Crystal Trading License", "ARC_TRADE_LICENSE_CRYS"}
licenseList["SECRET_ORIGINS"] = {"Crystal Trading License", "ARC_TRADE_LICENSE_CRYS"}
licenseList["SECRET_ORIGINS_RUWEN"] = {"Crystal Trading License", "ARC_TRADE_LICENSE_CRYS"}

licenseList["SECTOR_SEPARATIST"] = {"Seperatist Trading License", "ARC_TRADE_LICENSE_SEP"}
licenseList["SECTOR_SEPARATIST_UNIQUE"] = {"Seperatist Trading License", "ARC_TRADE_LICENSE_SEP"}

licenseList["SECTOR_PIRATE"] = {"Pirate Trading License", "ARC_TRADE_LICENSE_PIRATE"}
licenseList["SECTOR_PIRATE_UNIQUE"] = {"Pirate Trading License", "ARC_TRADE_LICENSE_PIRATE"}

licenseList["SECTOR_PIRATE_HEKTAR"] = {"Hektar Trading License", "ARC_TRADE_LICENSE_HEKTAR"}
licenseList["SECTOR_KLEPTOCRACY_HEKTAR"] = {"Hektar Trading License", "ARC_TRADE_LICENSE_HEKTAR"}
licenseList["SECTOR_REPUBLIC_HEKTAR"] = {"Hektar Trading License", "ARC_TRADE_LICENSE_HEKTAR"}
licenseList["SECRET_HEKTAR"] = {"Hektar Trading License", "ARC_TRADE_LICENSE_HEKTAR"}

licenseList["SECTOR_LANIUS_UNIQUE"] = {"Lanius Trading License", "ARC_TRADE_LICENSE_LAN"}
licenseList["SECTOR_AUGMENTED_UNIQUE"] = {"Lanius Trading License", "ARC_TRADE_LICENSE_LAN"}

licenseList["SECTOR_REBEL"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}
licenseList["SECTOR_REBEL_UNIQUE"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}
licenseList["SECTOR_AUTO"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}
licenseList["SECTOR_AUTO_UNIQUE"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}
licenseList["SECRET_JERRY"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}
licenseList["SECRET_ESTATE"] = {"Rebel Trading License", "ARC_TRADE_LICENSE_REBEL"}

licenseList["SECTOR_HIVE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_HIVE_UNIQUE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_THEOCRACY"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_THEOCRACY_UNIQUE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_COALITION"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_COALITION_UNIQUE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_KLEPTOCRACY"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_KLEPTOCRACY_UNIQUE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECRET_NIGHTS"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_REPUBLIC"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}
licenseList["SECTOR_REPUBLIC_UNIQUE"] = {"Coalition Trading License", "ARC_TRADE_LICENSE_COAL"}

licenseList["SECTOR_CLAN_UNIQUE"] = {"Guild Trading License", "ARC_TRADE_LICENSE_GUILD"}

licenseList["SECTOR_GENIOCRACY"] = {"Geniocracy Trading License", "ARC_TRADE_LICENSE_SHELL"}
licenseList["SECTOR_GENIOCRACY_UNIQUE"] = {"Geniocracy Trading License", "ARC_TRADE_LICENSE_SHELL"}

licenseList["SECTOR_VAGABOND_UNIQUE"] = {"Spectral Trading License", "ARC_TRADE_LICENSE_GHOST"}
licenseList["SECTOR_DYNASTY"] = {"Spectral Trading License", "ARC_TRADE_LICENSE_GHOST"}
licenseList["SECTOR_DYNASTY_UNIQUE"] = {"Spectral Trading License", "ARC_TRADE_LICENSE_GHOST"}

local function hasEquipmentCargo(name)
    for item in vter(Hyperspace.App.gui.equipScreen:GetCargoHold()) do
    	if item == name then
    		return true
    	end
    end
    return false
end

local function hasLicense(name)
	--[[if licenseList[name] then
		print("NAME:"..name.." HAS EQUIPMENT:"..tostring(Hyperspace.ships.player:HasEquipment(licenseList[name][2]) > 0).." HAS CARGO:"..tostring(hasEquipmentCargo(licenseList[name][2])))
	else
		print("NO LICENSE NEEDED:"..name)
	end]]
	return (not licenseList[name]) or (licenseList[name] and (Hyperspace.ships.player:HasEquipment(licenseList[name][2]) > 0 or hasEquipmentCargo(licenseList[name][2]))) or (Hyperspace.ships.player:HasEquipment("ARC_TRADE_LICENSE_ALL") > 0 or hasEquipmentCargo("ARC_TRADE_LICENSE_ALL"))
end


--Player Data
local function generateBlankPlayerInventory()
	local inventory = {}
	for i, c in ipairs(cargoList) do
		inventory[i] = {number = 0}
	end
	return inventory
end

local playerCredits = 0
local playerCargo = 0
local playerCargoSpace = 100
local playerInventory = generateBlankPlayerInventory()
local activeDelivery = nil

--World Data
local function generateBlankInventory()
	local inventory = {}
	for i, c in ipairs(cargoList) do
		inventory[i] = {number = 0, trend = 0, price = c.basePrice}
	end
	return inventory
end

local planetTableList = {}

local function resetPlanets()
	planetTableList = {}
end

--Functions
local function calculateAverage()
	for i, c in ipairs(cargoList) do
		local sum = 0
		local count = 0
		for k, v in ipairs(planetTableList) do
			if v.beacon >= 0 and v.inventory then 
				sum = sum + v.inventory[i].price
				count = count + 1
			end
		end
		if count > 0 then
			c.average = sum/count
		end
	end
end

local expansions = {}
expansions["ARC_TRADE_EXPAND1"] = 10
expansions["ARC_TRADE_EXPAND2"] = 25
expansions["ARC_TRADE_EXPAND3"] = 45
expansions["ARC_TRADE_EXPAND4"] = 75

local function calculateCargo()
	playerCargo = 0
	if activeDelivery and activeDelivery.type == 1 then
		playerCargo = activeDelivery.amount
	end
	for i, tab in ipairs(playerInventory) do
		if tab.number < 0 then tab.number = 0 end
		playerCargo = playerCargo + tab.number
	end

	if Hyperspace.ships.player and Hyperspace.ships.player:GetWeaponList() then
		playerCargoSpace = 100
		for weapon in vter(Hyperspace.ships.player:GetWeaponList()) do
			local fishingData = expansions[weapon.blueprint.name]
			if fishingData then
	            playerCargoSpace = playerCargoSpace + fishingData
	        end
		end

		local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
	    local cargoList = commandGui.equipScreen:GetCargoHold()
		for item in vter(cargoList) do
	        local fishingData = expansions[item]
	        if fishingData then
	            playerCargoSpace = playerCargoSpace + fishingData
	        end
	    end

	    if Hyperspace.ships.player:HasAugmentation("ARC_TRADE_CARGO3") > 0 then
	    	playerCargoSpace = math.floor(playerCargoSpace * 1.5)
	    elseif Hyperspace.ships.player:HasAugmentation("ARC_TRADE_CARGO2") > 0 then
	    	playerCargoSpace = math.floor(playerCargoSpace * 1.25)
	    elseif Hyperspace.ships.player:HasAugmentation("ARC_TRADE_CARGO1") > 0 then
	    	playerCargoSpace = math.floor(playerCargoSpace * 1.1)
	    end
	end
end

--Saving
local function savePlayerInventory()
	for i, tab in ipairs(playerInventory) do
		Hyperspace.metaVariables["arctrade_player_"..i] = tab.number
	end
	Hyperspace.metaVariables["arctrade_player_credits"] = playerCredits
	if activeDelivery then
		Hyperspace.metaVariables["arctrade_player_delivery_has"] = 1
		Hyperspace.metaVariables["arctrade_player_delivery_type"] = activeDelivery.type
		Hyperspace.metaVariables["arctrade_player_delivery_dest"] = activeDelivery.dest
		Hyperspace.metaVariables["arctrade_player_delivery_value"] = activeDelivery.value
		Hyperspace.metaVariables["arctrade_player_delivery_amount"] = activeDelivery.amount
		Hyperspace.metaVariables["arctrade_player_delivery_item"] = activeDelivery.item
	else
		Hyperspace.metaVariables["arctrade_player_delivery_has"] = 0
	end
end

local function savePlanets()
	--print("save2".. tostring(#planetTableList))
	Hyperspace.metaVariables["arctrade_planet_number"] = #planetTableList
	--print(Hyperspace.metaVariables["arctrade_planet_number"])
	for i, planetTable in ipairs(planetTableList) do
		Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"] = planetTable.beacon
		Hyperspace.metaVariables["arctrade_planet"..i.."_image"] = planetTable.planet
		Hyperspace.metaVariables["arctrade_planet"..i.."_name"] = planetTable.name
		Hyperspace.metaVariables["arctrade_planet"..i.."_type"] = planetTable.type
		Hyperspace.metaVariables["arctrade_planet"..i.."_event"] = planetTable.event
		Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] = planetTable.tariff * 1000
		Hyperspace.metaVariables["arctrade_planet"..i.."_exchangeRate"] = planetTable.exchangeRate
		for item, iTab in ipairs(planetTable.inventory) do
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_number"] = iTab.number
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_trend"] = iTab.trend
			Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_price"] = iTab.price
		end
		--print("save2".. tostring(#planetTable.deliveries))
		Hyperspace.metaVariables["arctrade_planet"..i.."_deliveryNumber"] = #planetTable.deliveries
		--print(Hyperspace.metaVariables["arctrade_planet"..i.."_deliveryNumber"])
		for d, deliveryTable in ipairs(planetTable.deliveries) do
			Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_type"] = deliveryTable.type
			Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_dest"] = deliveryTable.dest
			Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_value"] = deliveryTable.value
			Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_amount"] = deliveryTable.amount
			Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_item"] = deliveryTable.item
		end
	end
end

--Loading
local function loadPlayerInventory()
	for i, tab in ipairs(playerInventory) do
		tab.number = Hyperspace.metaVariables["arctrade_player_"..i]
	end
	playerCredits = Hyperspace.metaVariables["arctrade_player_credits"]
	local hasDelivery = Hyperspace.metaVariables["arctrade_player_delivery_has"]
	if hasDelivery == 1 then
		activeDelivery = {}
		activeDelivery.type = Hyperspace.metaVariables["arctrade_player_delivery_type"]
		activeDelivery.dest = Hyperspace.metaVariables["arctrade_player_delivery_dest"]
		activeDelivery.value = Hyperspace.metaVariables["arctrade_player_delivery_value"]
		activeDelivery.amount = Hyperspace.metaVariables["arctrade_player_delivery_amount"]
		activeDelivery.item = Hyperspace.metaVariables["arctrade_player_delivery_item"]
	else
		activeDelivery = nil
	end
	calculateCargo()
end

local function loadPlanets()
	--print("load")
	local planetNumber = Hyperspace.metaVariables["arctrade_planet_number"]
	--print(planetNumber)
	for i = 1, planetNumber, 1 do
		--print("planet: "..i)
		planetTableList[i] = {}
		planetTableList[i].beacon = Hyperspace.metaVariables["arctrade_planet"..i.."_beacon"]
		planetTableList[i].planet = Hyperspace.metaVariables["arctrade_planet"..i.."_image"]
		planetTableList[i].name = Hyperspace.metaVariables["arctrade_planet"..i.."_name"]
		planetTableList[i].type = Hyperspace.metaVariables["arctrade_planet"..i.."_type"]
		planetTableList[i].event = Hyperspace.metaVariables["arctrade_planet"..i.."_event"]
		planetTableList[i].tariff = Hyperspace.metaVariables["arctrade_planet"..i.."_tariff"] / 1000
		planetTableList[i].exchangeRate = Hyperspace.metaVariables["arctrade_planet"..i.."_exchangeRate"]
		planetTableList[i].inventory = generateBlankInventory()
		--print("Invent")
		for item, iTab in ipairs(planetTableList[i].inventory) do
			iTab.number = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_number"]
			iTab.trend = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_trend"] / 100
			iTab.price = Hyperspace.metaVariables["arctrade_planet"..i.."_"..item.."_price"]
		end
		--print("load2")
		local deliveryNumber = Hyperspace.metaVariables["arctrade_planet"..i.."_deliveryNumber"]
		--print(deliveryNumber)
		local deliveries = {}
		if deliveryNumber > 0 then
			for d = 1, deliveryNumber, 1 do
				--print("LOADING: "..tostring(d))
				local type = Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_type"]
				local destination = Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_dest"]
				local value = Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_value"]
				local amount = Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_amount"]
				local item = Hyperspace.metaVariables["arctrade_planet"..i.."_delivery"..d.."_item"]
				table.insert(deliveries, {type = type, dest = destination, value = value, amount = amount, item = item})
			end
		end
		planetTableList[i].deliveries = deliveries
	end
end

--Sector Generation
local function generateInventory(type, event, level)
	local inventory = {}
	for i, c in ipairs(cargoList) do
		local mod = math.ceil(1000/c.basePrice)
		local number = mod + math.ceil(math.random() * 0.3 * mod)
		local trend = math.random(-3,3)
		local price = c.basePrice + (0.02 * c.basePrice * (1 + level)) + (0.1 * math.random() * c.basePrice) + math.random(-3, 3)
		if type == c.supply then
			number = number * 5
			price = price * 0.9
			trend = math.ceil(trend / 2)
		elseif c.demand[type] then 
			number = math.floor(number * (0.2 + (math.random() * 0.25)))
			price = price * 1.1
			trend = trend * 2
		end

		if event == 2 and (c.type == 2 or c.type == 3) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.05
		elseif event == 3 and (c.type == 1 or c.type == 6) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.05
		elseif event == 4 and (c.type == 2 or c.type == 5) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.05
		elseif event == 5 and not c.type == 2 then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.05
		elseif event == 6 and (c.type == 1 or c.type == 4) then
			number = math.floor(number * (0.4 + (math.random() * 0.35)))
			price = price * 1.05
		end
		if math.random() > 0.7 then 
			number = 0 
			trend = math.abs(math.ceil(trend/2))
			if c.demand[type] then
				price = 1.05 * price
				trend = 2 * trend
			end
		end
		price = math.ceil(math.max(1, price))
		inventory[i] = {number = number, trend = trend, price = price}
	end
	return inventory
end

local function generateDeliveries()
	for i, planetTable in ipairs(planetTableList) do
		local deliveries = {}
		local number = math.random(1, 4)
		for d = 1, number, 1 do
			local type = math.random(1,2)
			local destination = math.random(1, #planetTableList)
			if destination == i then 
				destination = destination + 1
				if destination > #planetTableList then destination = 1 end
			end
			local map = Hyperspace.App.world.starMap
			local value = (math.random(5, 10) + map.worldLevel) * 500
			local amount = 0
			local item = -1
			if type == 1 then
				value = value/2
				amount = math.random(10, 70)
				if amount > 40 then amount = amount - 10 end
			elseif type == 2 then
				destination = -1
				item = math.random(1, #cargoList)
				amount = math.ceil((value * 0.5) / cargoList[item].average )
			end

			table.insert(deliveries, {type = type, dest = destination, value = value, amount = amount, item = item})
		end
		planetTable.deliveries = deliveries
	end
end

local usedNames = {}
local function generateSector()
	planetTableList = {}
	local planetNumber = math.random(3,7)
	if planetNumber < 6 then planetNumber = planetNumber + 1 end
	local map = Hyperspace.App.world.starMap
	local beaconCount = map.locations:size()
	if beaconCount <= 1 then return end
	local existingBeacons = {}
	local globalRate = 60 + math.random(2, math.floor(20 + map.worldLevel * 1.5)) + 3 * map.worldLevel
	for i = 1, planetNumber, 1 do
		local beaconNumber = math.random(0, beaconCount - 1)
		local count = 0
		while existingBeacons[beaconNumber] do
			beaconNumber = math.random(0, beaconCount - 1)
			count = count + 1
			if count > 100 then break end
		end
		if count > 100 then break end
		existingBeacons[beaconNumber] = true

		local name = math.random(2, #planetNameList)
		if usedNames[name] then
			local foundName = false
			for n = 1, #planetNameList, 1 do
				local newName = name + n
				if newName > #planetNameList then newName = newName - #planetNameList + 1 end
				if not usedNames[newName] then
					name = newName
					foundName = true
					break
				end
				if not foundName then
					name = 1
				end
			end
		end
		usedNames[name] = true
		local planet = math.random (1, #planetImageList)
		local type = math.random(1, #industryList)
		local event = math.random(1, #eventList)
		local tariff = math.random() * (0.05 + 0.02)
		if event == 5 then tariff = tariff + 0.1 end
		local rate = globalRate + math.random(-2, 2)
		
		table.insert(planetTableList, {beacon = beaconNumber, planet = planet, name = name, type = type, event = event, inventory = generateInventory(type, event, map.worldLevel), tariff = tariff, exchangeRate = rate, deliveries = {}})
	end
	calculateAverage()
	generateDeliveries()
	savePlanets()
end

--Reward Generation
local function giveRandomReward(multiplyer)
	calculateCargo()
    Hyperspace.Sounds:PlaySoundMix("levelup", -1, false)
    local map = Hyperspace.App.world.starMap
    local rewardAmount = math.random(1 * multiplyer, 10 * multiplyer + 2 * map.worldLevel)
    local rewardItem = math.random(1, #cargoList)
	local cargoLeft = playerCargoSpace - playerCargo
	rewardAmount = math.min(cargoLeft, rewardAmount)
    local rewardPrice = cargoList[rewardItem].average * rewardAmount
    if rewardPrice > 5000 + 500 * map.worldLevel then
    	rewardAmount = math.ceil((5000 + 500 * map.worldLevel) / cargoList[rewardItem].average)
   		rewardPrice = cargoList[rewardItem].average * rewardAmount
   	end
    if rewardPrice < 2000 then
    	local creditReward = math.random(100, 2200 - rewardPrice + 200 * map.worldLevel)
    	if cargoLeft > 0 then
    		print("You found "..math.floor(rewardAmount).." tonnes of "..cargoList[rewardItem].name.." and "..math.floor(creditReward).."c")
    		playerInventory[rewardItem].number = playerInventory[rewardItem].number + rewardAmount
    		playerCredits = playerCredits + creditReward
    	else
    		print("You found "..math.floor(creditReward * 2).."c")
    		playerCredits = playerCredits + creditReward * 2
    	end
    else
		print("You found "..math.floor(rewardAmount).." tonnes of "..cargoList[rewardItem].name)
		playerInventory[rewardItem].number = playerInventory[rewardItem].number + rewardAmount
    end
    calculateCargo()
    savePlayerInventory()
end

--Run on game load
script.on_init(function()
	--inMenu = false
	loadPlayerInventory()
	loadPlanets()
	calculateAverage()
end)

--Run at start of a game
script.on_game_event("START_BEACON_REAL", false, function()
    generateSector()
    playerCredits = 0
    playerInventory = generateBlankPlayerInventory()
    activeDelivery = nil
    savePlayerInventory()
    calculateCargo()
    savePlanets()
end)

script.on_game_event("ATLAS_MENU", false, function()
    generateSector()
    savePlanets()
    selectPlanet = -1
    oldSelectPlanet = -1
	if activeDelivery and activeDelivery.dest == -1 then
		--print("UPDATE DEST")
		local destination = math.random(1, #planetTableList)
		activeDelivery.dest = destination
		savePlayerInventory()
	elseif activeDelivery then
		--print("delete quest")
		activeDelivery = nil
		savePlayerInventory()
		calculateCargo()
	end
end)

--[[Run when sector transistion
local lastWorldLevel = 0
script.on_internal_event(Defines.InternalEvents.ON_TICK, function()
	if not Hyperspace.Global.GetInstance():GetCApp().world.bStartedGame then return end
	local map = Hyperspace.App.world.starMap
	if not map.worldLevel == lastWorldLevel then
		print("NEWSECTOR")
		generateSector()
		if activeDelivery and activeDelivery.dest == -1 then
			print("UPDATE DEST")
			local destination = math.random(1, #planetTableList)
			activeDelivery.dest = destination
			savePlayerInventory()
		elseif activeDelivery then
			print("delete quest")
			activeDelivery = nil
			savePlayerInventory()
		end
	end
	lastMouseLevel = map.worldLevel
end)]]

--Variables

--[[Hovered Button index
1 - Menu Open
2 - Tab1 Button
3 - Tab2 Button
4 - Tab3 Button
5 - Tab4 Button

10 - Scroll Up Button
11 - Scroll Down Button
12 - Scroll Bar

20 - Minimum Number of Items Button
21 - Reduce Items Big
22 - Reduce Items Small
23 - Increase Items Small
24 - Increase Items Big
25 - Maximum Number of Items Button
26 - Jettison Button
27 - Buy/Sell Button

30 - Back Button for tab2
31 - Planet Left Button
32 - Planet Right Button

40 - Left Exchange Button
41 - Right Exchange Button
42 - 1x Exchange Mult Button
43 - 10x Exchange Mult Button
44 - 100x Exchange Mult Button
45 - Switch Trade Inventory Button
]]
local hoveredButton = 0

--local inMenu = false
local tab = 1

--Scroll Variables
local scroll = 0
local scrollMax = 0
local playerItemCount = 0
local planetItemCount = 0

local mouseDownPos = nil
local lastMousePos = nil

--Variables for holding scroll up and down
local scrollingUp = false
local scrollingDown = false

--Item List Variables
local hoverItem = -1
local selectedItem = -1
local hoverBuyItem = -1
local selectedBuyItem = 1

--Jettison Variables
local jettisonAmt = 0

--Trading Variables
local buyAmt = 0

--Planets spin out
local tab2Spin = 1

--Planet Selection
local hoverPlanet = -1
local selectPlanet = -1
local oldSelectPlanet = -1

--Planet Select Animation
local planetZoom = 1

--Trade Variables
local currentPlanet = -1 --Local Planet

local exchangeMult = 1

local buyingFromPlanet = true

--Quests
hoverQuest = -1

--Enemy Loot Room Variables
local addLootRoom = false
local hasBeenHostile = false
local lootLevel = 0

--Cheat Functions
function arc_trade_gen()
	generateSector()
	savePlanets()
end

function arc_trade_c()
	playerCredits = playerCredits + 1000
	savePlayerInventory()
end

--Menu Rendering
local function renderItemList(xOffset, inventory, planetInventory, varient, selectedListItem, displayAll, mousePos, selectable)
	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(xOffset, 0, 0)

	--print("START")
	Graphics.CSurface.GL_RenderPrimitive(scrollBar)
	local scrollItemCount = #cargoList
	if not displayAll then
		local tempCount = 0
	    for i, v in ipairs(playerInventory) do
	    	if v.number > 0 then
	    		tempCount = tempCount + 1
	    	end
	    end
	    scrollItemCount = tempCount
	end

	--print("1")

    local scrollLength = math.ceil(math.min(376 / (scrollItemCount * 20), 1) * 346)
    scrollMax = math.max(0, scrollItemCount * 20 - 376)

	if mouseDownPos then
		scroll = scroll + ((Hyperspace.Mouse.position.y - lastMousePos) / (346 - scrollLength)) * scrollMax
		lastMousePos = Hyperspace.Mouse.position.y
	elseif scrollingUp then
		scroll = scroll - 10 * scrollItemCount * Hyperspace.FPS.SpeedFactor/16
	elseif scrollingDown then
		scroll = scroll + 10 * scrollItemCount * Hyperspace.FPS.SpeedFactor/16
	end
	scroll = math.min(scrollMax, math.max(0, scroll))

    local scrollOffset = (scroll/scrollMax) * (346 - scrollLength) 
    if scrollMax == 0 then
    	scrollOffset = 0
		Graphics.CSurface.GL_RenderPrimitive(scrollUpOff)
		Graphics.CSurface.GL_RenderPrimitive(scrollDownOff)
    else
    	if mousePos.x > 659-1 + xOffset and mousePos.x < 659+17 + xOffset and mousePos.y > 142-1 and mousePos.y < 142+18 then
    		hoveredButton = 10
    	elseif mousePos.x > 662-1 + xOffset and mousePos.x < 662+17 + xOffset and mousePos.y > 519-1 and mousePos.y < 519+18 then
			hoveredButton = 11
		elseif mousePos.x > 662-1 + xOffset and mousePos.x < 662+11 + xOffset and mousePos.y > 166 + scrollOffset - 2 and mousePos.y < 166 + scrollOffset + scrollLength + 2 then
			hoveredButton = 12
    	end

    	if hoveredButton == 10 or scrollingUp then
    		Graphics.CSurface.GL_RenderPrimitive(scrollUpSelect)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(scrollUpOn)
    	end
    	if hoveredButton == 11 or scrollingdown then
    		Graphics.CSurface.GL_RenderPrimitive(scrollDownSelect)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(scrollDownOn)
    	end
    end

    local barColour = Graphics.GL_Color(1, 1, 1, 1)
    if scrollMax == 0 then
    	barColour = Graphics.GL_Color(160/255, 162/255, 171/255, 1)
    elseif hoveredButton == 12 or mouseDownPos then
    	barColour = Graphics.GL_Color(58/255, 127/255, 255/255, 1)
    end

	Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset - 1, 8, 1, barColour)
	Graphics.CSurface.GL_DrawRect(662, 166 + scrollOffset, 10, scrollLength, barColour)
	Graphics.CSurface.GL_DrawRect(662 + 1, 166 + scrollOffset + scrollLength, 8, 1, barColour)

	local image = itemImage
    if varient > 1 then
    	image = itemImagePriced
    end
    Graphics.CSurface.GL_RenderPrimitive(image.base)

    Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 12, "#")
    Graphics.freetype.easy_print(5, 355 + 44, 132 + 12 , "Name")
	if varient == 1 then
    	Graphics.freetype.easy_print(5, 355 + 126 + 17, 132 + 12, "Supply")
    else
        Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 12, "Price")
    end
    Graphics.freetype.easy_print(5, 355 + 194, 132 + 12, "Demanded By")
    Graphics.CSurface.GL_PopMatrix()

	Graphics.CSurface.GL_PushStencilMode()
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_ClearAll()
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(xOffset, 0, 0)
    Graphics.CSurface.GL_RenderPrimitive(stencilImage)
    Graphics.CSurface.GL_PopMatrix()
    Graphics.CSurface.GL_SetStencilMode(2,1,1)

    local itemCount = 2

    for i, v in ipairs(inventory) do
    	if v.number > 0 or displayAll then
        	local InfoTable = cargoList[i]
	        --Graphics.CSurface.GL_PushStencilMode()
        	if 20 * itemCount - 10 - scroll >= -20 then
        		if mousePos.x > 355-1 + xOffset and mousePos.x < 355+301 + xOffset and mousePos.y > 20 * itemCount - 10 - scroll + 132-1 and mousePos.y < 20 * itemCount - 10 - scroll + 132+18 then
	        		if selectable and varient == 1 then
	        			hoverItem = i
	        		elseif selectable then
	        			hoverBuyItem = i
	        		end
	        	end 
    			Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(xOffset, 20 * itemCount - 10 - scroll, 0)

		        if selectedListItem == i then
			        Graphics.CSurface.GL_RenderPrimitive(image.glow)
		        elseif (varient == 1 and hoverItem == i) or (varient == 2 and hoverBuyItem == i) then
			        Graphics.CSurface.GL_RenderPrimitive(image.select)
		        elseif v.number <= 0 then
			        Graphics.CSurface.GL_RenderPrimitive(image.off)
		        else
			        Graphics.CSurface.GL_RenderPrimitive(image.on)
			    end
			    local itemPrice = 0
			    if varient > 1 then
			    	itemPrice = planetInventory[i].price

				    if itemPrice < InfoTable.average - 0.15 * InfoTable.basePrice then 
				        Graphics.CSurface.GL_RenderPrimitive(itemTrend1)
				    elseif itemPrice < InfoTable.average - 0.05 * InfoTable.basePrice then 
				        Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
				    elseif itemPrice > InfoTable.average + 0.15 * InfoTable.basePrice then 
				        Graphics.CSurface.GL_RenderPrimitive(itemTrend5)
				    elseif itemPrice > InfoTable.average + 0.05 * InfoTable.basePrice then 
				        Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
				    else
				        Graphics.CSurface.GL_RenderPrimitive(itemTrend3)
				    end
				end

		        Graphics.CSurface.GL_RenderPrimitive(typeImages[InfoTable.type])
		        local amount = tostring(math.floor(v.number))
		        if v.number > 999999 then
		        	amount = tostring(math.floor(v.number / 1000000)).."M"
		        elseif v.number > 9999 then
		        	amount = tostring(math.floor(v.number / 1000)).."K"
		        elseif v.number > 999 then
		        	local sub = tostring(math.floor(v.number / 100)).."K"
		        	amount = string.sub(sub, 1, 1).."."..string.sub(sub, 2, 3)
		        end
	            Graphics.freetype.easy_printCenter(5, 355 + 28, 132 + 2, amount)
	            Graphics.freetype.easy_print(5, 355 + 44, 132 + 2 , InfoTable.name)
	            if varient == 1 then 
	            	Graphics.freetype.easy_print(5, 355 + 126 + 17, 132 + 2, industryListShort[InfoTable.supply])
	            else
            		Graphics.freetype.easy_print(5, 355 + 126 + 30, 132 + 2, math.ceil(itemPrice).."c")
	            end
	            local s = ""
	            local set = false
	            for key, short in ipairs(industryListShort) do
	            	if InfoTable.demand[key] then
	            		if set == false then
	            			s = short
	            			set = true
	            		else
		            		s = s..", "..short
		            	end
	            	end
	            end
	            Graphics.freetype.easy_print(5, 355 + 194, 132 + 2, s)
       			Graphics.CSurface.GL_PopMatrix()
       		end
	        itemCount = itemCount + 1
	    end
    end
    Graphics.CSurface.GL_SetStencilMode(0,1,1)
	Graphics.CSurface.GL_PopStencilMode()
end

local function renderItemTab(xOffset, item, inventory, currPlanetInventory, varient, mousePos)
	if varient > 1 and not currPlanetInventory then
		print("currPlanetInventoryFailed:"..currentPlanet)
		return
	end

	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(xOffset, 0, 0)


	--print("START")
	local cInfoTab = cargoList[item]
	if varient == 1 then
		Graphics.CSurface.GL_RenderPrimitive(sidebarBot)
	elseif varient == 2 then
		Graphics.CSurface.GL_RenderPrimitive(sidebarBot2)
	else
		Graphics.CSurface.GL_RenderPrimitive(sidebarBot3)
	end

	if cInfoTab.image then
		Graphics.CSurface.GL_RenderPrimitive(cInfoTab.image)
	else
		Graphics.CSurface.GL_RenderPrimitive(itemNoImage)
	end

	--print("1")

	Graphics.freetype.easy_printCenter(14, 797, 218, cargoList[item].name)
	if varient == 1 then
		Graphics.freetype.easy_printCenter(0, 797, 381, math.floor(inventory[item].number).."t")
	else
    	Graphics.freetype.easy_printCenter(0, 797, 381, math.floor(currPlanetInventory[item].price).."c per tonne")
	end

	--print("2")

	Graphics.freetype.easy_printCenter(6, 797, 401, "Supplied By: "..industryList[cInfoTab.supply])
	local s = ""
    local set = false
    for key, short in ipairs(industryList) do
    	if cInfoTab.demand[key] then
    		if set == false then
    			s = short
    			set = true
    		else
        		s = s..", "..short
        	end
    	end
    end
	Graphics.freetype.easy_printCenter(6, 797, 418, "Consumed By:")
	Graphics.freetype.easy_printCenter(6, 797, 428, s)
	Graphics.freetype.easy_printCenter(10, 797, 455, "Average:\n"..math.ceil(cInfoTab.average).."c")
	Graphics.CSurface.GL_PopMatrix()

	--print("3")

	local max = nil
	local min = nil
	local maxPlanet = -1
	local minPlanet = -1
	for planet, pTable in ipairs(planetTableList) do
		if pTable.beacon >= 0 then
    		local price = pTable.inventory[item].price
    		if max then
    			if price > max then
    				max = price
    				maxPlanet = planet
    			end
    		else
				max = price
				maxPlanet = planet
			end
			if min then
    			if price < min then
    				min = price
    				minPlanet = planet
    			end
    		else
				min = price
				minPlanet = planet
			end
		end
	end

	--print("4")

	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(201 + xOffset, 319, 0)
	Graphics.CSurface.GL_RenderPrimitive(itemTrend4)
	Graphics.CSurface.GL_PopMatrix()
	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(359 + xOffset, 319, 0)
	Graphics.CSurface.GL_RenderPrimitive(itemTrend2)
	Graphics.CSurface.GL_PopMatrix()

	--print("5")

	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(xOffset, 0, 0)
	Graphics.freetype.easy_printCenter(10, 719, 452, " Max:\n"..math.ceil(max).."c")
	Graphics.freetype.easy_printCenter(6, 719, 480, planetNameList[planetTableList[maxPlanet].name])
	Graphics.freetype.easy_printCenter(10, 875, 452, " Min:\n"..math.ceil(min).."c")
	Graphics.freetype.easy_printCenter(6, 875, 480, planetNameList[planetTableList[minPlanet].name])
	Graphics.CSurface.GL_PopMatrix()

	--print("6")

	if varient == 2 then
		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(xOffset, 0, 0)
    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
    	Graphics.freetype.easy_printCenter(5, 711, 499, "You")
    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(playerCredits).."c")
    	Graphics.CSurface.GL_PopMatrix()

		--print("6.1")

		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(172+xOffset, 0, 0)
    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
    	Graphics.freetype.easy_printCenter(5, 711, 499, "Price")
    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(currPlanetInventory[item].price * buyAmt).."c")
		Graphics.CSurface.GL_PopMatrix()
	elseif varient == 3 then
		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(xOffset, 0, 0)
    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
    	Graphics.freetype.easy_printCenter(5, 711, 499, "Value")
    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(currPlanetInventory[item].price * buyAmt).."c")
    	Graphics.CSurface.GL_PopMatrix()

		--print("6.2")

		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(172+xOffset, 0, 0)
    	Graphics.CSurface.GL_RenderPrimitive(creditTab)
    	Graphics.freetype.easy_printCenter(5, 711, 499, "Tariff")
    	Graphics.freetype.easy_printCenter(5, 711, 514, math.floor(currPlanetInventory[item].price * buyAmt * planetTableList[currentPlanet].tariff).."c")
		Graphics.CSurface.GL_PopMatrix()
	end
	Graphics.CSurface.GL_PushMatrix()
	Graphics.CSurface.GL_Translate(xOffset, 0, 0)

	--print("7")

	if mousePos.y > 498 and mousePos.y < 498+11 and inventory[item].number > 0 then
    	if mousePos.x > 743 + xOffset and mousePos.x < 743+11 + xOffset then
    		hoveredButton = 20
    	elseif mousePos.x > 755 + xOffset and mousePos.x < 755+11 + xOffset then
    		hoveredButton = 21
    	elseif mousePos.x > 767 + xOffset and mousePos.x < 767+11 + xOffset then
    		hoveredButton = 22
    	elseif mousePos.x > 817 + xOffset and mousePos.x < 817+11 + xOffset then
    		hoveredButton = 23
    	elseif mousePos.x > 829 + xOffset and mousePos.x < 829+11 + xOffset then
    		hoveredButton = 24
    	elseif mousePos.x > 841 + xOffset and mousePos.x < 841+11 + xOffset then
    		hoveredButton = 25
    	end
    end
    if mousePos.x > 743-1 + xOffset and mousePos.x < 743+110 + xOffset and mousePos.y > 511-1 and mousePos.y < 511+21 and inventory[item].number > 0 then
    	if varient == 1 then
    		hoveredButton = 26
    	else
    		hoveredButton = 27
    	end
    end

	--print("8")

    if varient == 1 then
		Graphics.freetype.easy_printCenter(5, 797, 497, math.floor(jettisonAmt))
	else
		Graphics.freetype.easy_printCenter(5, 797, 497, math.floor(buyAmt))
	end
    if inventory[item].number > 0 and (varient == 1 or varient == 3 or playerCredits > currPlanetInventory[item].price) then
        if hoveredButton == 22 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMinS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMin)
        end
        if hoveredButton == 21 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBigS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownBig)
        end
        if hoveredButton == 20 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMaxS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonDownMax)
        end

        if hoveredButton == 23 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMinS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMin)
        end
        if hoveredButton == 24 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBigS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpBig)
        end
        if hoveredButton == 25 then
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMaxS)
        else
        	Graphics.CSurface.GL_RenderPrimitive(jettisonUpMax)
        end

		--print("9")

        if varient == 1 and jettisonAmt > 0 then
	        if hoveredButton == 26 then 
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonButtonSelect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(jettisonButton)
	        end
	    elseif varient == 2 and buyAmt > 0 then
	        if hoveredButton == 27 then 
	        	Graphics.CSurface.GL_RenderPrimitive(buyButton.delect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(buyButton.on)
	        end
	    elseif buyAmt > 0 then
	    	if hoveredButton == 27 then 
	        	Graphics.CSurface.GL_RenderPrimitive(sellButtonSelect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(sellButton)
	        end
	    end
	end

	--print("10")
	if varient > 1 then
		if mousePos.x > 880 + xOffset and mousePos.x < 920 + xOffset and mousePos.y > 186 and mousePos.y < 226 then
			Graphics.CSurface.GL_RenderPrimitive(switchButtonSelect)
			hoveredButton = 45
		else
			Graphics.CSurface.GL_RenderPrimitive(switchButtonOn)
		end
	end
	Graphics.CSurface.GL_PopMatrix()
end

local function renderMenuBack(mousePos)
	Graphics.CSurface.GL_RenderPrimitive(backImage)
    if tab == 1 then
		Graphics.CSurface.GL_RenderPrimitive(tab1Image)
        if mousePos.y > 217 and mousePos.y < 297 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 3
			Graphics.CSurface.GL_RenderPrimitive(tab2ImageSelect)
        elseif mousePos.y > 298 and mousePos.y < 378 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 4
			Graphics.CSurface.GL_RenderPrimitive(tab3ImageSelect)
        elseif mousePos.y > 379 and mousePos.y < 459 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 5
			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
        end
	elseif tab == 2 then
		Graphics.CSurface.GL_RenderPrimitive(tab2Image)
        if mousePos.y > 136 and mousePos.y < 216 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 2
			Graphics.CSurface.GL_RenderPrimitive(tab1ImageSelect)
        elseif mousePos.y > 298 and mousePos.y < 378 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 4
			Graphics.CSurface.GL_RenderPrimitive(tab3ImageSelect)
        elseif mousePos.y > 379 and mousePos.y < 459 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 5
			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
        end
	elseif tab == 3 then
		Graphics.CSurface.GL_RenderPrimitive(tab3Image)
        if mousePos.y > 136 and mousePos.y < 216 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 2
			Graphics.CSurface.GL_RenderPrimitive(tab1ImageSelect)
        elseif mousePos.y > 217 and mousePos.y < 297 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 3
			Graphics.CSurface.GL_RenderPrimitive(tab2ImageSelect)
        elseif mousePos.y > 379 and mousePos.y < 459 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 5
			Graphics.CSurface.GL_RenderPrimitive(tab4ImageSelect)
        end
    elseif tab == 4 then
		Graphics.CSurface.GL_RenderPrimitive(tab4Image)
        if mousePos.y > 136 and mousePos.y < 216 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 2
			Graphics.CSurface.GL_RenderPrimitive(tab1ImageSelect)
        elseif mousePos.y > 217 and mousePos.y < 297 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 3
			Graphics.CSurface.GL_RenderPrimitive(tab2ImageSelect)
        elseif mousePos.y > 298 and mousePos.y < 378 and mousePos.x > 294 and mousePos.x < 331 then
        	hoveredButton = 4
			Graphics.CSurface.GL_RenderPrimitive(tab3ImageSelect)
        end
	end
end

local function renderTab1(mousePos)
	Graphics.CSurface.GL_RenderPrimitive(sidebarTop)
    Graphics.freetype.easy_printCenter(62, 787, 148, "CARGO HOLD")
    Graphics.freetype.easy_printCenter(10, 787, 170, "Credits:"..math.floor(playerCredits))
    Graphics.freetype.easy_printCenter(10, 787, 186, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
    renderItemList(-10, playerInventory, nil, 1, selectedItem, false, mousePos, true)
    if selectedItem >= 0 then
    	renderItemTab(-10, selectedItem, playerInventory, nil, 1, mousePos)
    end
end

local function renderTab2(mousePos)
	Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_ClearAll()
    Graphics.CSurface.GL_SetStencilMode(1,1,1)
    Graphics.CSurface.GL_RenderPrimitive(backImageStencil)
    Graphics.CSurface.GL_SetStencilMode(2,1,1)


	Graphics.CSurface.GL_PushMatrix()
	local xOffset = (625 / planetZoom)
	local yOffset = (338 / planetZoom)
	local anglePlanet = 0
	if selectPlanet > -1 then
		anglePlanet = 270 + ((selectPlanet - 1) * (360 / #planetTableList)) * tab2Spin/100 
		while anglePlanet > 360 do
			anglePlanet = anglePlanet - 360
		end
		xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		planetZoom = math.min(2, planetZoom + Hyperspace.FPS.SpeedFactor/12)
	elseif selectPlanet < 0 and planetZoom > 1 then
		anglePlanet = 270 + ((oldSelectPlanet - 1) * (360 / #planetTableList)) * tab2Spin/100 
		while anglePlanet > 360 do
			anglePlanet = anglePlanet - 360
		end
		xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		planetZoom = math.max(1, planetZoom - Hyperspace.FPS.SpeedFactor/6)
	end
	Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
    Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(1, 1, 1, 1 - 0.75 * (planetZoom - 1)))
	Graphics.CSurface.GL_RenderPrimitive(backImageTab2)
	Graphics.CSurface.GL_RemoveColorTint()
	Graphics.CSurface.GL_PopMatrix()
	if #planetTableList > 0 then
    	for i, planetTable in ipairs(planetTableList) do
    		if planetTable.beacon > -1 and not (i == selectPlanet or (i == oldSelectPlanet and planetZoom > 1 and selectPlanet < 0)) then
    			local angle = 270 + ((i - 1) * (360 / #planetTableList)) * tab2Spin/100 
    			while angle > 360 do
    				angle = angle - 360
    			end
	    		--print("I:"..tostring(i).." COUNT:"..tostring(count).." ANGLE:"..tostring(angle).." X:"..tostring(math.cos(angle)).." Y:"..tostring(math.sin(angle)))
	    		Graphics.CSurface.GL_PushMatrix()
	    		local xOffset = (625 / planetZoom) + math.cos(math.rad(angle)) * 140
	    		local yOffset = (338 / planetZoom) + math.sin(math.rad(angle)) * 140
	    		local renderTag = false
	    		if selectPlanet > -1 or (selectPlanet < 0 and planetZoom > 1) then
					xOffset = xOffset - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
					yOffset = yOffset - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
	    		else
		        	local pPoint = Hyperspace.Pointf(625 + math.cos(math.rad(angle)) * 140, 338 + math.sin(math.rad(angle)) * 140)
		        	if get_distance(mousePos, pPoint) < 45 then 
						hoverPlanet = i
					end
					if tab2Spin >= 100 then
						renderTag = true
					end
	    		end
	    		Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
		        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    			Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(1, 1, 1, 1 - 0.5 * (planetZoom - 1)))
    			
	        	Graphics.CSurface.GL_RenderPrimitive(planetImageList[planetTable.planet])
	        	if currentPlanet == i then
	        		Graphics.CSurface.GL_RenderPrimitive(planetImageSelectGlow)
	        	end
	    		if hoverPlanet == i then
	        		Graphics.CSurface.GL_RenderPrimitive(planetImageSelect)
	        	end
				Graphics.CSurface.GL_RemoveColorTint()
	    		Graphics.CSurface.GL_PopMatrix()

	    		if renderTag then
        			local size = Graphics.freetype.easy_measureWidth(51, planetNameList[planetTable.name]) - 8
					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag1l)
					Graphics.CSurface.GL_PopMatrix()

					for offset = 0, size-1, 1 do
						Graphics.CSurface.GL_PushMatrix()
				        Graphics.CSurface.GL_Translate(xOffset + 93 + offset, yOffset, 0)
						Graphics.CSurface.GL_RenderPrimitive(planettag1c)
						Graphics.CSurface.GL_PopMatrix()
					end

					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(xOffset + 93 + size, yOffset, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag1r)
					Graphics.CSurface.GL_PopMatrix()
		            Graphics.freetype.easy_print(51, xOffset + 44, yOffset -45 -9, planetNameList[planetTable.name])
        		end
	    	end
    	end
    end
	--Graphics.CSurface.GL_DrawRect(0, 0, 1280, 720, Graphics.GL_Color(1, 0, 0, 0.5))
	Graphics.CSurface.GL_SetStencilMode(0,1,1)
	--Graphics.CSurface.GL_PopStencilMode()
    if planetZoom > 1 then
    	if planetZoom < 2 then
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2Off)
    	elseif mousePos.x > 345-1 and mousePos.x < 345+65 and mousePos.y > 142-1 and mousePos.y < 142+25 then
    		hoveredButton = 30
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2Select)
    	else
    		Graphics.CSurface.GL_RenderPrimitive(backButtonTab2On)
    	end
    end

    if selectPlanet > -1 or (selectPlanet < 0 and planetZoom > 1) then
    	local targetPlanet = selectPlanet
    	if selectPlanet < 0 and planetZoom > 1 then targetPlanet = oldSelectPlanet end
    	local planetTable = planetTableList[targetPlanet]
    	if not planetTable.planet then 
    		selectPlanet = -1
    		return
    	end
	    local angle = 270 + ((targetPlanet - 1) * (360 / #planetTableList)) * tab2Spin/100 
		while angle > 360 do
			angle = angle - 360
		end
		--print("I:"..tostring(i).." COUNT:"..tostring(count).." ANGLE:"..tostring(angle).." X:"..tostring(math.cos(angle)).." Y:"..tostring(math.sin(angle)))
		Graphics.CSurface.GL_PushMatrix()
		local xOffset = (625 / planetZoom) + math.cos(math.rad(angle)) * 140 - (164 * (planetZoom - 1) / planetZoom) - math.cos(math.rad(anglePlanet)) * 140 * (planetZoom - 1)
		local yOffset = (338 / planetZoom) + math.sin(math.rad(angle)) * 140 - math.sin(math.rad(anglePlanet)) * 140 * (planetZoom - 1)

		Graphics.CSurface.GL_Scale(planetZoom, planetZoom, 0)
        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    	--Graphics.CSurface.GL_RenderPrimitive(planetImageTag)
		--Graphics.freetype.easy_printCenter(5, -45+130, -45-17+7, planetNameList[planetTable.name])
    	Graphics.CSurface.GL_RenderPrimitive(planetImageList[planetTable.planet])
		Graphics.CSurface.GL_RenderPrimitive(planetImageSelect)
		if currentPlanet == targetPlanet then
    		Graphics.CSurface.GL_RenderPrimitive(planetImageSelectGlow)
    	end
		Graphics.CSurface.GL_PopMatrix()
	end

	if selectPlanet > -1 and planetZoom >= 2 then
		local targetPlanet = selectPlanet
    	if selectPlanet < 0 and planetZoom > 1 then targetPlanet = oldSelectPlanet end
    	local planetTable = planetTableList[targetPlanet]
    	Graphics.freetype.easy_printCenter(62, 460, 184, planetNameList[planetTable.name])
    	Graphics.freetype.easy_printCenter(10, 460, 208, "Industry: "..industryList[planetTable.type])
    	Graphics.freetype.easy_printCenter(10, 460, 226, "Condition: "..eventList[planetTable.event])
    	Graphics.freetype.easy_printCenter(10, 460, 436, "Tariff: "..math.floor(planetTable.tariff * 100).."%")
    	Graphics.freetype.easy_printCenter(10, 460, 454, "Exchange Rate: "..math.floor(planetTable.exchangeRate).."c per ~")
    	Graphics.freetype.easy_printCenter(10, 460, 472, "Missions Available: "..math.floor(#planetTable.deliveries))

    	Graphics.CSurface.GL_RenderPrimitive(arrowLOn)
    	Graphics.CSurface.GL_RenderPrimitive(arrowROn)
    	if mousePos.x > 351 and mousePos.x < 369 and mousePos.y > 329 and mousePos.y < 346 then
			hoveredButton = 31
    		Graphics.CSurface.GL_RenderPrimitive(arrowLSelect)
    	elseif mousePos.x > 552 and mousePos.x < 570 and mousePos.y > 329 and mousePos.y < 346 then
			hoveredButton = 32
    		Graphics.CSurface.GL_RenderPrimitive(arrowRSelect)
    	end

    	renderItemList(231, planetTableList[selectPlanet].inventory, planetTableList[selectPlanet].inventory, 2, -1, true, mousePos, false)
    end
    if tab2Spin <= 75 then
    	tab2Spin = math.min(100, tab2Spin + 5 * Hyperspace.FPS.SpeedFactor/16 + tab2Spin * Hyperspace.FPS.SpeedFactor/8)
    else
    	tab2Spin = math.min(100, tab2Spin + (5 - ((tab2Spin - 75) / 25) * 4.95) * Hyperspace.FPS.SpeedFactor/16 + (tab2Spin - (tab2Spin - 75) * 3) * Hyperspace.FPS.SpeedFactor/8)
    end
end

local function renderTab3(mousePos)
	if currentPlanet < 0 then
	    Graphics.freetype.easy_printCenter(64, 625, 292, "NO TRADING\nAVAILABLE HERE")
	else
		local addX = 231
		local removeX = 324
		local planetTable = planetTableList[currentPlanet]
		Graphics.CSurface.GL_PushMatrix()
		Graphics.CSurface.GL_Translate(-1 * removeX, 0, 0)
		Graphics.CSurface.GL_RenderPrimitive(sidebarTop)
		Graphics.CSurface.GL_PopMatrix()
		if buyingFromPlanet then
		    Graphics.freetype.easy_printCenter(62, 787 - removeX, 148, planetNameList[planetTable.name])
		    Graphics.freetype.easy_printCenter(6, 787 - removeX, 168, "Exchange Rate: "..math.floor(planetTable.exchangeRate).."c per ~")
		    local tooExpensive1 = false
		    local tooExpensive2 = false
		    if Hyperspace.ships.player.currentScrap < exchangeMult then
    			tooExpensive1 = true
    		end
		    if playerCredits < planetTable.exchangeRate * exchangeMult then
    			tooExpensive2 = true
    		end
		    if mousePos.y > 183 and mousePos.y < 202 then
		    	if mousePos.x > 711 - removeX and mousePos.x < 786 - removeX and not tooExpensive1 then
		    		hoveredButton = 40
		    	elseif mousePos.x > 788 - removeX and mousePos.x < 863 - removeX and not tooExpensive2 then
		    		hoveredButton = 41
		    	end
		    end
		    if mousePos.x > 677 - removeX and mousePos.x < 703 - removeX then
		    	if mousePos.y > 168 and mousePos.y < 179 then
		    		hoveredButton = 42
		    	elseif mousePos.y > 179 and mousePos.y < 190 then
		    		hoveredButton = 43
		    	elseif mousePos.y > 190 and mousePos.y < 201 then
		    		hoveredButton = 44
		    	end
		    end
			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(678 - removeX, 169, 0)
			if hoveredButton == 42 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 690 - removeX, 169, "1x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(678 - removeX, 180, 0)
			if hoveredButton == 43 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 690 - removeX, 180, "10x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(678 - removeX, 191, 0)
			if hoveredButton == 44 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButtonSmall)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(51, 690 - removeX, 191, "100x")
		    Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(713-7 - removeX, 185, 0)
			if tooExpensive1 then
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(160/255, 162/255, 171/255, 1))
			elseif hoveredButton == 40 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButton)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(6, 749-3 - removeX, 184, math.floor(planetTable.exchangeRate * exchangeMult * 0.8).."c for "..math.floor(exchangeMult).."~")
    		Graphics.CSurface.GL_RemoveColorTint()

			Graphics.CSurface.GL_PushMatrix()
			Graphics.CSurface.GL_Translate(789 - removeX, 185, 0)
			if tooExpensive2 then
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(160/255, 162/255, 171/255, 1))
			elseif hoveredButton == 41 then 
				Graphics.CSurface.GL_SetColorTint(Graphics.GL_Color(58/255, 127/255, 255/255, 1))
			end
    		Graphics.CSurface.GL_RenderPrimitive(exchangeButton)
			Graphics.CSurface.GL_PopMatrix()
		    Graphics.freetype.easy_printCenter(6, 825+4 - removeX, 184, math.floor(exchangeMult).."~ for "..math.floor(planetTable.exchangeRate * exchangeMult).."c")
		    Graphics.CSurface.GL_RemoveColorTint()
		else
		    Graphics.freetype.easy_printCenter(62, 787 - removeX, 148, "YOUR CARGO")
		    Graphics.freetype.easy_printCenter(10, 787 - removeX, 170, "Credits:"..math.floor(playerCredits))
		    Graphics.freetype.easy_printCenter(10, 787 - removeX, 186, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
		end
		if buyingFromPlanet then
			--renderItemList(addX, playerInventory, nil, 1, -1, false, mousePos, false)
			renderItemList(addX, planetTableList[currentPlanet].inventory, planetTableList[currentPlanet].inventory, 2, selectedBuyItem, true, mousePos, true)
		else
			renderItemList(addX, playerInventory, planetTableList[currentPlanet].inventory, 2, selectedBuyItem, true, mousePos, true)
		end
		if selectedBuyItem >= 0 and buyingFromPlanet and planetTableList[currentPlanet] then
			renderItemTab(-1 * removeX - 10, selectedBuyItem, planetTableList[currentPlanet].inventory, planetTableList[currentPlanet].inventory, 2, mousePos)
		elseif selectedBuyItem >= 0 and planetTableList[currentPlanet] then
			renderItemTab(-1 * removeX - 10, selectedBuyItem, playerInventory, planetTableList[currentPlanet].inventory, 3, mousePos)
		end

	end
end

local function renderTab3License(mousePos, sectorId, xOffset)
    Graphics.freetype.easy_printCenter(14, 625+xOffset, 252, string.format("Purchase a\n%s\nto trade here", licenseList[sectorId][1]))
    local blueprint = Hyperspace.Blueprints:GetWeaponBlueprint(licenseList[sectorId][2])
    local cost = blueprint.desc.cost
    Graphics.freetype.easy_printCenter(10, 625+xOffset, 356, string.format("Cost:%i~", cost))
    if mousePos.x > 743-172-1+xOffset and mousePos.x < 743-172+110+xOffset and mousePos.y > 511-140-1 and mousePos.y < 511-140+21 and Hyperspace.ships.player.currentScrap >= cost then
    	hoveredButton = 60
    end

	Graphics.CSurface.GL_PushMatrix()
    Graphics.CSurface.GL_Translate(-172+xOffset, -140, 0)
    if hoveredButton == 60 then 
    	Graphics.CSurface.GL_RenderPrimitive(buyButton.select)
    elseif Hyperspace.ships.player.currentScrap < cost then
    	Graphics.CSurface.GL_RenderPrimitive(buyButton.off)
    else
    	Graphics.CSurface.GL_RenderPrimitive(buyButton.on)
    end
    Graphics.CSurface.GL_PopMatrix()
end


local function renderTab4(mousePos)
	Graphics.CSurface.GL_RenderPrimitive(backImageTab4)
	local initialX = 546
	local initialY = 142
	local map = Hyperspace.App.world.starMap
	if currentPlanet > -1 and #planetTableList[currentPlanet].deliveries > 0 and hasLicense(map.currentSector.description.type) then
		for d, deliverTable in ipairs(planetTableList[currentPlanet].deliveries) do
			local xOffset = initialX + ((d-1)%2) * 182
			local yOffset = initialY + math.floor((d-1)/2) * 199
			local type = deliverTable.type
			Graphics.CSurface.GL_PushMatrix()
	        Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
	        Graphics.CSurface.GL_RenderPrimitive(questBox)
	        Graphics.freetype.easy_printCenter(63, 88, 8, questList[type])
	        if type == 1 then
	        	--print(deliverTable.dest.." :"..#planetTableList)
	        	local destPlanet = planetTableList[deliverTable.dest]
	        	if destPlanet then
	        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
	        		Graphics.freetype.easy_printCenter(10, 88, 65, planetNameList[destPlanet.name])
	        	end
	        	Graphics.freetype.easy_printCenter(14, 88, 83, "Reward: "..math.floor(deliverTable.value).."c")
	        	Graphics.freetype.easy_printCenter(14, 88, 108, math.floor(deliverTable.amount).."t")
	        else
	        	--print(deliverTable.dest.." :"..#planetTableList)
	        	if deliverTable.dest == -1 then
	        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
	        		Graphics.freetype.easy_printCenter(10, 88, 65, "Next Sector")
	        	elseif planetTableList[deliverTable.dest] then
	        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
	        		Graphics.freetype.easy_printCenter(10, 88, 65, planetNameList[planetTableList[deliverTable.dest].name])
	        	end
	        	Graphics.freetype.easy_printCenter(14, 88, 83, "Reward: "..math.floor(deliverTable.value).."c")
	        	local cTabInfo = cargoList[deliverTable.item]
	        	Graphics.freetype.easy_printCenter(14, 88, 108, "Item: "..math.floor(deliverTable.amount).."t")
	        	Graphics.freetype.easy_printCenter(10, 88, 135, cTabInfo.name)
	        end
	        if activeDelivery and activeDelivery.type or (type == 1 and deliverTable.amount > playerCargoSpace - playerCargo) then
	        	Graphics.CSurface.GL_RenderPrimitive(acceptButtonOff)
	        elseif mousePos.x > xOffset + 27 - 1 and mousePos.x < xOffset + 27 + 125 and mousePos.y > yOffset + 160 -1 and mousePos.y < yOffset + 160 + 25 then
	        	hoveredButton = 50
	        	hoverQuest = d
	        	Graphics.CSurface.GL_RenderPrimitive(acceptButtonSelect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(acceptButton)
	        end
	        Graphics.CSurface.GL_PopMatrix()
		end
	elseif currentPlanet > -1 and #planetTableList[currentPlanet].deliveries > 0 then
		renderTab3License(mousePos, map.currentSector.description.type, 100)
		Graphics.CSurface.GL_PushMatrix()
        Graphics.CSurface.GL_Translate(-1000, 0, 0)
        Graphics.CSurface.GL_RenderPrimitive(buyButton.on)
        Graphics.CSurface.GL_PopMatrix()
	else
		Graphics.CSurface.GL_PushMatrix()
	    Graphics.CSurface.GL_Translate(initialX, initialY, 0)
    	Graphics.freetype.easy_printCenter(10, 797, 186, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
    	Graphics.freetype.easy_printCenter(63, 180, 80, "NO\nAVAILABLE\nMISSIONS")
    	Graphics.CSurface.GL_PopMatrix()
	end
    
	local xOffset = 345
	local yOffset = 202
	local deliverTable = activeDelivery
	if activeDelivery and activeDelivery.type then
		local type = deliverTable.type
		Graphics.CSurface.GL_PushMatrix()
	    Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
	    Graphics.freetype.easy_printCenter(62, 88, -47, "ACTIVE")
	    Graphics.freetype.easy_printCenter(62, 88, -26, "MISSION")
	    Graphics.CSurface.GL_RenderPrimitive(questBox)
	    Graphics.freetype	.easy_printCenter(63, 88, 8, questList[type])
	    if type == 1 then
        	local destPlanet = planetTableList[deliverTable.dest]
        	if destPlanet then
        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
        		Graphics.freetype.easy_printCenter(10, 88, 65, planetNameList[destPlanet.name])
        	end
        	Graphics.freetype.easy_printCenter(14, 88, 83, "Reward: "..math.floor(deliverTable.value).."c")
        	Graphics.freetype.easy_printCenter(14, 88, 108, math.floor(deliverTable.amount).."t")
        else
        	if deliverTable.dest == -1 then
        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
        		Graphics.freetype.easy_printCenter(10, 88, 65, "Next Sector")
        	elseif planetTableList[deliverTable.dest] then
        		Graphics.freetype.easy_printCenter(14, 88, 38, "Deliver To:")
        		Graphics.freetype.easy_printCenter(10, 88, 65, planetNameList[planetTableList[deliverTable.dest].name])
        	end
        	Graphics.freetype.easy_printCenter(14, 88, 83, "Reward: "..math.floor(deliverTable.value).."c")
        	local cTabInfo = cargoList[deliverTable.item]
        	Graphics.freetype.easy_printCenter(14, 88, 108, "Item: "..math.floor(deliverTable.amount).."t")
        	Graphics.freetype.easy_printCenter(10, 88, 135, cTabInfo.name)
        end
        if currentPlanet > -1 and currentPlanet == deliverTable.dest and (type == 1 or playerInventory[deliverTable.item].number >= deliverTable.amount) then
        	if mousePos.x > xOffset + 27 - 1 and mousePos.x < xOffset + 27 + 125 and mousePos.y > yOffset + 160 -1 and mousePos.y < yOffset + 160 + 25 then
	        	hoveredButton = 52
	        	Graphics.CSurface.GL_RenderPrimitive(completeButtonSelect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(completeButton)
	        end
        else
	        if mousePos.x > xOffset + 27 - 1 and mousePos.x < xOffset + 27 + 125 and mousePos.y > yOffset + 160 -1 and mousePos.y < yOffset + 160 + 25 then
	        	hoveredButton = 51
	        	Graphics.CSurface.GL_RenderPrimitive(abandonButtonSelect)
	        else
	        	Graphics.CSurface.GL_RenderPrimitive(abandonButton)
	        end
	    end
    	Graphics.CSurface.GL_PopMatrix()
    else
		Graphics.CSurface.GL_PushMatrix()
	    Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    	Graphics.freetype.easy_printCenter(63, 88, 40, "NO\nACTIVE\nMISSION")
    	Graphics.CSurface.GL_PopMatrix()
	end
	Graphics.CSurface.GL_PushMatrix()
    Graphics.CSurface.GL_Translate(xOffset, yOffset, 0)
    Graphics.freetype.easy_printCenter(10, 88, -63, math.floor(playerCargo).."/"..math.floor(playerCargoSpace).." Cargo Space")
	Graphics.freetype.easy_printCenter(10, 88, 205, "SOURCE type missions:")
	Graphics.freetype.easy_printCenter(6, 88, 220, "These missions require to acquire")
	Graphics.freetype.easy_printCenter(6, 88, 232, "a certain amount of a resource and")
	Graphics.freetype.easy_printCenter(6, 88, 244, "deliver it to a different planet")
	Graphics.freetype.easy_printCenter(10, 88, 275, "DELIVERY type missions:")
	Graphics.freetype.easy_printCenter(6, 88, 290, "These missions give you a randomly")
	Graphics.freetype.easy_printCenter(6, 88, 302, "sized package and require you to")
	Graphics.freetype.easy_printCenter(6, 88, 314, "deliver it to a different planet")
	Graphics.CSurface.GL_PopMatrix()
end

script.on_render_event(Defines.RenderEvents.GUI_CONTAINER, function()
	--print("BEFORE GUI") 
	hoveredButton = 0
    hoverItem = -1
    hoverBuyItem = -1
	hoverPlanet = -1
	hoverQuest = -1
    currentPlanet = -1
end, function() end)

--script.on_render_event(Defines.RenderEvents.MOUSE_CONTROL, function() print("BEFORE MOUSE") end, function() print("AFTER MOUSE") end)

local lastTabbedWindow = nil
script.on_render_event(Defines.RenderEvents.TABBED_WINDOW, function() end, function(tabName)
	if tabName == "arc_trade" and lastTabbedWindow ~= "arc_trade" then
		tab2Spin = 1
		buyAmt = 0
		jettisonAmt = 0
		calculateCargo()
		if selectedItem == -1 then
			for i, n in ipairs(playerInventory) do
				if n.number > 0 then
					selectedItem = i
					break
				end
			end
		end
		if selectedBuyItem == -1 then
			for i, n in ipairs(planetTableList[currentPlanet].inventory) do
				if n.number > 0 then
					selectedBuyItem = i
					break
				end
			end
		end
	end
	if tabName == "arc_trade" then
		--print("AFTER WINDOW")

		local mousePos = Hyperspace.Mouse.position
		renderMenuBack(mousePos)

	    -- Get currentPlanet
	    local map = Hyperspace.App.world.starMap
		local location = map.currentLoc
		for i, pTable in ipairs(planetTableList) do
			if pTable.beacon > -1 then
				local location2 = map.locations[pTable.beacon]
				if location2.loc.x == location.loc.x and location2.loc.y == location.loc.y then
					currentPlanet = i
					break
				end
			end
		end

		if tab == 4 then
    		renderTab4(mousePos)
	    elseif tab == 3 and hasLicense(map.currentSector.description.type) then
    		renderTab3(mousePos)
	    elseif tab == 3 then
	    	renderTab3License(mousePos, map.currentSector.description.type, 0)
	    elseif tab == 2 then
	        renderTab2(mousePos)
	    elseif tab == 1 then
	        renderTab1(mousePos)
	    end
	end
	lastTabbedWindow = tabName
end)

--[[script.on_render_event(Defines.RenderEvents.SPACE_STATUS, function() end, function()
	hoveredButton = 0
    hoverItem = -1
    hoverBuyItem = -1
	hoverPlanet = -1
	hoverQuest = -1
    currentPlanet = -1

    --Open Trade Button
    local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
	local mousePos = Hyperspace.Mouse.position
	if (Hyperspace.ships.enemy and Hyperspace.ships.enemy._targetable.hostile) or inMenu or commandGui.menu_pause or commandGui.event_pause then
		Graphics.CSurface.GL_RenderPrimitive(menuButtonOff)
	elseif mousePos.x > 1207 + 7 and mousePos.x < 1207 + 45 and mousePos.y > 608 + 7 and mousePos.y < 608 + 45 then
    	hoveredButton = 1
		Graphics.CSurface.GL_RenderPrimitive(menuButtonSelect)
	else
		Graphics.CSurface.GL_RenderPrimitive(menuButtonOn)
    end
    if inMenu then
	    renderMenuBack(mousePos)

	    if commandGui.menu_pause then return end
	    -- Get currentPlanet
	    local map = Hyperspace.App.world.starMap
		local location = map.currentLoc
		for i, pTable in ipairs(planetTableList) do
			if pTable.beacon > -1 then
				local location2 = map.locations[pTable.beacon]
				if location2.loc.x == location.loc.x and location2.loc.y == location.loc.y then
					currentPlanet = i
					break
				end
			end
		end

		if tab == 4 then
    		renderTab4(mousePos)
	    elseif tab == 3 then
    		renderTab3(mousePos)
	    elseif tab == 2 then
	        renderTab2(mousePos)
	    elseif tab == 1 then
	        renderTab1(mousePos)
	    end
	end
end)]]

local function openMenu()
	--inMenu = true
	tab2Spin = 1
	buyAmt = 0
	jettisonAmt = 0
	calculateCargo()
	if selectedItem == -1 then
		for i, n in ipairs(playerInventory) do
			if n.number > 0 then
				selectedItem = i
				break
			end
		end
	end
	if selectedBuyItem == -1 then
		for i, n in ipairs(planetTableList[currentPlanet].inventory) do
			if n.number > 0 then
				selectedBuyItem = i
				break
			end
		end
	end
end
local function tab1Button()
	tab = 1
	if selectedItem == -1 then
		for i, n in ipairs(playerInventory) do
			if n.number > 0 then
				selectedItem = i
				break
			end
		end
	end
end
local function tab2Button()
	tab = 2
end
local function tab3Button()
	tab = 3
	if selectedBuyItem == -1 then
		for i, n in ipairs(planetTableList[currentPlanet].inventory) do
			if n.number > 0 then
				selectedBuyItem = i
				break
			end
		end
	end
end
local function tab4Button()
	tab = 4
end
local function tab5Button()
	--inMenu = false
end

local function scrollUpButton()
	scrollingUp = true
end
local function scrollDownButton()
	scrollingDown = true
end
local function scrollBarButton()
	mouseDownPos = Hyperspace.Mouse.position.y
	lastMousePos = Hyperspace.Mouse.position.y
end

local function reduceItemsMax()
	if tab == 1 then
		jettisonAmt = 0
	else
		buyAmt = 0
	end
end
local function reduceItemsBig()
	if tab == 1 then
		if jettisonAmt >= 400 then
			jettisonAmt = math.max(0, jettisonAmt - 100)
		else
			jettisonAmt = math.max(0, jettisonAmt - 10)
		end
	else
		if buyAmt >= 400 then
			buyAmt = math.max(0, buyAmt - 100)
		else
			buyAmt = math.max(0, buyAmt - 10)
		end
	end
end
local function reduceItemsSmall()
	if tab == 1 then
		jettisonAmt = math.max(0, jettisonAmt - 1)
	else
		buyAmt = math.max(0, buyAmt - 1)
	end
end
local function increaseItemsSmall()
	if tab == 1 then
		jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 1)
	elseif buyingFromPlanet then
		buyAmt = math.min(playerCargoSpace - playerCargo, planetTableList[currentPlanet].inventory[selectedBuyItem].number, math.floor(playerCredits / planetTableList[currentPlanet].inventory[selectedBuyItem].price), buyAmt + 1)
	else
		buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 1)
	end
end
local function increaseItemsBig()
	if tab == 1 then
		if jettisonAmt >= 300 then
			jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 100)
		else
			jettisonAmt = math.min(playerInventory[selectedItem].number, jettisonAmt + 10)
		end
	elseif buyingFromPlanet then
		local maxPurchase = math.min(playerCargoSpace - playerCargo, planetTableList[currentPlanet].inventory[selectedBuyItem].number, math.floor(playerCredits / planetTableList[currentPlanet].inventory[selectedBuyItem].price))
		if buyAmt >= 300 then
			buyAmt = math.min(maxPurchase, buyAmt + 100)
		else
			buyAmt = math.min(maxPurchase, buyAmt + 10)
		end
	else
		if buyAmt >= 300 then
			buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 100)
		else
			buyAmt = math.min(playerInventory[selectedBuyItem].number, buyAmt + 10)
		end
	end
end
local function increaseItemsMax()
	if tab == 1 then
		jettisonAmt = playerInventory[selectedItem].number
	elseif buyingFromPlanet then
		buyAmt = math.min(playerCargoSpace - playerCargo, planetTableList[currentPlanet].inventory[selectedBuyItem].number, math.floor(playerCredits / planetTableList[currentPlanet].inventory[selectedBuyItem].price))
	else
		buyAmt = playerInventory[selectedBuyItem].number
	end
end
local function jettisonPress()
	Hyperspace.Sounds:PlaySoundMix("breach", -1, false)
	playerInventory[selectedItem].number = playerInventory[selectedItem].number - jettisonAmt
	if playerInventory[selectedItem].number <= 0 then
		selectedItem = -1
		for i, n in ipairs(playerInventory) do
			if n.number > 0 then
				selectedItem = i
				break
			end
		end
	end
	calculateCargo()
	savePlayerInventory()
	jettisonAmt = 0
end
local function buySellPress()
	Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
    if buyingFromPlanet then
    	playerCredits = playerCredits - planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt 
		planetTableList[currentPlanet].inventory[selectedBuyItem].number = planetTableList[currentPlanet].inventory[selectedBuyItem].number - buyAmt
		playerInventory[selectedBuyItem].number = playerInventory[selectedBuyItem].number + buyAmt
		planetTableList[currentPlanet].inventory[selectedBuyItem].trend = planetTableList[currentPlanet].inventory[selectedBuyItem].trend - math.ceil(buyAmt / 10) 
	else
		playerCredits = playerCredits + planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt - math.floor(planetTableList[currentPlanet].inventory[selectedBuyItem].price * buyAmt * planetTableList[currentPlanet].tariff)
		playerInventory[selectedBuyItem].number = playerInventory[selectedBuyItem].number - buyAmt
		planetTableList[currentPlanet].inventory[selectedBuyItem].number = planetTableList[currentPlanet].inventory[selectedBuyItem].number + buyAmt
		planetTableList[currentPlanet].inventory[selectedBuyItem].trend = planetTableList[currentPlanet].inventory[selectedBuyItem].trend + math.ceil(buyAmt / 10) 
	end
	buyAmt = 0
	calculateCargo()
	savePlayerInventory()
	savePlanets()
end

local function planetBackButton()
	oldSelectPlanet = selectPlanet
	selectPlanet = -1
end
local function planetLeftButton()
	selectPlanet = selectPlanet - 1
	if selectPlanet < 1 then
		local count = 0
		for i, planetTable in ipairs(planetTableList) do
			if planetTable.beacon > -1 then
				count = count + 1
	    	end
		end
		selectPlanet = count
	end
end
local function planetRightButton()
	selectPlanet = selectPlanet + 1
	local count = 0
	for i, planetTable in ipairs(planetTableList) do
		if planetTable.beacon > -1 then
			count = count + 1
    	end
	end
	if selectPlanet > count then
		selectPlanet = 1
	end
end

local function exchangeScrapButton()
	Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
	playerCredits = playerCredits + planetTableList[currentPlanet].exchangeRate * exchangeMult
	Hyperspace.ships.player:ModifyScrapCount(-1 * exchangeMult,false)
	savePlayerInventory()
end
local function exchangeCreditsButton()
	Hyperspace.Sounds:PlaySoundMix("buy", -1, false)
	playerCredits = playerCredits - planetTableList[currentPlanet].exchangeRate * exchangeMult
	Hyperspace.ships.player:ModifyScrapCount(exchangeMult,false)
	savePlayerInventory()
end
local function multOneButton()
	exchangeMult = 1
end
local function multTenButton()
	exchangeMult = 10
end
local function multHundredButton()
	exchangeMult = 100
end
local function switchInvButton()
	buyAmt = 0
	buyingFromPlanet = not buyingFromPlanet
end

local function acceptQuest()
	if hoverQuest > -1 then
		activeDelivery = planetTableList[currentPlanet].deliveries[hoverQuest]
		table.remove(planetTableList[currentPlanet].deliveries, hoverQuest)
		savePlayerInventory()
		savePlanets()
		calculateCargo()
	end
end
local function abandonQuest()
	activeDelivery = nil
	savePlayerInventory()
	calculateCargo()
end
local function completeQuest()
    Hyperspace.Sounds:PlaySoundMix("levelup", -1, false)
	playerCredits = playerCredits + activeDelivery.value
	if activeDelivery.type > 1 then 
		playerInventory[activeDelivery.item].number = playerInventory[activeDelivery.item].number - activeDelivery.amount
	end
	activeDelivery = nil
	savePlayerInventory()
	calculateCargo()
end

local function purchaseLicense()
	local map = Hyperspace.App.world.starMap
	local blueprint = Hyperspace.Blueprints:GetWeaponBlueprint(licenseList[map.currentSector.description.type][2])
    local cost = blueprint.desc.cost
    Hyperspace.ships.player:ModifyScrapCount(-1 * cost,false)
    Hyperspace.App.gui.equipScreen:AddWeapon(blueprint, true, false)
	savePlayerInventory()
	calculateCargo()
end

local buttonFunctions = {}
buttonFunctions[1] = {func = openMenu}
buttonFunctions[2] = {func = tab1Button}
buttonFunctions[3] = {func = tab2Button}
buttonFunctions[4] = {func = tab3Button}
buttonFunctions[5] = {func = tab4Button}
buttonFunctions[6] = {func = tab5Button}

buttonFunctions[10] = {func = scrollUpButton}
buttonFunctions[11] = {func = scrollDownButton}
buttonFunctions[12] = {func = scrollBarButton}

buttonFunctions[20] = {func = reduceItemsMax}
buttonFunctions[21] = {func = reduceItemsBig}
buttonFunctions[22] = {func = reduceItemsSmall}
buttonFunctions[23] = {func = increaseItemsSmall}
buttonFunctions[24] = {func = increaseItemsBig}
buttonFunctions[25] = {func = increaseItemsMax}
buttonFunctions[26] = {func = jettisonPress}
buttonFunctions[27] = {func = buySellPress}

buttonFunctions[30] = {func = planetBackButton}
buttonFunctions[31] = {func = planetLeftButton}
buttonFunctions[32] = {func = planetRightButton}

buttonFunctions[40] = {func = exchangeScrapButton}
buttonFunctions[41] = {func = exchangeCreditsButton}
buttonFunctions[42] = {func = multOneButton}
buttonFunctions[43] = {func = multTenButton}
buttonFunctions[44] = {func = multHundredButton}
buttonFunctions[45] = {func = switchInvButton}

buttonFunctions[50] = {func = acceptQuest}
buttonFunctions[51] = {func = abandonQuest}
buttonFunctions[52] = {func = completeQuest}

buttonFunctions[60] = {func = purchaseLicense}


script.on_internal_event(Defines.InternalEvents.ON_MOUSE_L_BUTTON_DOWN, function(x,y)
	if hoverPlanet > -1 then
		selectPlanet = hoverPlanet
		hoverPlanet = -1
	elseif hoverItem > -1 then
		selectedItem = hoverItem
		hoverItem = -1
		jettisonAmt = 0
	elseif hoverBuyItem > -1 then
		selectedBuyItem = hoverBuyItem
		hoverBuyItem = -1
		buyAmt = 0
	elseif buttonFunctions[hoveredButton] then
		buttonFunctions[hoveredButton].func()
	end

	--[[if inMenu then
		return Defines.Chain.HALT
	end]]
	return Defines.Chain.CONTINUE
end)
script.on_internal_event(Defines.InternalEvents.ON_MOUSE_L_BUTTON_UP, function(x,y) 
	if mouseDownPos then
		mouseDownPos = nil
		lastMousePos = nil
	elseif scrollingUp then
		scrollingUp = false
	elseif scrollingDown then
		scrollingDown = false
	end
    return Defines.Chain.CONTINUE
end)

--Map Rendering
script.on_render_event(Defines.RenderEvents.GUI_CONTAINER, function() end, function() 
	local map = Hyperspace.App.world.starMap
	if map.bOpen and not map.bChoosingNewSector then
		for i, pTable in ipairs(planetTableList) do
			if pTable.beacon > -1 then
				local location = map.locations[pTable.beacon]
				local locX = location.loc.x
				local locY = location.loc.y
				local size = Graphics.freetype.easy_measureWidth(51, planetNameList[pTable.name]) - 8
				Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(locX + 385, locY + 122, 0)
				Graphics.CSurface.GL_RenderPrimitive(planettag3l)
				Graphics.CSurface.GL_PopMatrix()

				for offset = 0, size-1, 1 do
					Graphics.CSurface.GL_PushMatrix()
			        Graphics.CSurface.GL_Translate(locX + 385 + 19 + offset, locY + 122, 0)
					Graphics.CSurface.GL_RenderPrimitive(planettag3c)
					Graphics.CSurface.GL_PopMatrix()
				end

				Graphics.CSurface.GL_PushMatrix()
		        Graphics.CSurface.GL_Translate(locX + 385 + 19 + size, locY + 122, 0)
				Graphics.CSurface.GL_RenderPrimitive(planettag3r)
				Graphics.CSurface.GL_PopMatrix()
	            Graphics.freetype.easy_print(51, locX + 385 + 15, locY + 122 + 15, planetNameList[pTable.name])
	        end
		end
	end
end)

--Other stuff
script.on_internal_event(Defines.InternalEvents.CONSTRUCT_SHIP_MANAGER, function(ship)
	if ship.iShipId == 1 and Hyperspace.metaVariables["arctrade_loot_room"] == -1 then
		if math.random(1,4) == 1 then
			addLootRoom = true
			hasBeenHostile = false
		end
	end
end)

script.on_internal_event(Defines.InternalEvents.JUMP_LEAVE, function()
	--inMenu = false
	hasBeenHostile = false
	everHadCrew = false
	Hyperspace.metaVariables["arctrade_loot_room"] = -1
	for i, planetTable in ipairs(planetTableList) do
		for item, iTab in ipairs(planetTable.inventory) do
			iTab.price = math.max(10, iTab.price + iTab.trend)
			iTab.trend = -1 * iTab.trend + math.random(-1, 1)
		end
	end
end)

script.on_internal_event(Defines.InternalEvents.JUMP_ARRIVE, function()
	--inMenu = false
	everHadCrew = false
end)

local everHadCrew = false
script.on_render_event(Defines.RenderEvents.SHIP, function() end, function(ship)
	if ship.iShipId == 1 then
		local shipManager = Hyperspace.ships.enemy
		if addLootRoom == true then
			addLootRoom = false
			local emptyRooms = {}
			for room in vter(shipManager.ship.vRoomList) do
				if not shipManager:GetSystemInRoom(room.iRoomId) then
					table.insert(emptyRooms, room.iRoomId)
				end
			end

			if #emptyRooms > 0 then
				local tabIndex = 1
				if #emptyRooms > 1 then
					tabIndex = math.random(1, #emptyRooms)
				end
				Hyperspace.metaVariables["arctrade_loot_room"] = emptyRooms[tabIndex]
				lootLevel = 0
			end
		end
		local commandGui = Hyperspace.Global.GetInstance():GetCApp().gui
		if Hyperspace.metaVariables["arctrade_loot_room"] >= 0 then
			if Hyperspace.ships.enemy._targetable.hostile then
				hasBeenHostile = true
			end
			local roomId = Hyperspace.metaVariables["arctrade_loot_room"]
			local location = shipManager:GetRoomCenter(roomId)
		    Graphics.CSurface.GL_DrawRect(location.x + 6 - 16, location.y + 12 - 16, 20, 11, Graphics.GL_Color(1, 1, 1, 1))
		    local hasFriendlyCrew = false
		    local hasEnemyCrew = false
		    local hasAnyECrew = false
		    if not (commandGui.bPaused or commandGui.event_pause or commandGui.menu_pause or commandGui.bAutoPaused or commandGui.touch_pause) then
			    for crewmem in vter(shipManager.vCrewList) do
			    	if crewmem.iShipId == 1 then
			    		hasAnyECrew = true
			    		everHadCrew = true
			    	end
			        if crewmem.iShipId == 1 and not crew and crewmem.iRoomId == roomId then
			            hasEnemyCrew = true
			        elseif crewmem.iShipId == 0 and crewmem.iRoomId == roomId then
			        	hasFriendlyCrew = true
			        end
			    end
			    if (hasFriendlyCrew and not hasAnyECrew) or (hasBeenHostile and everHadCrew and not (Hyperspace.ships.enemy._targetable.hostile and hasAnyECrew) and Hyperspace.ships.enemy.hullIntegrity.first > 0) then
			    	lootLevel = 20
			    elseif hasFriendlyCrew and not hasEnemyCrew then
			    	lootLevel = lootLevel + Hyperspace.FPS.SpeedFactor/16
			    elseif not hasFriendlyCrew then
			    	lootLevel = math.max(0, lootLevel - Hyperspace.FPS.SpeedFactor/4)
			    end
			end
			if Hyperspace.ships.enemy.hullIntegrity.first <= 0 then 
				Hyperspace.metaVariables["arctrade_loot_room"] = -1
				return
			end
		    Graphics.CSurface.GL_DrawRect(location.x + 6 - 16, location.y + 12 - 16, lootLevel, 11, Graphics.GL_Color(1, 0, 0, 1))
		    Graphics.CSurface.GL_PushMatrix()
		    Graphics.CSurface.GL_Translate(location.x,location.y,0)
		    Graphics.CSurface.GL_RenderPrimitive(lootOverlay)
		    Graphics.CSurface.GL_PopMatrix()
		    if lootLevel >= 20 then
		    	lootLevel = 0
		    	giveRandomReward(20)
		    	Hyperspace.metaVariables["arctrade_loot_room"] = -1
		    end
		end
	end
end)

function arc_trade_give(itemId, amount)
	playerInventory[itemId].number = playerInventory[itemId].number + amount
	calculateCargo()
	savePlayerInventory()
end

function arc_trade_money(amount)
	playerCredits = playerCredits + amount
	savePlayerInventory()
end