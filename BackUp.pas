
// TicTacToe in Pascal using SwinGame
//

program TicTacToe;
uses SwinGame, sgTypes, SysUtils,TerminalUserInput;



//buttonClicked
function ButtonClicked(mouX, mouY: Single; width, height: Integer): Boolean;
var
xPosition, yPosition: Single;
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

//Player Status and Rematch/Exit
procedure PlayerStatus(playerNumber:integer);

begin
	RefreshScreen();
	Delay(1000);
	ClearScreen();
	DrawText('Player1 Won' ,ColorRed,'arial.ttf',60,250 ,120 );
	DrawText('Play Again' ,ColorRed,'arial.ttf',25,250 ,220 );
	DrawText('Exit' ,ColorRed,'arial.ttf',25,550 ,220 );
	if ButtonClicked(550,220,30,30) then //Circle 3
	begin
				
		DrawText('Test' ,ColorRed,'arial.ttf',25,550 ,350 );
	end;

end;


//ButtonClick for drawing
function Draw_Player1():integer;
var
p1,p2,p3,p4,p5,p6,p7,p8,p9,player1,player2:integer;
begin
	p1:=0;
	p2:=0;
	p3:=0;
	p4:=0;
	p5:=0;
	p6:=0;
	p7:=0;
	p8:=0;
	p9:=0;
	player1:=0;
	player2:=1;
	
	
	
		if ButtonClicked(275,400,50,40) and (p1=0) then //Cicrle POS 1
			begin
				
				FillCircle(ColorMagenta ,320 ,420 ,10 );
				p1:=1;
				result:= 0;
			end;	
		if ButtonClicked(400,400,50,40) and (p2=0) then //Circle 2
			begin
				
				FillCircle(ColorMagenta,430,420,10);
				p2:=1;
				result:= 1;
			end;
		if ButtonClicked(520,400,50,40) and (p3=0) then //Circle 3
			begin
				
				FillCircle(ColorMagenta,540,420,10);
				p3:=1;
				result:= 2;
			end;
			
		if ButtonClicked(290,460,50,40) and (p4=0) then //Circle 4
			begin
				
				FillCircle(ColorMagenta ,320 ,485 ,10 );
				p4:=1;
				result:= 3;
			end;
		
		if ButtonClicked(400,460,50,40) and (p5=0) then //Circle 5
			begin
				//DrawRectangle(ColorMagenta,400,460,50,40);
				FillCircle(ColorMagenta,430,485,10);
				p5:=1;
				result:= 4;
			end;
		if ButtonClicked(520,470,50,40) and (p6=0) then //Circle 6
			begin
				//DrawRectangle(ColorMagenta,520,470,50,40);
				FillCircle(ColorMagenta,535,485,10);
				p6:=1;
				result:= 5;
			end;
		
		if ButtonClicked(290,530,50,40) and (p7=0) then //Circle 7
			begin
				
				FillCircle(ColorMagenta ,320 ,550 ,10 );
				p7:=1;
				result:= 6;
			end;
		if ButtonClicked(410,530,50,40) and (p8=0) then //Circle 8
			begin
				//DrawRectangle(ColorMagenta,410,530,50,40);
				FillCircle(ColorMagenta ,430 ,550 ,10 );
				p8:=1;
				result:= 7;
			end;
		if ButtonClicked(510,530,50,40) and (p9=0) then //Circle 9
			begin
				//DrawRectangle(ColorMagenta,510,530,50,40);
				FillCircle(ColorMagenta ,530 ,550 ,10 );
				p9:=1;
				result:= 8;
			end;
	
	
	
	RefreshScreen();
end;

////ButtonClick for Player2
function Draw_Player2():integer;
var
p1,p2,p3,p4,p5,p6,p7,p8,p9,player1,player2:integer;
begin
	p1:=0;
	p2:=0;
	p3:=0;
	p4:=0;
	p5:=0;
	p6:=0;
	p7:=0;
	p8:=0;
	p9:=0;
	player1:=0;
	player2:=1;
	
	
		if ButtonClicked(275,400,50,40) and (p1=0) then //Cicrle POS 1
			begin
				
				FillCircle(ColorBlack ,320 ,420 ,10 );
				p1:=1;
				result:= 0;
			end;	
		if ButtonClicked(400,400,50,40) and (p2=0) then //Circle 2
			begin
				
				FillCircle(ColorBlack,430,420,10);
				p2:=1;
				result:= 1;
			end;
		if ButtonClicked(520,400,50,40) and (p3=0) then //Circle 3
			begin
				
				FillCircle(ColorBlack,540,420,10);
				p3:=1;
				result:= 2;
			end;
			
		if ButtonClicked(290,460,50,40) and (p4=0) then //Circle 4
			begin
				
				FillCircle(ColorBlack ,320 ,485 ,10 );
				p4:=1;
				result:= 3;
			end;
		
		if ButtonClicked(400,460,50,40) and (p5=0) then //Circle 5
			begin
				//DrawRectangle(ColorBlack,400,460,50,40);
				FillCircle(ColorBlack,430,485,10);
				p5:=1;
				result:= 4;
			end;
		if ButtonClicked(520,470,50,40) and (p6=0) then //Circle 6
			begin
				//DrawRectangle(ColorBlack,520,470,50,40);
				FillCircle(ColorBlack,535,485,10);
				p6:=1;
				result:= 5;
			end;
		
		if ButtonClicked(290,530,50,40) and (p7=0) then //Circle 7
			begin
				
				FillCircle(ColorBlack ,320 ,550 ,10 );
				p7:=1;
				result:= 6;
			end;
		if ButtonClicked(410,530,50,40) and (p8=0) then //Circle 8
			begin
				//DrawRectangle(ColorBlack,410,530,50,40);
				FillCircle(ColorBlack ,430 ,550 ,10 );
				p8:=1;
				result:= 7;
				
			end;
		if ButtonClicked(510,530,50,40) and (p9=0) then //Circle 9
			begin
				//DrawRectangle(ColorBlack,510,530,50,40);
				FillCircle(ColorBlack ,530 ,550 ,10 );
				p9:=1;
				result:= 8;
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
var player1,player2,i,value:integer;
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
				value:=Draw_Player1();
				checkPlayer1[value]:=1;
				writeln('pos:',value);
				inc(player1);
				inc(player2);
		end
		else if ButtonClicked(150,400,700,200) and ((player2 mod 2) = 0)then //for drawing the circles
		begin
			
				WriteLn(player2);
				value:=Draw_Player2();
				checkPlayer2[value]:=1;
				writeln('pos:',value);
				inc(player1);
				inc(player2);
		end;
		
		//Horizontal check(Player1)
		if((checkPlayer1[0]=1) and (checkPlayer1[1]=1 ) and (checkPlayer1[2]=1) ) then //1
		begin
		
		DrawLine(ColorGreen , 275,420 , 600,420 );
		
		
		PlayerStatus(1);
		
		end;
		
		if((checkPlayer1[3]=1) and (checkPlayer1[4]=1 ) and (checkPlayer1[5]=1) ) then//2
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 275,480 , 600,480 );
		
		end;
		if((checkPlayer1[6]=1) and (checkPlayer1[7]=1 ) and (checkPlayer1[8]=1) ) then//3
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',20,580 ,120 );
		DrawLine(ColorGreen , 275,540 , 600,540 );
		
		end;
		
		//Horizontal Player2
		if((checkPlayer2[0]=1) and (checkPlayer2[1]=1 ) and (checkPlayer2[2]=1) ) then //1
		begin
		
		DrawText('Player2 Won' ,ColorRed,'arial.ttf',60,250 ,120 );
		DrawLine(ColorGreen , 275,420 , 600,420 );
		
		end;
		
		if((checkPlayer2[3]=1) and (checkPlayer2[4]=1 ) and (checkPlayer2[5]=1) ) then//2
		begin
		DrawText('Player2 Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 275,480 , 600,480 );
		
		end;
		if((checkPlayer2[6]=1) and (checkPlayer2[7]=1 ) and (checkPlayer2[8]=1) ) then//3
		begin
		DrawText('Player2 Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 275,540 , 600,540 );
		
		end;
		
		//Vertical Player1
		if((checkPlayer1[0]=1) and (checkPlayer1[3]=1 ) and (checkPlayer1[6]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 320, 400, 1, 170);
		
		end;
		if((checkPlayer1[1]=1) and (checkPlayer1[4]=1 ) and (checkPlayer1[7]=1) ) then //2
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 430, 400, 1, 170);
		
		end;
		if((checkPlayer1[2]=1) and (checkPlayer1[5]=1 ) and (checkPlayer1[8]=1) ) then //3
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 540, 400, 1, 170);
		
		end;
		
		//Vertical Player2
		if((checkPlayer2[0]=1) and (checkPlayer2[3]=1 ) and (checkPlayer2[6]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 320, 400, 1, 170);
		
		end;
		if((checkPlayer2[1]=1) and (checkPlayer2[4]=1 ) and (checkPlayer2[7]=1) ) then //2
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 430, 400, 1, 170);
		
		end;
		if((checkPlayer2[2]=1) and (checkPlayer2[5]=1 ) and (checkPlayer2[8]=1) ) then //3
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawRectangle(ColorGreen, 540, 400, 1, 170);
		
		end;
		
		//CrossCut Player 1
		if((checkPlayer1[6]=1) and (checkPlayer1[4]=1 ) and (checkPlayer1[2]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 300,550 , 600,400 );
		end;
		
		if((checkPlayer1[0]=1) and (checkPlayer1[4]=1 ) and (checkPlayer1[8]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 220,400 , 580,550 );
		end;
		
		//CrossCut Player 2
		if((checkPlayer2[6]=1) and (checkPlayer2[4]=1 ) and (checkPlayer2[2]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 300,550 , 600,400 );
		end;
		
		if((checkPlayer2[0]=1) and (checkPlayer2[4]=1 ) and (checkPlayer2[8]=1) ) then //1
		begin
		DrawText('Sweta Won' ,ColorRed,'arial.ttf',60,580 ,120 );
		DrawLine(ColorGreen , 220,400 , 580,550 );
		end;
		
		
		RefreshScreen();
	
		
	Until WindowCloseRequested();
	ReleaseAllResources();
end;

begin
	Main();
end.

