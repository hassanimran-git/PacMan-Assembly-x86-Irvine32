INCLUDE Irvine32.inc

.data


map BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0
    BYTE "@@ .  .  .  .  .  .  .  .  .  @@@ .  .  .  .  .  .  .  .  .   @@",0
    BYTE "@@  @@@@@@@  @@@@@@@@@        @@@         @@@@@@@@@  @@@@@@@  @@",0
    BYTE "@@ . .  .  .  .  .  .  .  .  .   .  .   .   .   .   .  .  .   @@",0
    BYTE "@@  @@@@@@@  @@@  @@@@  @@@@@@@@@@@@@@@@  @@@@  @@@  @@@@@@@  @@",0
    BYTE "@@  @@ .          @@@@  @@@@@@@@@@@@@@@@  @@@@          . @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@        @@@         @@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@@@@@@@  @@@  @@@@@@@@@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@@@@@@@  @@@  @@@@@@@@@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@ .    .     .      .    @@@  .    .     .     .     @@  @@",0
    BYTE "@@  @@  @@@@@  @@@@@@@@@@@@@  @@@  @@@@@@@@@@@@  @@@@@@@  @@  @@",0
    BYTE "@@  @@  @@@@@                  .                 @@@@@@@  @@  @@",0
    BYTE "@@  @@    .    @@@@@  @@@@@@@@   @@@@@@@  @@@@@        .  @@  @@",0
    BYTE "@@  @@@@@  @@@@@@@@@  @@@@@@@@ . @@@@@@@  @@@@@@@@@@@@  @@@@  @@",0
    BYTE "@@@ @@@@@  @@@@@@@@@ @@@              @@  @@@@@@@@@@@@  @@@@  @@",0
    BYTE "@@.  .  .  .  .    .  @@ .   .   .   .@@ .  .  .  .  . . ..   @@",0
    BYTE "@@  @@@@@  @@@@@@@@@  @@@@@@@@@@@@@@@@@@ @@@@@@@@@@@@  @@@@@ @@@",0
    BYTE "@@  @@@@@  @@@@@@@@@  @@@@@@@@@@@@@@@@@@  @@@@@@@@@@@  @@@@@  @@",0
    BYTE "@@  @@@@@  @@@@@@@@@                      @@@@@@@@@@@  @@@@@  @@",0
    BYTE "@@  @@@@@  @@@@@@@@@@@@@@@@@  @@@  @@@@@@@@@@@@@@@@@@  @@@@@  @@",0
    BYTE "@@  @@  .    .    .    .      @@@   .     .     .     .   @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@@@@@@@  @@@  @@@@@@@@@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@        @@@         @@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@  @@@@@@@@  @@@@  .   . @@@  .   .  @@@@  @@@@@@@@  @@  @@",0
    BYTE "@@  @@            @@@@  @@@@@@@@@@@@@@@@  @@@@            @@  @@",0
    BYTE "@@  @@@@@@  @@@@  @@@@  @@@@@@@@@@@@@@@@  @@@@  @@@@@@@@@@@@  @@",0
    BYTE "@@  @@@@@@  @@@@  @@@@  @@@@@@@@@@@@@@@@  @@@@  @@@@@@@@@@@@  @@",0
    BYTE "@@ .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  .  . @@",0
    BYTE "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",0

    MapAnimation BYTE "****************************************************************",0

    strScore BYTE "SCORE : ",0

    score BYTE 0

    xPos BYTE 30
    yPos BYTE 15

    inputChar BYTE ? 

    temp BYTE 0


    strLives BYTE "LIVES : ",0
    lives BYTE 3

    strLevel BYTE "LEVEL : ",0
    Level BYTE 1



InstuctStr  BYTE "           PAC-MAN INSTRUCTIONS           ",0ah
            BYTE "          ----------------------------------------",0ah
            BYTE "          1. Use w,a,s,d to move Pac-Man through",0ah
            BYTE "             the maze and collect all the coins.",0ah
            BYTE "                                                   ",0ah
            BYTE "          2. Avoid ghosts to prevent losing a life.",0ah
            BYTE "                                                   ",0ah
            BYTE "          3. Earn points for each pellet consumed.",0ah
            BYTE "                                                   ",0ah
            BYTE "          4. Progress through levels by clearing  ",0ah
            BYTE "             all pellets on the current maze.",0ah
            BYTE "                                                   ",0ah
            BYTE "          5. Press 'P' to pause and resume the game.",0ah
            BYTE "          ----------------------------------------",0ah
            BYTE "                       ENJOY THE GAME!             ",0ah
            BYTE "          ----------------------------------------",0ah
            BYTE "                                                   ",0ah
            BYTE "              press any key to continue...",0ah,0
 




PacmanStr   BYTE "          ______  ___  _____ ___  ___  ___   _   _ ",0ah
            BYTE "          | ___ \/ _ \/  __ \|  \/  | / _ \ | \ | |",0ah
            BYTE "          | |_/ / /_\ \ /  \/| .  . |/ /_\ \|  \| |",0ah
            BYTE "          |  __/|  _  | |    | |\/| ||  _  || . ` |",0ah
            BYTE "          | |   | | | | \__/\| |  | || | | || |\  |",0ah
            BYTE "          \_|   \_| |_/\____/\_|  |_/\_| |_/\_| \_/",0ah,0           
        
        playerNameBuffer   byte 30 dup(?)
        playerNameLength   dword ?
        NamePrompt BYTE "Enter Username: ",0

MenuStr BYTE "                            MENU",0ah
        BYTE " ",0ah
        BYTE "                        1.START GAME",0ah
        BYTE " ",0ah
        BYTE "                        2.HIGHCORES",0ah
        BYTE " ",0ah
        BYTE "                        3.LEVEL SELECT",0ah
        BYTE " ",0ah
        BYTE "                        4.QUIT",0ah
        BYTE " ",0ah
        BYTE " ",0ah
        BYTE "                    Enter your choice 1-4...",0ah,0
                                              
levelOptns BYTE "           Select Number",0ah
           BYTE " ",0ah
           BYTE "                   Level 1",0ah
           BYTE " ",0ah
           BYTE "                   Level 2",0ah
           BYTE " ",0ah
           BYTE "                   Level 3",0ah,0

FileName byte "Players.txt",0

Enemy1 BYTE 25,4
EnemyDirection BYTE 1

Enemy2 BYTE 30,4
Enemy2Direction BYTE 2



xFruitPos BYTE 13
yFruitPos BYTE 6



gameOver BYTE  "Game Over!!!",0ah
         BYTE " ",0ah
         BYTE " ",0ah
         BYTE " ",0ah
         BYTE " ",0ah
         BYTE " ",0ah,0

Portal_From_X BYTE 3
Portal_From_Y BYTE 16

Portal_To_X BYTE 61
Portal_To_Y BYTE 16


.code
main PROC
;Game Name
    mov dl,0
    mov dh,8
    call Gotoxy
    mov edx,OFFSET PacmanStr
    mov eax,brown
    call SetTextColor
    call WriteString
    mov eax,2000

;Prompt + Take Name Input   
    mov dl,15
    mov dh,15
    call Gotoxy
    mov edx,OFFSET NamePrompt
    call WriteString
    mov edx,offset PlayerNameBuffer
    mov ecx,lengthof playerNameBuffer
    call readstring
    call clrscr
    mov edx,offset FileName
    call createOutputFile
    call OpenInputFile
    mov edx,offset PlayerNameBuffer
    call WriteToFile



   

;instructions
    mov dl,10
    mov dh,5
    call Gotoxy
    mov edx,OFFSET InstuctStr
    call WriteString
    call readchar


BackToMenu:
;Menu Display
    mov eax,0
    call clrscr
    mov dl,0
    mov dh,7
    call Gotoxy
    mov edx,OFFSET MenuStr
    call WriteString
    call readint
       

;MENU ACTIONS
MENU:
   
    cmp al,1
    je skip
    cmp al,2
    je MENU
    cmp al,3
    jne keepChecking
    call clrscr
    mov dl,0
    mov dh,7
    call Gotoxy
    mov edx,OFFSET levelOptns
    call WriteString
    call readint
    mov level,al
    jmp skip
    

    keepChecking:
    cmp al,4
    je exitGame
    

NextLevel:
    call printcoins
    inc level
    skip:
    mov lives,3
    mov xpos,30
    mov ypos,15
    mov score,0

    call Animation
    call DrawMap
    call DrawPlayer
    call DrawEnemy


    cmp level,2
    jl NotLevel2
    call DrawEnemy2
    call DrawFruit
    NotLevel2:


    gameLoop:
            
            cmp level,4
            je exitgame

            cmp score,100
            je NextLevel

            cmp lives,0
            je exitgame

            ;collison
            mov esi,offset Enemy1
            mov al,[esi]
            cmp al,xpos
            jne NoCollide
            mov al,[esi+1]
            cmp al,ypos
            jne NoCollide
            ;collide:
                dec lives           
                mov xPos,30
                mov yPos,15

            NoCollide:

            cmp level,2
            jl dontCheckCollison2
            mov esi,offset Enemy2
            mov al,[esi]
            cmp al,xpos
            jne NoCollide2
            mov al,[esi+1]
            cmp al,ypos
            jne NoCollide2
            ;collide:
                dec lives           
                mov xPos,30
                mov yPos,15
            NoCollide2:

            dontCheckCollison2:

        call MoveEnemy
        mov eax,60
        call delay
        

        cmp level,2
        jl dontMoveE2
        call DrawEnemy2
        call MoveEnemy2
        dontMoveE2:

         ; FRUIT
         cmp level,1
         je Coin_collection
            mov bl,xPos
            cmp bl,xFruitPos
            jne notCollect
            mov bl,yPos
            cmp bl,yFruitPos
            jne notCollect
;           player is intersecting Fruit:
            add score,10
            call CreateRandomFruit
            call DrawFruit
            notCollect:

        Coin_collection:
            mov eax,0
            mov ecx,0 
            mov ebx,0
            mov eax,65 
            movzx ecx,ypos
            sub ecx,1
            imul eax,ecx
            mov bl,xpos
            add eax,ebx
            mov esi,eax
            cmp map[esi],'.'


        jne notCollecting
        inc score
        mov map[esi],'&'
        notCollecting:
        mov eax,white (black * 16)
        call SetTextColor


        ; draw level:
        mov dl,27
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLevel
        call WriteString 
        mov al,Level
        call WriteDec

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov al,score
        call WriteDec

         ; draw LIVES:
        mov dl,55
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strLives 
        call WriteString
        mov al,lives
        call WriteDec

        ;;;;;;;;;;;;;;;;;
         ;collision
            mov esi,offset Enemy1
            mov al,[esi]
            cmp al,xpos
            jne NoCollide3
            mov al,[esi+1]
            cmp al,ypos
            jne NoCollide3
            ;collide:
                dec lives           
                mov xPos,30
                mov yPos,15

            NoCollide3:

            cmp level,2
            jl dontCheckCollison3
            mov esi,offset Enemy2
            mov al,[esi]
            cmp al,xpos
            jne NoCollide4
            mov al,[esi+1]
            cmp al,ypos
            jne NoCollide4
            ;collide:
                dec lives           
                mov xPos,30
                mov yPos,15
            NoCollide4:

            dontCheckCollison3:

            cmp level,3
            jl noPortal
            mov al,Portal_From_X
            cmp al,xpos
            jne NoMatch
            mov al,Portal_From_Y
            cmp al,ypos
            jne NoMatch
                call UpdatePlayer
                mov al,Portal_To_X
                mov xPos,al
                mov al,Portal_To_Y
                mov yPos,al
            NoMatch:
            noPortal:


         ; get user key input:
        call Readkey
        ;call Readchar

        cmp al,1
        je previousInput
        mov inputChar,al

        previousInput:

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

        cmp inputChar,"p"
        je pauseLoop






jmp gameloop

        pauseLoop:
            call Readchar
            cmp al,"r"
        jne pauseLoop
        jmp gameloop




        


        ;;;;;;;;;;;;MOVEMENT;;;;;;;;;;


        moveUp:
            call UpdatePlayer
            dec yPos
            movzx eax,xpos
            movzx ebx,ypos
            call MapChar
            cmp al,'@'
	        jne reset1
	        inc yPos
	        reset1:
            call DrawPlayer
            jmp gameLoop

        moveDown:
            call UpdatePlayer
            inc yPos
            movzx eax,xpos
            movzx ebx,ypos
            call MapChar
            cmp al,'@'
	        jne reset2
	        dec yPos
	        reset2:
            call DrawPlayer
            jmp gameLoop
            
        moveLeft:
            call UpdatePlayer
            dec xPos
            movzx eax,xpos
            movzx ebx,ypos
            call MapChar
            cmp al,'@'
	        jne reset3
	        inc xPos
	        reset3:
            call DrawPlayer
            jmp gameLoop

        moveRight:
            call UpdatePlayer
            inc xPos
            movzx eax,xpos
            movzx ebx,ypos
            call MapChar
            cmp al,'@'
	        jne reset4
	        dec xPos
	        reset4: 
            call DrawPlayer

           



    jmp gameLoop

        ; LEVEL END SCREEM ,SCORE ETX , NEXT LEVEL 

    exitGame:
        mov eax,white
        call SetTextColor
        call clrscr
        mov dl,25
        mov dh,15
        call Gotoxy
        mov edx,OFFSET gameOver
        mov eax,brown
        call SetTextColor
        call WriteString

        exit
main ENDP


DrawMap PROC
    mov dl,0
    mov dh,1
    mov bl,dh
    mov ecx,29

    mov esi,offset map
    A: 
        mov eax,blue;(black * 16)
        call SetTextColor
        mov dh,bl
        mov dl,0
        call Gotoxy
        mov edx,esi
        call WriteString ;top
        call Delay
        call Delay
        add esi, 65
        inc bl
    loop A
    ret
DrawMap ENDP

DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,brown(brown*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"G"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

Animation PROC
    mov dl,0
    mov dh,1
    mov bl,dh
    mov ecx,29
    B:
        mov eax,red 
        call SetTextColor
        mov dh,bl
        mov dl,0
        call Gotoxy
        mov edx,offset MapAnimation
        call WriteString 
        inc bl
    loop B
    ret
Animation ENDP

MoveEnemy PROC
    mov esi,offset Enemy1
 ;clearing trail 
    
    ;coin rewrite
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'.'
    jne NoCoin
        mov eax,blue
        call SetTextColor
        mov al,"."
        jmp print
    NoCoin:
        mov eax,0
        call SetTextColor
        mov al," "
    print:
    mov dl,[esi] 
    mov dh,[esi+1]
    call Gotoxy
    call WriteChar  
    jmp skip
    changeDirecton:
    ;random direction
     mov eax,4
     call RandomRange
     ;inc al
     mov EnemyDirection,al
     skip:
        cmp EnemyDirection,1 ;up
        je UP
        cmp EnemyDirection,2 ;down
        je DOWN
        cmp EnemyDirection,3 ;left
        je LEFT
        cmp EnemyDirection,4 ;right
        je RIGHT
   ;movement
RIGHT:
    mov al,1
    add [esi],al ;inc x
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok1 
    mov al,1 
    sub [esi],al ;dec x
    jmp changeDirecton
    ok1:
    call DrawEnemy
    jmp return
LEFT:
    mov al,1
    sub [esi],al ;dec x
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok2 
    mov al,1
    add [esi],al ;inc x
    jmp changeDirecton
    ok2:
    call DrawEnemy
    jmp return
UP:
    mov al,1
    sub [esi+1],al ;dec y
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok3 
    mov al,1
    add [esi+1],al ;inc y
    jmp changeDirecton
    ok3:
    call DrawEnemy
    jmp return
DOWN:
    mov al,1
    add [esi+1],al ;inc y
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok4 
    mov al,1
    sub [esi+1],al ;dec y
    jmp changeDirecton
    ok4:
    call DrawEnemy
    jmp return 
return:
ret
MoveEnemy ENDP

DrawEnemy PROC
    ;mov ecx,3
    mov esi, offset Enemy1
    mov edx,0
    mov eax,0
    ;L1:
        mov dl,[esi]
        inc esi
        mov dh,[esi]
        inc esi
        mov eax,red (red * 16)
        call SetTextColor
        call Gotoxy
        mov al,"M"
        call WriteChar
    ;Loop L1
ret
DrawEnemy ENDP

;;;;;;;;;;;;;;;E N E M Y 2

DrawEnemy2 PROC
    ;mov ecx,3
    mov esi, offset Enemy2
    mov edx,0
    mov eax,0
    ;L1:
        mov dl,[esi]
        inc esi
        mov dh,[esi]
        inc esi
        mov eax,red (red * 16)
        call SetTextColor
        call Gotoxy
        mov al,"M"
        call WriteChar
    ;Loop L1
ret
DrawEnemy2 ENDP


MoveEnemy2 PROC
    mov esi,offset Enemy2
 ;clearing trail 
    
    ;coin rewrite
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'.'
    jne NoCoin
        mov eax,blue
        call SetTextColor
        mov al,"."
        jmp print
    NoCoin:
        mov eax,0
        call SetTextColor
        mov al," "
    print:
    mov dl,[esi] 
    mov dh,[esi+1]
    call Gotoxy
    call WriteChar  
    jmp skip
    changeDirecton:
    ;random direction
     mov eax,4
     call RandomRange
     ;inc al
     mov Enemy2Direction,al
     skip:
        cmp Enemy2Direction,1 ;up
        je UP
        cmp Enemy2Direction,2 ;down
        je DOWN
        cmp Enemy2Direction,3 ;left
        je LEFT
        cmp Enemy2Direction,4 ;right
        je RIGHT
   ;movement
RIGHT:
    mov al,1
    add [esi],al ;inc x
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok1 
    mov al,1 
    sub [esi],al ;dec x
    jmp changeDirecton
    ok1:
    call DrawEnemy2
    jmp return
LEFT:
    mov al,1
    sub [esi],al ;dec x
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok2 
    mov al,1
    add [esi],al ;inc x
    jmp changeDirecton
    ok2:
    call DrawEnemy2
    jmp return
UP:
    mov al,1
    sub [esi+1],al ;dec y
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok3 
    mov al,1
    add [esi+1],al ;inc y
    jmp changeDirecton
    ok3:
    call DrawEnemy2
    jmp return
DOWN:
    mov al,1
    add [esi+1],al ;inc y
    mov eax,0
    mov ebx,0
    mov al,[esi]
    mov bl,[esi+1]
    call MapChar
    cmp al,'@'
    jne ok4 
    mov al,1
    sub [esi+1],al ;dec y
    jmp changeDirecton
    ok4:
    call DrawEnemy2
    jmp return 
return:
ret
MoveEnemy2 ENDP


MapChar PROC  
    ; eax = x
    ; ebx = y
    mov edi,offset map
    dec ebx
    imul ebx,65 ;y * width  
    add ebx,eax   ;y + x
    add edi,ebx
    mov al,[edi]
ret
MapChar ENDP



CreateRandomFruit PROC
regen:
    mov eax,27
    call RandomRange 
    inc eax
    mov xFruitPos,al
    mov eax,55
    call RandomRange 
    inc eax
    mov yFruitPos,al
    mov eax,65 
    movzx ebx,yFruitPos
    sub ebx,1
    imul eax,ebx
    mov ebx,0
    mov bl,xFruitPos
    add eax,ebx
    mov esi,eax
    cmp map[esi],'@'
    je regen
        
    ret
CreateRandomFruit ENDP
      
DrawFruit PROC
    mov eax,red ;(red * 16)
    call SetTextColor
    mov dl,xFruitPos
    mov dh,yFruitPos
    call Gotoxy
    mov al,"*"
    call WriteChar
    ret
DrawFruit ENDP

printcoins Proc
    mov ebx,65
    mov eax,28
    imul eax,ebx
    mov ecx,eax
    dec ecx
    mov edi,0
    looping:
        cmp map[edi],"&"
        jne skipping
        mov map[edi],"."
        skipping:
        inc edi
        loop looping
    ret
printcoins endp
END main