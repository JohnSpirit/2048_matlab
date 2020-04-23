function arr=movearr(arr)
global maxNum score
%     def __move(self, arr):
%         # This is the core of the moving algorithm. Version=3
%         # ----------------Move----------------
%         for j in range(3):
%             if not arr[j]:
%                 k = p = 1
%                 while k + j < 4:
%                     if not arr[k + j]:
%                         p += 1
%                     else:
%                         break
%                     k += 1
%                 if p + j == 4:
%                     break
%                 for k in range(j + p, 4):
%                     arr[k - p] = arr[k]
%                 for k in range(p, 0, -1):
%                     arr[4 - k] = 0
    for j =1:3
        if ~arr(j)
            k=1;
            p=1;
            while k+j<5
                if ~arr(k+j)
                    p=p+1;
                else
                    break
                end
                k=k+1;
            end
            if p+j==5
                break
            end
            for k = j+p:4
                arr(k-p)=arr(k);
            end
            for k = p:-1:1
                arr(5-k)=0;
            end
        end
    end
%         # ----------------Merge----------------
%         for j in range(3):
%             if arr[j] and arr[j] == arr[j + 1]:
%                 arr[j] += 1
%                 self.__score += self.__getRealValue(arr[j])
%                 if arr[j] > self.__max:
%                     self.__max = arr[j]
%                 for k in range(j + 2, 4):
%                     arr[k - 1] = arr[k]
%                 arr[3] = 0
    for j = 1:3
        if arr(j) && arr(j)==arr(j+1)
            arr(j)=arr(j)+1;
            score=score+getRealValue(arr(j));
            if arr(j)>maxNum
                maxNum=arr(j);
            end
            for k = j+2:4
                arr(k-1)=arr(k);
            end
            arr(4)=0;
        end
    end
end

