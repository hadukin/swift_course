/*:
 ## Далее: Упражнение - Переопределение методов и свойств
 
 - Объяснение: упражнения ниже базируются на игре, в которой космический корабль должен избегать препятствий в космосе.  Корабль находится в нижней части координатной системы и может двигаться только налево и направо.  Препятствия «падают» сверху вниз.  На протяжении всех упражнений мы будем создавать классы, представляющие разные типы кораблей, которые могут быть использованы в игре.  Базовый класс `Spaceship` и подкласс `Fighter` определёны ниже.
*/
class Spaceship {
    var name: String = ""   // название
    var health = 100        // жизнеспособность
    var position = 0        // расположение
    
    func moveLeft() {
        position -= 1   // сдвигает корабль влево на 1
    }
    
    func moveRight() {
        position += 1   // сдвигает корабль вправо на 1
    }
    
    func wasHit() {
        health -= 5     // столкновение уменьшает жизнеспособность
    }
}

class Fighter: Spaceship {
    var weapon = ""             // вооружение
    var remainingFirePower = 5  // боеприпасы
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            // У вас не осталось боеприпасов
            print("You have no more fire power.")
        }
    }
}
/*:
 Определите новый класс `ShieldedShip`, являющийся наследником класса `Fighter`.  Добавьте переменное свойство `shieldStrength` (мощь защиты), по умолчанию равное 25.  Создайте экземпляр класса `ShieldedShip` под именем `defender`.  Установите `name` равным "Защитник", а `weapon` — равным "Пушка".  Вызовите `moveRight()` и выведите в консоль `position`, затем вызовите `fire()` и выведите значение `remainingFirePower`.
 */
class ShieldedShip: Fighter {
    var shieldStrength: Int = 25
    
    override func wasHit() -> Void {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

let defender = ShieldedShip()
defender.name = "Защитник"
defender.weapon = "Пушка"
defender.moveRight()
print(defender.position)
defender.fire()
print(defender.remainingFirePower)
/*:
 Вернитесь к определению `ShieldedShip` и переопределите метод `wasHit()`.  В теле метода проверьте, не достигло ли `shieldStrength` значения 0.  Если оно больше 0, уменьшите `shieldStrength` на 5.  В противном случае, уменьшите `health` на 5.  Вызовите `wasHit()` для `defender` и выведите в консоль значения `shieldStrength` и `health`.
 */
print(defender.wasHit())
print(defender.shieldStrength)
print(defender.health)

/*:
 Когда `shieldStrength` равно 0, всё, что делает `wasHit()`  — это уменьшает `health` на 5.  Но это ровно то, что реализует `wasHit()` в классе `Spaceship`!  Вместо того, чтобы перезаписать этот код, вы можете вызвать реализацию `wasHit()` суперкласса.  Вернитеь к вашей реализации `wasHit()` для класса `ShieldedShip` и замените код, уменьшающий `health` на 5 кодом, который вызывает реализацию этого метода для суперкласса.  Вызовите `wasHit()` для экземпляра `defender`, затем выведите значения `shieldStrength` и `health`.
 */
print(defender.wasHit())
print(defender.shieldStrength)
print(defender.health)

//: [Ранее](@previous)  |  страница 3 из 4  |  [Далее: Упражнение - Поэлементные инициализаторы класса и ссылки](@next)
