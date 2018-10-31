unit GameLogic;

interface
  procedure Main();

implementation
uses
  GameResources,
  SysUtils,
  SwinGameAPI,
  KeyCodes;
  
function ReadString(prompt: String; x, y, maxLength: Integer; font: Font; 
                    promptColor, textColor, backColor: Color): String;
var
  temp: String;
begin
  temp := StringOfChar('M', maxLength + 1);
  
  DrawText(prompt, promptColor, font, x, y);
  StartReadingText(textColor, maxLength, font, x + TextWidth(prompt, font) + 10, y + 2);
  
  while IsReadingText() and not WindowCloseRequested() do
  begin
    ProcessEvents();

    FillRectangle(backColor, x + TextWidth(prompt, font) + 10, y, TextWidth(temp, font), TextHeight(temp, font) + 4); 

    RefreshScreen();
  end;
  
  result := TextReadAsASCII();
end; 
  
//The main procedure that controlls the game logic.
//
// SIDE EFFECTS:
procedure Main();
var
  name: String;
begin
  OpenGraphicsWindow('My Game', 800, 600);

  LoadResources();    

  name := ReadString('Name: ', 10, 50, 10, GameFont(Courier), ColorWhite, ColorBlack, ColorWhite);

  repeat
    ProcessEvents();

    //Draw screen
    ClearScreen(ColorBlack);
    DrawFramerate(0, 0, GameFont(Courier));

	DrawText('Hello ' + name, ColorWhite, GameFont(ArialLarge), 10, 50);

    RefreshScreen();
  until WindowCloseRequested();
  
  FreeResources();
end;

end.
