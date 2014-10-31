include('theme.lua')
include('config.lua')

	--[[You probably shouldn't touch this file unless you know what it does.]]--

function AddClassButton( parent, x, y, w, h, text)
	local buttons = vgui.Create("DButton", parent)
	buttons:SetPos(x, y)
	buttons:SetSize(w, h)
	buttons:SetText(text)
	buttons:SetTextColor(Color(255,255,255))
	buttons:SetFont("Lobsterz")
	buttons.Paint = function()
		draw.RoundedBox( 0, 0, 0, buttons:GetWide(), buttons:GetTall(), Color( 66, 66, 66, 255 ) )
	end

	buttons.OnCursorEntered = function() 
		buttons.Paint = function()
			draw.RoundedBox( 0, 0, 0, buttons:GetWide(), buttons:GetTall(), Color( 93, 92, 92, 255 ) )
		end 
	end

	buttons.OnCursorExited = function() 
		buttons.Paint = function()
			draw.RoundedBox( 0, 0, 0, buttons:GetWide(), buttons:GetTall(), Color( 66, 66, 66, 255 ) )
		end 
	end
		
end

function AddNewMedal(title, image, w, h, soundeffect) 

		RibbonTitle = vgui.Create( "DLabel")
		RibbonTitle:SetPos( ScrW()/2-125, ScrH()/2-220	 )
		RibbonTitle:SetText( title )
		RibbonTitle:SetFont("MedalTitle")
		RibbonTitle:SetTextColor(Color(255,255,255))
		RibbonTitle:SizeToContents()
		RibbonTitle:SetAlpha(0) -- Invisible.

		--[[Image]]--

	myImage = vgui.Create("DImage")
	myImage:SetMaterial( image )
	myImage:SetPos(ScrW()/2-150, ScrH()/2-320)
	myImage:SetAlpha(0)
	myImage:SetSize( w, h )
	--myImage:Hide()
	myImage:MoveTo( ScrW()/2-150, ScrH()/2-310, 1, 0, 10 ) 
	surface.PlaySound( soundeffect )
	myImage:AlphaTo( 255, 2, 0, function ( )
	RibbonTitle:AlphaTo( 255, 0.5) -- Fade in after the image in 1 second.
		timer.Simple(4, function ()
			myImage:AlphaTo(0, 1, 0)
			RibbonTitle:AlphaTo( 0, 1) --fade out after the image fades.

		end)
	end)
	
end