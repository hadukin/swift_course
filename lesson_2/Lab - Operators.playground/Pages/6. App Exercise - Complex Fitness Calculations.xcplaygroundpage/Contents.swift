/*:
 ## Упражнение для приложения - сложные фитнес-вычисления
 
 >Эти упражнения подкрепляют понятия Swift в контексте фитнес-приложения.
 
 Когда мы выполняли упражнение по фитнес-вычислениям, мы находили средний пульс пользователя за последний час.  Используя правильный порядок операций, можно проделать все операции за меньшее количество шагов.  Создайте три отдельных константы типа `Double` со значениями пульса от 60 до 100.  Теперь создайте константу для вычисления среднего пульса пользователя.  Если использовать правильный порядок операций, вы можете вычислить средний пульс в одной строке.
 */
let pulse1: Double = 62.0
let pulse2: Double = 81.0
let pulse3: Double = 96.0
let averagePulse: Double = (pulse1 + pulse2 + pulse3) / 3

/*:
 Ещё одна возможность, которую мы хотим реализовать в вашем приложении — показывать пользователям текущую температуру их тела.  Так как наш датчик температуры работает в градусах Фаренгейта, константа `tempInFahrenheit` получает значение 98.6.
 
 Вам нужно отобразить пользователю температуру в градусах Цельсия.  Для перевода температуры из шкалы Фаренгейта в шкалу Цельсия нужно от `tempInFahrenheit` отнять 32 и умножить результат на (5.0/9.0).  Создайте константу `tempInCelsius`, вычисляющую в одну строку температуру в градусах Цельсия.
 */
let tempInFahrenheit: Double = 98.6
let tempInCelsius: Double = (tempInFahrenheit - 32) * (5 / 9)
print(tempInCelsius)
//: [Ранее](@previous)  |  страница 6 из 8  |  [Далее: Упражнение - приведение числовых типов](@next)
