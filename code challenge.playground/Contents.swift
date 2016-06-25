
//Challenge
class Point {
    var x: Int
    var y: Int
    
    init(x: Int, y: Int){
        self.x = x
        self.y = y
    }
}


class Machine {
    var location: Point
    
    init() {
        self.location = Point(x: 0, y: 0)
    }
    
    func move(direction: String) {
        print("Do nothing! I'm a machine!")
    }
}

// Enter your code below
class Robot:Machine {
    override init(){
        super.init()
    }
    override func move(direction: String) {
        switch direction {
        case "Up":
            location.y += 1
        case "Down":
            location.y -= 1
        case "Left":
            location.x -= 1
        case "Right":
            location.x += 1
        default:
            break
        }
    }
}

let someRobot = Robot()

someRobot.move("Down")
someRobot.location

