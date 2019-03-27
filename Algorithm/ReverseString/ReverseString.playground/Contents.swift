
var str = "Hello, playground"

str = str.reduce("") { (result:String, char:Character) -> String in
    return "\(char)" + result
}
print(str)

print(str.reduce("") { "\($1)" + $0 })
