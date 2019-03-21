/**
 
 Emma is playing a new mobile game that starts with consecutively numbered clouds. Some of the clouds are thunderheads and others are cumulus. She can jump on any cumulus cloud having a number that is equal to the number of the current cloud plus  or . She must avoid the thunderheads. Determine the minimum number of jumps it will take Emma to jump from her starting postion to the last cloud. It is always possible to win the game.
 For each game, Emma will get an array of clouds numbered  if they are safe or  if they must be avoided. For example,  indexed from . The number on each cloud is its index in the list so she must avoid the clouds at indexes  and . She could follow the following two paths:  or . The first path takes jumps while the second takes .
 Function Description
 Complete the jumpingOnClouds function in the editor below. It should return the minimum number of jumps required, as an integer.
 jumpingOnClouds has the following parameter(s):
 c: an array of binary integers
 Input Format
 The first line contains an integer , the total number of clouds. The second line contains  space-separated binary integers describing clouds  where .
 Constraints
 
 ````
 Output Format
 Print the minimum number of jumps needed to win the game.
 Sample Input 0
 7
 0 0 1 0 0 1 0
 Sample Output 0
 4
 
 Sample Input 1
 6
 0 0 0 0 1 0
 Sample Output 1
 3
 ````
 */

func jumpingOnClouds(c: [Int]) -> Int {
    
    var min = 0     //이동거리 저장
    var index = 0   //현재 이동된 인덱스 저장
    while index<c.count - 1{
        print(index)
        if index+2 < c.count {
            //한칸이동보다 두칸이동값이 클 경우
            if c[index+2] <= c[index+1] {
                index += 2
                min += 1
            } else {
                index += 1
                min += 1
            } // 마지막 칸 앞에 위치
        } else if index+2 == c.count {
            index += 2
            min += 1
        }
    }
    return min
}
