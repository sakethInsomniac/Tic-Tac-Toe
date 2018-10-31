
// TicTacToe in Pascal using SwinGame
//

program TicTacToe;
uses SwinGame, sgTypes, SysUtils,TerminalUserInput;

type
  TPlayerArray= array [1..9] of integer;

//buttonClicked
function ButtonClicked(mouX, mouY: Single; width, height: Integer): Boolean;
var xPosition, yPosition: Single;
xClick,yClick: Single;
begin
	xPosition := MouseX();
	yPosition := MouseY();
	xClick := (mouX + width);

	yClick:= (mouY + height);
	result := false;

	if MouseClicked( LeftButton ) then
	begin
		if (xPosition >= mouX) and (xPosition <=xClick) then
		begin
			if(yPosition>= mouY) and (yPosition <= yClick) then
			begin
				result := true;
			end;
		end;

	end;
end;

function NextorExit():String;
begin
	
		if KeyTyped(UpKey) then 
		begin
			result:= 'stop';
		end;
		
		if KeyTyped(Downkey) then
		begin
			result:='restart';
		end;
		writeln('saketh');
	
	RefreshScreen();
end;

function NextGame(numberWon:integer):string;
begin
	if numberWon=1 then 
	begin
		Delay(1300);
		ClearScreen();
		DrawText('Player1 Won' ,ColorRed,'arial.ttf',30,275 ,600 );
		DrawText('Play Again ?' ,ColorRed,'arial.ttf',15,275 ,650 );
		DrawRectangle(ColorBlack,275,650,50,40);//1
		refreshScreen();
		result:=NextorExit();
		
	end;
	if numberWon=2 then 
	begin
		Delay(1300);
		ClearScreen();
		DrawText('Player2 Won ' ,ColorRed,'arial.ttf',30,275 ,600 );
		DrawText('Play Again ?' ,ColorRed,'arial.ttf',15,275 ,650 );
		DrawText('Exit :(' ,ColorRed,'arial.ttf',15,400 ,650 );
		result:=NextorExit();
	end;
	if numberWon=3 then 
	begin
		Delay(1300);
		ClearScreen();
		DrawText('Match Draw' ,ColorRed,'arial.ttf',30,275 ,20 );
		DrawText('Play Again ?' ,ColorRed,'arial.ttf',15,275 ,650 );
		DrawText('Exit :(' ,ColorRed,'arial.ttf',15,400 ,650 );
		result:=NextorExit();
	end;
	
	
	
	
end;

//Player Status and Rematch/Exit
function PlayerStatus(playerNumberArray:array of integer;playerNumber:integer):integer;
var i,count:integer;
begin
		count:=0;
		for i := Low(playerNumberArray) to High(playerNumberArray) do
		begin
			if(playerNumberArray[i]=1) then
			begin
				inc(count);
			end;
		end;
		if count=5 then
		begin
		  
		  result:=3;
		  
		end;
		
		
		//Horizontal check(Player1)
		if((playerNumberArray[0]=1) and (playerNumberArray[1]=1 ) and (playerNumberArray[2]=1) ) then //1
		begin
		
		DrawLine(ColorGreen ,275,420 , 600,420 );
		RefreshScreen();
		writeln('PlayerNumberMethod',playerNumber);
		result:=playerNumber;
		end;
		
		if((playerNumberArray[3]=1) and (playerNumberArray[4]=1 ) and (playerNumberArray[5]=1) ) then//2
		begin
		
		DrawLine(ColorGreen , 275,480 , 600,480 );
		RefreshScreen();
		
		result:=playerNumber;
		end;
		if((playerNumberArray[6]=1) and (playerNumberArray[7]=1 ) and (playerNumberArray[8]=1) ) then//3
		begin
		
		DrawLine(ColorGreen , 275,540 , 600,540 );
		RefreshScreen();
		
		result:=playerNumber;
		end;
		
		//Vertical Player1
		if((playerNumberArray[0]=1) and (playerNumberArray[3]=1 ) and (playerNumberArray[6]=1) ) then //1
		begin
		
		DrawRectangle(ColorGreen, 320, 400, 1, 170);
		
		RefreshScreen();
		
		result:=playerNumber;
		
		end;
		if((playerNumberArray[1]=1) and (playerNumberArray[4]=1 ) and (playerNumberArray[7]=1) ) then //2
		begin
		
		DrawRectangle(ColorGreen, 430, 400, 1, 170);
		RefreshScreen();
		
		result:=playerNumber;
		end;
		
		if((playerNumberArray[2]=1) and (playerNumberArray[5]=1 ) and (playerNumberArray[8]=1) ) then //3
		begin
		
		DrawRectangle(ColorGreen, 540, 400, 1, 170);
		RefreshScreen();
		
		
		result:=playerNumber;
		
		end;
		
		//CrossCut Player 1
		if((playerNumberArray[6]=1) and (playerNumberArray[4]=1 ) and (playerNumberArray[2]=1) ) then //1
		begin
		
		DrawLine(ColorGreen , 300,550 , 600,400 );
		
		
		result:=playerNumber;
		end;
		
		if((playerNumberArray[0]=1) and (playerNumberArray[4]=1 ) and (playerNumberArray[8]=1) ) then //2
		begin
		
		DrawLine(ColorGreen , 220,400 , 580,550 );
		RefreshScreen();
		
		result:=playerNumber;
		end;	
	

end;


////ButtonClick for Player1
function Draw_Player1(drawPlayerArray:array of integer):TPlayerArray;

begin
		if ButtonClicked(275,400,50,40) and (drawPlayerArray[0]=0) then //Cicrle POS 1
			begin
				
				FillCircle(ColorMagenta ,320 ,420 ,10 );
				drawPlayerArray[0]:=1;
				result:= drawPlayerArray;
			end;	
		if ButtonClicked(400,400,50,40) and (drawPlayerArray[1]=0) then //Circle 2
			begin
				
				FillCircle(ColorMagenta,430,420,10);
				drawPlayerArray[1]:=1;
				result:= drawPlayerArray;
			end;
		if ButtonClicked(520,400,50,40) and (drawPlayerArray[2]=0) then //Circle 3
			begin
				
				FillCircle(ColorMagenta,540,420,10);
				drawPlayerArray[2]:=1;
				result:= drawPlayerArray;
			end;
			
		if ButtonClicked(290,460,50,40) and (drawPlayerArray[3]=0) then //Circle 4
			begin
				
				FillCircle(ColorMagenta ,320 ,485 ,10 );
				drawPlayerArray[3]:=1;
				result:= drawPlayerArray;
			end;
		
		if ButtonClicked(400,460,50,40) and (drawPlayerArray[4]=0) then //Circle 5
			begin
				//DrawRectangle(ColorBlack,400,460,50,40);
				FillCircle(ColorMagenta,430,485,10);
				drawPlayerArray[4]:=1;
				result:= drawPlayerArray;
			end;
		if ButtonClicked(520,470,50,40) and (drawPlayerArray[5]=0) then //Circle 6
			begin
				//DrawRectangle(ColorBlack,520,470,50,40);
				FillCircle(ColorMagenta,535,485,10);
				drawPlayerArray[5]:=1;
				result:= drawPlayerArray;
			end;
		
		if ButtonClicked(290,530,50,40) and (drawPlayerArray[6]=0) then //Circle 7
			begin
				
				FillCircle(ColorMagenta ,320 ,550 ,10 );
				drawPlayerArray[6]:=1;
				result:= drawPlayerArray;
			end;
		if ButtonClicked(410,530,50,40) and (drawPlayerArray[7]=0) then //Circle 8
			begin
				//DrawRectangle(ColorBlack,410,530,50,40);
				FillCircle(ColorMagenta ,430 ,550 ,10 );
				drawPlayerArray[7]:=1;
				result:= drawPlayerArray;
				
			end;
		if ButtonClicked(510,530,50,40) and (drawPlayerArray[8]=0) then //Circle 9
			begin
				//DrawRectangle(ColorBlack,510,530,50,40);
				FillCircle(ColorMagenta ,530 ,550 ,10 );
				drawPlayerArray[8]:=1;
				result:= drawPlayerArray;
			end;
	
	
	
	RefreshScreen();
end;


////ButtonClick for Player2
function Draw_Player2(drawPlayerArray2:array of integer):TPlayerArray;

begin
		if ButtonClicked(275,400,50,40) and (drawPlayerArray2[0]=0) then //Cicrle POS 1
			begin
				
				FillCircle(ColorBlack ,320 ,420 ,10 );
				drawPlayerArray2[0]:=1;
				result:= drawPlayerArray2;
			end;	
		if ButtonClicked(400,400,50,40) and (drawPlayerArray2[1]=0) then //Circle 2
			begin
				
				FillCircle(ColorBlack,430,420,10);
				drawPlayerArray2[1]:=1;
				result:= drawPlayerArray2;
			end;
		if ButtonClicked(520,400,50,40) and (drawPlayerArray2[2]=0) then //Circle 3
			begin
				
				FillCircle(ColorBlack,540,420,10);
				drawPlayerArray2[2]:=1;
				result:= drawPlayerArray2;
			end;
			
		if ButtonClicked(290,460,50,40) and (drawPlayerArray2[3]=0) then //Circle 4
			begin
				
				FillCircle(ColorBlack ,320 ,485 ,10 );
				drawPlayerArray2[3]:=1;
				result:= drawPlayerArray2;
			end;
		
		if ButtonClicked(400,460,50,40) and (drawPlayerArray2[4]=0) then //Circle 5
			begin
				//DrawRectangle(ColorBlack,400,460,50,40);
				FillCircle(ColorBlack,430,485,10);
				drawPlayerArray2[4]:=1;
				result:= drawPlayerArray2;
			end;
		if ButtonClicked(520,470,50,40) and (drawPlayerArray2[5]=0) then //Circle 6
			begin
				//DrawRectangle(ColorBlack,520,470,50,40);
				FillCircle(ColorBlack,535,485,10);
				drawPlayerArray2[5]:=1;
				result:= drawPlayerArray2;
			end;
		
		if ButtonClicked(290,530,50,40) and (drawPlayerArray2[6]=0) then //Circle 7
			begin
				
				FillCircle(ColorBlack ,320 ,550 ,10 );
				drawPlayerArray2[6]:=1;
				result:= drawPlayerArray2;
			end;
		if ButtonClicked(410,530,50,40) and (drawPlayerArray2[7]=0) then //Circle 8
			begin
				//DrawRectangle(ColorBlack,410,530,50,40);
				FillCircle(ColorBlack ,430 ,550 ,10 );
				drawPlayerArray2[7]:=1;
				result:= drawPlayerArray2;
				
			end;
		if ButtonClicked(510,530,50,40) and (drawPlayerArray2[8]=0) then //Circle 9
			begin
				//DrawRectangle(ColorBlack,510,530,50,40);
				FillCircle(ColorBlack ,530 ,550 ,10 );
				drawPlayerArray2[8]:=1;
				result:= drawPlayerArray2;
			end;
	
	
	
	RefreshScreen();
end;

//DrawGameBoard
procedure DrawGameBoard();
var xPosition,yPosition,i,rec_x:integer;
begin
	xPosition:=275;
	yPosition:=450;
	rec_x:=370;
	for i := 0 to 1 do
	begin
		DrawLine(ColorGreen , xPosition,yPosition , 600,yPosition );
				
		yPosition:=yPosition+70;
	end;
	for i := 0 to 1 do
	begin
		DrawRectangle(ColorGreen, rec_x, 400, 1, 170);
				
		rec_x:=rec_x+130;
	end;
	
	//Draw the boxes/
	DrawRectangle(ColorBlack,510,530,50,40);//9
	DrawRectangle(ColorBlack,408,530,50,40);//8
	DrawRectangle(ColorBlack,292,530,50,40);//7
	DrawRectangle(ColorBlack,510,465,50,40);//6
	DrawRectangle(ColorBlack,405,462,50,40);//5
	DrawRectangle(ColorBlack,290,465,50,40);//4
	DrawRectangle(ColorBlack,517,400,50,40);//3
	DrawRectangle(ColorBlack,405,400,50,40);//2
	DrawRectangle(ColorBlack,290,400,50,40);//1
	
	
	//Draw_CircleGame();
end;


Procedure Main();
var player1,player2,i,value,playNumber:integer;
guiStatus:String;
checkPlayer1 : array [1..9] of integer = (0,0,0,0,0,0,0,0,0);
checkPlayer2 : array [1..9] of integer = (0,0,0,0,0,0,0,0,0);

begin
	
	player1:=0;
	player2:=1;
	
	

	OpenGraphicsWindow('DT2_TicTacToe' ,1000 ,1000 );
	//ShowSwinGameSplashScreen();
    ClearScreen();
	DrawText('Welcome to TicTacToe' ,ColorRed,'arial.ttf',60,150 ,20 );
    
	if ButtonClicked(150,20,700,200) then
			begin
				ClearScreen(ColorWhite );
				DrawGameBoard();
			end;
	RefreshScreen();
	
	//FillCircle(ColorMagenta ,50 ,160 ,30 );
    //DrawTextLines('OR DO YOU???' ,ColorRed ,ColorWhite ,'Arial' ,18 ,AlignCenter ,400 ,400 ,160 ,100 );
    RefreshScreen();
    //Delay(5000 );
    
	
	repeat
		ProcessEvents();
		DrawFramerate(0,0);
		if ButtonClicked(150,20,700,200) then //for drawing the game
			begin
				DrawGameBoard();
				
			end;
		
		if ButtonClicked(150,400,700,200) and ((player1 mod 2) = 0)then //for drawing the circles
		begin
			
				WriteLn(player1);
				checkPlayer1:=Draw_Player1(checkPlayer1);
				inc(player1);
				inc(player2);
				playNumber:=playerStatus(checkPlayer1,1);
				writeln('playNumber',playNumber);
				if playNumber <> 0 then
				begin
					guiStatus:=NextGame(playNumber);
					writeln(guiStatus);
				end;
				
		end
		else if ButtonClicked(150,400,700,200) and ((player2 mod 2) = 0)then //for drawing the circles
		begin
			
				WriteLn(player2);
				checkPlayer2:=Draw_Player2(checkPlayer2);
				inc(player1);
				inc(player2);
				playNumber:=playerStatus(checkPlayer2,2);
				writeln('playNumber',playNumber);
				if playNumber <> 0 then
				begin
					guiStatus:=NextGame(playNumber);
					writeln(guiStatus);
				end;
		end;
		
		RefreshScreen();
		
	
	
		
	Until WindowCloseRequested() or (CompareText(guiStatus,'stop')=0);
	ReleaseAllResources();
end;

begin
	Main();
end.

