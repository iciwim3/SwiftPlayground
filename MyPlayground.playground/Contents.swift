//: Playground - noun: a place where people can play

// Okay so I basically deleted everything. 

var mission:String = "Okay now for the hard part"

// Now that that's out of the way.

func staticShock() {

    print(mission)
    
}

staticShock()

let vegetable = "red pepper"

switch vegetable {
    
    case "celery":
    
        print("Add some raisins and make ants on a log.")
    
    case "cucumber", "watercress":
    
        print("That would make a good tea sandwich.")
    
    default:
    
        print("Everything tastes good in soup.")
    
}

// Here im playing with some different engineering concepts

let interestingNumbers = [

    "Prime": [2, 3, 5, 7, 11, 13],
    "Stupid": [1, 5, 3, 7, 10],
    "Square": [8, 3, 6, 1, 20]

]

var largest = 0

for (kind, numbers) in interestingNumbers {

    for number in numbers {
    
        if number > largest {
        
            largest = number
            
        }
        
    }
    
}

print(largest)



