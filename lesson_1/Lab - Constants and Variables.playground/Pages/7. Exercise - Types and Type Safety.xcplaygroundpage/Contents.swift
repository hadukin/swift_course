/*:
 ## Упражнение 7 - типы и безопасность типов
 
 Объявите две переменные, одну назовите `firstDecimal`, а вторую — `secondDecimal`.  Обе должны содержать значения с плавающей точкой.  Проверьте их тип, зажав клавишу Option (Alt) и кликнув на имя переменной.
 */
var firstDecimal = 1.0
var secondDecimal = 2.0

/*:
 Объявите переменную с именем `trueOrFalse` и дайте ей булево значение.  Попробуйте присвоить её значение переменной `firstDecimal` следующим образом: `firstDecimal = trueOrFalse`. Компилируется ли этот код?  Напечатайте строку в консоль с объяснением, почему нет, и закоментируйте строку кода, которая не компилируется.
 */
var trueOrFalse: Bool = false;
//print(firstDecimal = trueOrFalse)
// Нельзя присвоить в Bool тип Double
/*:
 Объявите переменную и дайте ей строковое значение.  Затем попробуйте присвоить её переменной `firstDecimal`.  Компилируется ли код?  Напечатайте строку в консоль с объяснением, почему нет, и закоментируйте строку кода, которая не компилируется.
 */
var name: String = "Batman"
//firstDecimal = name
// Нельзя присвоить в String тип Double

/*:
 Наконец, объявите переменную, содержащую целое значение.  Затем попробуйте присвоить её переменной `firstDecimal`.  Почему этот код даёт ошибку, хотя обе переменные содержат числа?  Напечатайте строку в консоль с объяснением, и закоментируйте строку кода, которая не компилируется.
 */
var someValue = 50
//someValue = firstDecimal
// Нельзя присвоить в Ind тип Double
//: [Ранее](@previous)  |  страница 7 из 10  |  [Далее: Упражнение 8 для приложения - отслеживание разных типов](@next)
