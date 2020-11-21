/*:
 ## Упражнение - вычислимые свойства и наблюдатели свойства
 
 У структуры `Rectangle` ниже есть для свойства, одно для хранения высоты прямоугольника, а другое — для ширины. Добавьте вычислимое свойство, которое вычисляет площадь прямоугольника (то есть произведение ширины на высоту). Создайте экземпляр структуры `Rectangle` и выведите свойство `area` в консоль.
 */
struct Rectangle {  // Прямоугольник
    var width: Int  // Ширина
    var height: Int // Высота
    
    var calcArea: Double {
        return Double(width * height)
    }
}

var area = Rectangle(width: 4, height: 4)
print(area.calcArea)
/*:
 В структуре `Height` ниже, высота представлена как в дюймах, так и в сантиметрах. Однако, если меняется свойство `heightInInches`, переменная `heightInCentimeters` также должна меняться, чтобы ему соответствовать. Добавьте `didSet` к каждому из свойств, которое будет проверять, содержит ли другое свойство необходимое значение, и, если нет, устанавливать его. Если вы установите значение другого свойства сразу, без проверки, у вас получится вечный цикл, в котором каждое из свойств будет устанавливать другое по очереди.
 
 Создайте экземпляр типа `Height` и измените одно из его свойств. Выведите в консоль другое свойство, чтобы удостовериться, что оно соответственно изменилось.
 */
struct Height {

    var heightInInches: Double = 0 {
        didSet {
            if heightInInches != oldValue {
                self.heightInCentimeters = heightInInches * 2.54
            }
        }
    }

    var heightInCentimeters: Double = 0 {
        didSet {
            if heightInCentimeters != oldValue {
                self.heightInInches = heightInCentimeters / 2.54
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

var height = Height(heightInInches: 22)

print(height.heightInInches)
print(height.heightInCentimeters)
height.heightInInches = 30
print(height.heightInInches)
print(height.heightInCentimeters)

//: [Ранее](@previous)  |  страница 7 из 10  |  [Далее: упражнение для приложения — среднее время и ободряющие сообщения](@next)
