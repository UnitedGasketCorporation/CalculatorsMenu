#SingleInstance off
#notrayicon
Window1:
Gui Destroy
Gui, Font, s5
Gui, Add, Text,, `  ;controls padding
gui, add, text,ym,  ;lines up controls under padding
Gui, Font, s8
Gui, Add, Button,w160 left, ` &Windows Calc
Gui, Add, Button,w160 left, ` &Parts Per Sheet
Gui, Add, Button,w160 left, ` &Roll Length
Gui, Add, Button,w160 left, ` &Unit of Measure
Gui, Add, Button,w160 left, ` &Staggered Layout
Gui, Add, Button,w160 left, ` &Circle Layout Generator
Gui, Add, Button,w160 left, ` &Rectangle Parts Die Generator
Gui, add, text
Gui, Add, Button,w160 left, ` Calculator Menu Information
Gui, add, text,, Tip: ALT+[first letter] to open an item.
Gui, Font, s5
Gui, Add, Text,ym, `  ;controls padding
Gui, Font, s8
Gui, Show,, Calculators
return
;ButtonCalculatorMenuInformation:  Commented out this button because I didn't feel like updating the info.
msgbox,
(
This menu is a collection of calculation programs combined in a single place for easy access. It will be updated any time a calculation program is found or made.

Windows Calculator:
This is the default calculator that comes with windows. It is useful for any general calculations of any kind as long as you know what conversions or data you need.

Parts Per Sheet: Version 1.04
This calculator is used to calculate the optimal 90 degree rotation for rectangle or near rectangle parts on a piece of material of a specified size.

Roll Length: Version 0.1
This will calculate the length of a roll of material based on it's size and the thickness of the material. This calculator is not complete and will not work yet.

Unit of Measure: Version 4.10
The program is called "Convert," as stated by it's title, it converts units of measure to other units of measure.
Convert is Copyright Joshua F. Madison 1996-2013
)
return
buttonRectanglePartsDieGenerator:
run, "data/Rectangle Parts Die generator.exe"
return
ButtonWindowsCalc:
run, "Calc.exe"
exitapp
ButtonPartsPerSheet:
run, "data/Parts Per Sheet Calc.exe"
exitapp
ButtonRollLength:
msgbox, This one isn't programmed yet. Try another one.
return
exitapp
ButtonUnitofMeasure:
run, "data/UM Conversion.exe"
exitapp
ButtonStaggeredLayout:
run, "data/StaggeredLayout.exe"
exitapp
ButtonCircleLayoutGenerator:
run, "data/Circle Layout Generator.exe"
exitapp
GuiClose:
GuiEscape:
ExitApp