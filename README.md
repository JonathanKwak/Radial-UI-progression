# Radial UI progression
There currently exists an engine limitation for the ROBLOX Studio engine, where developers cannot quickly create radial UI masks. In layman's terms, you can't make those circular progression bars very easily.
However, you *can* mask half of an object and have a rotating UI masking feature with an object called `UIGradient`. This workaround involves setting 50% of the image to completely invisible, then setting the other 50% to visible. That way, you can rotate the `UIGradient` and have it hide any half of the image.

Keeping this in mind, a workaround for creating radial UI masks is to have two UI frames, each with an image of equal size. Each image would have the aforementioned `UIGradient` object in them. Then, each frame would mask either the left or right side. The code would then rotate the two `UIGradients` (with a clamp on rotation for either left or right side) to give the illusion of seamless radial progression.

## Features
- Drag and drop compatibility: The code and UI elements are self-contained within one frame, inside of the `ScreenGui` object. This means you can place this in any UI element, and it would work independently of other systems
- Easy to modify: Developers can simply change the properties of the two images to set its image content, the transparency, color, etc...
- Independent: The percent progress of the bar can be set externally, and everything else will be handled internally. In essence, all you need to do is change the `Percentage` `NumberValue` to some number between 0-1, and the code would handle everything for you.

## Setup
- Import the `.rbxm` file into any UI element in-game
- Change the value of the `Percentage` `NumberValue` to any number between 0-1 (corresponding to 0% and 100%).
- Everything else will be handled

## Limitations

- Built for Roblox games only
- Due to a ROBLOX engine-sided error, a small sliver of the image may appear when the percentage is below 50%.
