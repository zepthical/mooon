local Library = loadstring(game:HttpGet("https://github.com/zepthical/mooon/releases/download/v1.0.0/WindUI.zip"), true)()
local Window = Library:CreateWindow({
	Title = 'Dummy UI',
	Author = 'Free UI',
	Icon = 'door-open',
	Theme = 'Dark',
	Size = UDim2.new(0, 530,0, 400),
	Keybind = Enum.KeyCode.LeftControl,
	CloseUIButton = {
		Enabled = true,
		Text = 'Close UI'
	}
})

local Tab = Window:Tab({Title = 'General', Icon = 'grid-2x2'})

Window:SelectTab(1)

Tab:Section({Title = 'Section'})
Tab:Paragraph({
	Title = 'Paragraph Description and Image',
	Content = 'Description',
	Image = 'bell-ring'
})
Tab:Button({
	Title = "Click Me",
	Desc = "This is a simple button",
	Callback = function()
		Window:Notify({
			Title = "Notification Example 1",
			Content = "Content",
			Duration = 5,
		})
	end
})
Tab:Code({
	Title = "example-code.lua",
	Code = [[
local message = "Hello"
print(message)

if message == "Hello" then
    print("Greetings!")
end]],
})
Tab:Colorpicker({
	Title = "Pick a Color",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(r, g, b) print("Selected color: " .. tostring(r, g, b)) end
})
Tab:Toggle({
	Title = "Enable Feature",
	Default = true,
	Callback = function(state) print("Feature enabled: " .. tostring(state)) end
})
Tab:Slider({
	Title = "Volume Slider",
	Value = {
		Min = 0,
		Max = 100,
		Default = 50,
	},
	Callback = function(value) print("Volume set to: " .. value) end
})
Tab:Input({
	Title = "Username",
	Default = "Guest",
	Placeholder = "Enter your username",
	Callback = function(input) print("Username: " .. input) end
})
Tab:Dropdown({
	Title = "Select an Option",
	Values = { "Option 1", "Option 2", "Option 3" },
	Value = "Option 1",
	Callback = function(option) print("Selected: " .. option) end
})
Tab:Keybind({
	Title = 'Keybind',
	Content = 'Description + Image + True Value',
	Image = 'toggle-right',
	Default = true,
	Key = Enum.KeyCode.E,
	Callback = function(key, value)
		print(key, value)
	end,
})
