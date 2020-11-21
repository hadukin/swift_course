/*:
 ## Упражнение — эквивалентность и сравнение строк
 
 Создайте две константы, `nameInCaps` и `name`.  Присвойте константе `nameInCaps` ваше имя заглавными буквами.  Присвойте константе `name` значение своего имени строчными буквами.  С помощью if-else проверьте, совпадают ли значения `nameInCaps` и `name`.  Если они совпадают, выведите сообщение «Две строки равны», иначе выведите «Две строки не равны»
 */


/*:
 С помощью if-else проверьте, являются ли `nameInCaps` и `name`, записанные строчными буквами, одинаковыми. Используйте метод `lowercased()` для каждой константы, чтобы сравнить эти значения.  Если они равны, выведите следующее сообщение с помощью строковой интерполяции:
 
 - "<ЗАПИСАННОЕ СТРОЧНЫМИ БУКВАМИ `nameInCaps`> и <ЗАПИСАННОЕ СТРОЧНЫМИ БУКВАМИ `name`> равны."
 
 Если они не равны, выведите следующее сообщение с использованием строковой интерполяции:
 
 - "<ЗАПИСАННОЕ СТРОЧНЫМИ БУКВАМИ `nameInCaps`> и <ЗАПИСАННОЕ СТРОЧНЫМИ БУКВАМИ `name`> не равны."
 */


/*:
 Вы просматриваете список имём, чтобы найти те, что заканчиваются на «мл.».  Используя if проверьте, что константа `junior` заканчивается суффиксом «мл.».  Если это так, выведите «Мы нашли второе поколение!»
 */
import Foundation
let junior = "Сергей Бодров, мл."


/*:
 Вы ищете документ, содержащий знаменитое стихотворение Пушкина.  Вы создали небольшое приложение, проверяющее каждый файл на наличие строки «я помню чудное мгновенье».  Вы решаете использовать для поиска метод `contains(_:)`.  С помощью if проверьте, содержит ли `textToSearchThrough` значение из `textToSearchFor`.  Если содержит, выведите «Мы нашли его!».  Обязательно учтите, что текст может быть записан в разных регистрах.
 */
let textToSearchThrough = """
Я помню чудное мгновенье:
Передо мной явилась ты,
Как мимолетное виденье,
Как гений чистой красоты.
"""
let textToSearchFor = "я помню чудное мгновенье"


/*:
 Выведите в консоль количество букв в вашем имени, используя свойства `characters` и `count` константы `name`.
 */


//: [Ранее](@previous)  |  страница 4 из 5  |  [Далее: Упражнение для приложения — ввод пароля и поиск пользователя](@next)
