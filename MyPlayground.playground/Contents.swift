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

//LOL what are these??? tea sandwich? ants on a log?? just super random

// Here im playing with some different engineering concepts

// Here is where we train guys

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

//: Optional Chaining Code Challenge - Module 2, Lesson 8 from Duc Tran's Developers Academy

/*
 1. Let's add another feature in our social network app by creating a Media Post struct.
 2. This media post has an id of type String and byUser variable of type Account.
 3. Can you write a method called get user location that returns a LocationTaken optional since this user may not provide us a location - I certainly don't with my social accounts.
 4. Yep, time for you use the power of optional chaining, climbing up the ladder and get us the location.
 */

import UIKit

struct LocationTaken {
    var x: Int
    var y: Int
}

struct Photo {
    var data: NSData
    var location: LocationTaken
}

struct ProfileData {
    var photo: Photo?
    var uniqeID: String
}

struct Account {
    var username: String
    var profile: ProfileData?
    
    func getUserProfilePictureData() -> NSData? {
        if let profileData = self.profile,
            let photo = profileData.photo {
            return photo.data
        } else {
            return nil
        }
    }
    // Optional Chaining
    func getProfilePictureBetterWay() -> NSData? {
        // If profile != nil => access photo => if photo != nil => access data
        // If profile == nil => return nil
        return self.profile?.photo?.data
    }
}

struct MediaPost { // 2.8.1
    var id: String // 2.8.2
    var byUser: Account?
    
    func getUserLocation() -> LocationTaken? { // 2.8.3
        return self.byUser?.profile?.photo?.location // 2.8.4
    }
    
}

