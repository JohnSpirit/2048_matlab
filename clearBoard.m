function clearBoard()
global maxNum score steps board emptyCoorNum emptyCoorList
    board=zeros(4);
    maxNum=0;
    score=0;
    steps=0;
    emptyCoorList=cell(1,16);
    emptyCoorNum=16;
    for i =1:4
        for j=1:4
            emptyCoorList(4*(i-1)+j)={[i j]};
        end
    end
end