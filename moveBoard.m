function isValidMove=moveBoard(dir)
global steps emptyCoorList emptyCoorNum board
    isValidMove=0;
    preboard=board;
    switch dir
        case 'a'
            for i =1:4
                board(i,:)=movearr(board(i,:));
            end
        case 'd'
            for i=1:4
                b=board(i,4:-1:1);
                b=movearr(b);
                b=b(4:-1:1);
                board(i,:)=b;
            end
        case 'w'
            for i = 1:4
                board(:,i)=movearr(board(:,i));
            end
        case 's'
            for i = 1:4
                b=board(4:-1:1,i);
                b=movearr(b);
                b=b(4:-1:1);
                board(:,i)=b;
            end
    end

    for i = 1:4
        for j = 1:4
            if preboard(i,j)~=board(i,j)
                isValidMove=1;
                break
            end
        end
        if isValidMove
            break
        end
    end
    
    if isValidMove
        steps=steps+1;
        emptyCoorList=cell(0,0);
        emptyCoorNum=0;
        for i = 1:4
            for j=1:4
                if ~board(i,j)
                    emptyCoorList(emptyCoorNum+1)={[i j]};
                    emptyCoorNum = emptyCoorNum+1;
                end
            end
        end      
    end
    
end