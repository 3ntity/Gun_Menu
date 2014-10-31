	include('libs/functions.lua')
	include('theme.lua')
	//I should have made the template a vgui element.....

	--[[Main Frame]]--

	

	function ClassSelector()

		local ClassSelectorFrame = vgui.Create( "DFrame" )
		ClassSelectorFrame:SetPos( ScrW()/2-150, ScrH()/2-150 )
		ClassSelectorFrame:SetSize( 600, 600 )
		ClassSelectorFrame:SetTitle( "" )
		ClassSelectorFrame:SetVisible( true )
		ClassSelectorFrame:Center()
		ClassSelectorFrame:MakePopup()
		ClassSelectorFrame.Paint = function()
			draw.RoundedBox( 2, 0, 0, ClassSelectorFrame:GetWide(), ClassSelectorFrame:GetTall(), Color( 36, 36, 36, 150 ) )
		end

		--[[BackGround]]--

		local BackGround = vgui.Create( "DPanel", ClassSelectorFrame )
		BackGround:SetPos( 20, 120 ) -- Set the position of the panel
		BackGround:SetSize( 560, 460 ) -- Set the size of the panel
		BackGround.Paint = function()
			draw.RoundedBox( 0, 0, 0, BackGround:GetWide(), BackGround:GetTall(), Color( 36, 36, 36, 255 ) )
		end



		--[[Header Panel]]--

		local HeaderPanel = vgui.Create( "DPanel", ClassSelectorFrame )
		HeaderPanel:SetPos( 20, 40 ) -- Set the position of the panel
		HeaderPanel:SetSize( 560, 50 ) -- Set the size of the panel
		HeaderPanel.Paint = function()
			draw.RoundedBox( 0, 0, 0, HeaderPanel:GetWide(), HeaderPanel:GetTall(), Color( 36, 36, 36, 255 ) )
		end

		//Title

		local DLabel = vgui.Create( "DLabel", HeaderPanel )
		DLabel:SetPos( 5, 5 )
		DLabel:SetText( "Weapon Loadout" )
		DLabel:Center()
		DLabel:SizeToContents()
		DLabel:SetTextColor(Color(255,255,255) )
		DLabel:SetFont("Titles")

		--[[DModel Panel]]--

		local ModelPanel = vgui.Create( "DPanel", ClassSelectorFrame )
		ModelPanel:SetPos( 40, 140 )
		ModelPanel:SetSize( 160, 420 )
		ModelPanel.Paint = function()
			draw.RoundedBox( 0, 0, 0, ModelPanel:GetWide(), ModelPanel:GetTall(), Color( 66, 66, 66, 255 ) )
		end

		local icon = vgui.Create( "DModelPanel", ModelPanel )
		icon:SetSize( 160, 440 )
		icon:SetModel( LocalPlayer():GetModel() )
		icon:SetCamPos( Vector(15,30,45) )

		--[[Buttons]]--

		AddClassButton(ClassSelectorFrame, 220, 140, 340, 90, "Assault" )
		AddClassButton(ClassSelectorFrame, 220, 250, 340, 90, "Medic" )
		AddClassButton(ClassSelectorFrame, 220, 360, 340, 90, "Heavy" )
		AddClassButton(ClassSelectorFrame, 220, 470, 340, 90, "Recon" )

	end

	concommand.Add("WeaponLoadout", ClassSelector)