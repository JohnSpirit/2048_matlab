% 2048 V5.x written in matlab 2020.4.2
% 2020.4.3 17:45 V5.0
global maxNum score steps board emptyCoorNum emptyCoorList

CORE_VERSION = 3;
LEFT = 1;
RIGHT = 4;
UP = 2;
DOWN = 3;
VOID = 0;
ERROR = -1;


board=zeros(4);
emptyCoorNum = 16;
emptyCoorList = cell(0,0);
score = 0;
maxNum = 0;
steps = 0;
% 
% random.seed(time.process_time())
% b = Board()
% while True:
%     b.clear()
%     b.initialize()
%     b.printBoard()
%     while not b.gameOver():
%         if b.move(msvcrt.getch()):
%             os.system('cls')
%             b.addNum()
%             b.printBoard()
%         else:
%             print("VOID!")
while 1
    clearBoard()
    initialize()
    printBoard()
    while ~gameOver()
        if moveBoard(input('dir=','s'))
            clc;
            addNum()
            printBoard()
        else
            disp('VOID!');
        end
    end
end