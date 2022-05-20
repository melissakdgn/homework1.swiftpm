import UIKit


var mainCharacters: [String] = ["Ross", "Rachel", "Chandler", "Joey", "Phoebe"]

var constantValue: (UInt32) = 3

mainCharacters.append("Monica") //dizinin sonuna ekleniyor
mainCharacters.insert("Joey", at: 3) //verilen index değerine ekleniyor
mainCharacters.remove(at: 4) //verilen index değerindeki eleman siliniyor

var supportingCharacters : [String] = []

supportingCharacters.append(contentsOf: ["Ben", "Emily", "Gunther"])

func printingCharacters() {
    if !mainCharacters.isEmpty && !supportingCharacters.isEmpty {
        for item in mainCharacters{
            print("\(item)")
        }
        for item in supportingCharacters{
            print("\(item)")
        }
    }
}

printingCharacters()

var castDictionary: [String:String] = [
    
    "Rachel" : "Jennifer Aniston",
    "Monica" : "Courteney Cox",
    "Chandler" : "Matt Perry"
    
]

castDictionary.forEach{ (key,value) in
    print("\(key)-\(value)")
}

castDictionary["Joey"] = "Matt LeBlanc"

print(castDictionary["Joey"] ?? -1)

let a = castDictionary.values
let b = castDictionary.keys

print(a)

var allAges : [Int] = [33,24,12,42,21,24,12]
var ages = Set(allAges)
var countOfAges = ages.count
var sortedAges = ages.sorted()

class Cast {
    var characterName: String?
    var age: Int?
    var feature: characterFeatures
    
    enum characterFeatures{
        case tall
        case short
        case blondie
        case brunette
    }
    
  
    var charactersWhoHasValentine: [String] = ["Monica", "Chandler", "Ross"]
    
    
    init(characterName: String, age: Int, feature: characterFeatures){
        self.characterName = characterName
        self.age = age
        self.feature = feature
        
    }
    
    func setName(givenName: String) {
        characterName = givenName
    }
    
    func getName() -> String {
        return characterName ?? "no name"
    }
    
    func setAge(givenAge: Int) {
        age = givenAge
    }
    
    func getAge() -> Int {
        return age ?? 0
    }
    
    func isCharacterSingle(object:Cast) -> String {
        for index in 0..<charactersWhoHasValentine.count{
            if object.characterName == charactersWhoHasValentine[index] {
                return "no"
            }
        }
        return "yes"
    }
}




func firstCharacter() {
  
    let firstObject = Cast(characterName: "Ross", age: 35, feature: .tall)
    
    guard let characterName = firstObject.characterName
    else{
        print("name is nill")
        return
    }
    
    print("name of the character is " ,characterName)

}
    
let secondObject = Cast(characterName:"Rachel", age: 30, feature: .blondie)

switch secondObject.feature {
    case .tall: break
    case .short: print("she is short")
    case .blondie: print("she is blondie")
    case .brunette: break
}

struct Personal {

    var personalID : Any
    var personalName : String
    var personalWorkingHours : Int
    var personalWeight : String = "default"

}

var Personal1 = Personal(personalID: 3223, personalName: "Gunther", personalWorkingHours: 12)

