/*:
 ## Упражнение для приложения - поиск видов спорта
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.

 Вы решили добавить в ваше приложение следующую функцию: пользователи задают нижнюю и верхнюю границу пульса, в который им надо уложиться, а приложение советует вид спорта, где ранее пользователь достигал таких значений.  Словарь `movementHeartRates` содержит ключи, соответствующие видам спорта, и значения, соответствующие среднему пульсу пользователя во время этих упражнений.
 
 Пройдите по словарю `movementHeartRates` в цикле и, если пульс из словаря не попадает между значениями `lowHR` и `highHR`, продолжайте поиск.  Иначе, выведите "Вы можете заняться следующим видом деятельности: <ВСТАВЬТЕ НУЖНЫЙ ВИД СПОРТА>".
*/
let lowHR = 110     // нижняя граница пульса для поиска
let highHR = 125    // верхняя граница пульса для поиска
var movementHeartRates: [String: Int] = ["Ходьба": 85, "Бег": 120, "Плавание": 130, "Велоспорт": 128, "Лыжи": 114, "Альпинизм": 129]


/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 6 из 6
