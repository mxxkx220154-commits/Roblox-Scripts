local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("MxxKx", "DarkTheme")
 
 
 
local Tab = Window:NewTab("Localplayer")
local Section = Tab:NewSection("walkspeed")
 
Section:NewButton("วิ่งไว", "ButtonInfo", function(c)
    print("Clicked")
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 200
end)
------------------------
Section:NewSlider("ปรับความเร็ว", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
---------------------
Section:NewTextBox("เขียนความเร็ว", "TextboxInfo", function(txt)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = txt
end)
---------------------------
Section:NewKeybind("ย่อ", "KeybindInfo", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
