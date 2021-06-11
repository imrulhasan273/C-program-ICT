

def main():
    tt=int(input())
    
    for i in range(tt):
        n=int(input()) # number of elements
        k=int(input()) # number of rounds
        dicts = {}
        lists = []
        
        for j in range(n):
            lists.append(int(input()))
            
    
        # print("********************")
        for i in lists:
            # print(i)
            # print("-------")
            first = sum(lists[:i])
            second = sum(lists[i:])
            # print(first)
            # print(second)
            diff = abs(first-second)
            # print(diff)
            dicts [diff] = {first,second}
            
        ss = dict(sorted(dicts.items()))
        
        for k, v in ss.items(): 
            val=v
            break
        
        print(max(val))
        # print(type(val))

        
        

if __name__ == '__main__':
    main()