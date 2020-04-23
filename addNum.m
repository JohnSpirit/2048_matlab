function addNum()
global board emptyCoorNum emptyCoorList
%     def addNum(self):
%         rand_num = random.randint(0, self.__emptyCoorNum - 1)
%         c = self.__emptyCoorList[rand_num]
%         self.__board[c[0]][c[1]] = 1 if random.randint(0, 9) < 9 else 2
%         self.__emptyCoorNum -= 1
%         self.__emptyCoorList.pop(rand_num)

    rand_num=randi([0,emptyCoorNum-1]);
    c=emptyCoorList{rand_num+1};
    if randi([0 10])<9
        board(c(1),c(2))=1;
    else
        board(c(1),c(2))=2;
    end
    %emptyCoorList=emptyCoorList{[1:rand_num rand_num+2:emptyCoorNum]};
    count=1;
    for i=[1:rand_num rand_num+2:emptyCoorNum]
        emptyCoorList{count}=emptyCoorList{i};
        count=count+1;
    end
    emptyCoorNum=emptyCoorNum-1;
end