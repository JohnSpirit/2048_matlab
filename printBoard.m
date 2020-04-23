function printBoard()
global score steps board
    for i =1:4
        for j=1:4
            if board(i,j)
                fprintf('|%6d|',getRealValue(board(i,j)));
            else
                fprintf('|      |');
            end
        end
        fprintf('\n');
    end
    fprintf('steps=%6d     score=%8d\n',steps,score);
end