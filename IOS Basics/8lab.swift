//1
class Spaceship{
    var name = ""
    var health = 0
    var position = 0

    init(name: String, health: Int, position: Int){
        self.name = name
        self.health = health
        self.position = position
    }
    func moveLeft(){
        position -= 1
    }
    func moveRight(){
        position += 1
    }
    func wasHit(){
        health -= 5
        if health <= 0{
            print("Извините, ваш корабль был сбит слишком много раз. Хотите сыграть еще раз?")
        }
    }
}

let falcon = Spaceship(name: "Askar", health: 4, position: 10)

falcon.moveRight()

print(falcon.name)
falcon.moveLeft()
print(falcon.wasHit())

//2
class Figther: Spaceship{
    var weapon = ""
    var remainingFirePower = 5
    
    init(weapon: String, remainingFirePower: Int, name:String, health: Int, position: Int){
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    func fire(){
        if remainingFirePower > 0{
            remainingFirePower -= 1
        } else {
            print("You have no more fire power. ")
        }
    }
}

var destroyer = Figther(weapon: "лазер", remainingFirePower: 50, name: "Destroyer", health: 100, position: 30)

print(destroyer.position)

destroyer.moveRight()

print(destroyer.position)

destroyer.fire()
destroyer.fire()

//3

class ShieldedShip: Figther{
    var shieldStrength: Int

    init(shieldStrength: Int, weapon: String, remainingFirePower: Int, name: String, health: Int, position: Int){
        self.shieldStrength = shieldStrength
        super.init(weapon: weapon, remainingFirePower: remainingFirePower, name: name, health: health, position: position)
    }

    override func wasHit() {
        if shieldStrength > 0{
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

var defender = ShieldedShip(shieldStrength: 70, weapon: "Cannon", remainingFirePower: 10, name: "Defender", health: 20, position: 5)

defender.moveRight()
print(defender.position)

defender.fire()
print(defender.remainingFirePower)

defender.wasHit()
print(defender.shieldStrength)
print(defender.health)

