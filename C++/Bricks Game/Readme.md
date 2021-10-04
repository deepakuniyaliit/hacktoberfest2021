### Problem Statement: 

You and your friend decide to play a game using a stack consisting of N bricks. In this game, you can alternatively remove 1, 2 or 3 bricks from the top, and the numbers etched on the removed bricks are added to your score. You have to play so that you obtain the maximum possible score. It is given that your friend will also play optimally and you make the first move.

As an example, bricks are numbered arr = [1,2,3,4,5]. You can remove either [1]=1, [1,2]=3 or [1,2,3] = 6. For your friend, your moves would leave the options of 1 to 3 elements from [2,3,4] = 9 leaving  for you (total score = 6), [3,4,5] = 12 or [4,5] =  9. In this case, it will never be optimal for your friend to take fewer than the maximum available number of elements. Your maximum possible score is 6, achievable two ways: 1 first move and 5 the second, or [1,2,3] in your first move.

Input Format:

The first line will contain an integer t, the number of test cases.

Each of the next t pairs of lines are in the following format:
The first line contains an integer , the number of bricks in arr.
The next line contains n space-separated integers $arr[i].
