function ifGameOver = gameOver( input_args )
global emptyCoorNum board
%     def gameOver(self):
%         if self.__emptyCoorNum:
%             return False
%         else:
%             for i in range(3):
%                 for j in range(3):
%                     if self.__board[i][j] == self.__board[i][j + 1] \
%                             and self.__board[i][j] == self.__board[i + 1][j]:
%                         return False
%             for i in range(3):
%                 if self.__board[i][3] == self.__board[i + 1][3]:
%                     return False
%             for j in range(3):
%                 if self.__board[3][j] == self.__board[3][j + 1]:
%                     return False
%         return True
    ifGameOver=0;
    if emptyCoorNum
        return
    else
        for i = 1:3
            for j=1:3
                if board(i,j)==board(i,j+1) && board(i,j)==board(i+1,j)
                    return
                end
            end
        end
        
        for i =1:3
            if board(i,3)==board(i+1,3)
                return
            end
        end
        for j =1:3
            if board(3,i)==board(3,i+1)
                return
            end
        end
    end
    ifGameOver=1;
end

