/**
 
 Lilah has a string, , of lowercase English letters that she repeated infinitely many times.
 Given an integer, , find and print the number of letter a's in the first  letters of Lilah's infinite string.
 For example, if the string  and , the substring we consider is , the first  characters of her infinite string. There are  occurrences of a in the substring.
 Function Description
 Complete the repeatedString function in the editor below. It should return an integer representing the number of occurrences of a in the prefix of length  in the infinitely repeating string.
 repeatedString has the following parameter(s):
 s: a string to repeat
 n: the number of characters to consider
 Input Format
 The first line contains a single string, .
 The second line contains an integer, .
 Constraints
 
 ````
 For  of the test cases, .
 Output Format
 Print a single integer denoting the number of letter a's in the first  letters of the infinite string created by repeating  infinitely many times.
 Sample Input 0
 aba
 10
 Sample Output 0
 7
 Explanation 0
 The first  letters of the infinite string are abaabaabaa. Because there are  a's, we print  on a new line.
 Sample Input 1
 a
 1000000000000
 Sample Output 1
 1000000000000
 Explanation 1
 Because all of the first  letters of the infinite string are a, we print  on a new line.
 ````
 */

func repeatedString(s: String,n: Int) -> Int {
    // 입력값이 없으면 무조건 0 리턴
    if s.count == 0 {
        return 0
    }
    
    //입력값이 있다면 string -> character Array로 변환
    var characterArray:[Character] = s.map {$0}
    
    // 입력값이 1이고 그 값이 a일 경우 n을 리턴
    if characterArray.count == 1 && characterArray[0] == "a" {
        return n
    }
    
    // s를 풀어쓴 character 배열 중 a가 몇개 있는지 판단
    var count = characterArray.filter { $0 == "a"}.count
    
    // 만약 a가 없다면 0 리턴
    if count == 0 {
        return count
    }
    // 입력값중 a의 개수에 n / s.count 만큼 곱해줌.. n / characterArray.count 만큼 반복될테니..
    count *= n / characterArray.count
    
    // 반복된 후 나머지 더 이어나가야 할 인덱스를 저장하여 나머지 중에 "a"가 몇개 있는지 확인
    let dummy = n % characterArray.count
    for i in 0..<dummy {
        if "a" == characterArray[i] {
            count += 1
        }
    }
    
    // 총 "a"의 갯수 확인.
    return count
}

