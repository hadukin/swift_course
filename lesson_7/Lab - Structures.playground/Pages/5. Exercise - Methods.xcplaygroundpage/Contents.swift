/*:
 ## Упражнение — методы
 
 Ниже вы видите структуру `Book`. Добавьте метод экземпляра к этой структуре с именем `description`, который выводит в консоль информацию о книге. Затем создайте экземпляр структуры `Book` и вызовите данный метод для созданного экземпляра.
 */
struct Book {           // Книга
    var title: String   // Название
    var author: String  // Автор
    var pages: Int      // Количество страниц
    var price: Double   // Цена
    
    func description() -> Void {
        print("Автор: \(author), Название: \(title), Страниц: \(pages), Цена: \(price)")
    }
}

var book = Book(title: "О дивный новый мир", author: "Олдос Хаксли", pages: 200, price: 300)
book.description()
/*:
 Изучите структуру `Post`, представляющую стандартное послание в социальной сети. Добавьте изменяющий (`mutating`) метод в эту структуру под названием `like`, который будет увеличивать `likes` на единицу. Затем создайте экземпляр структуры `Post` и вызовите его метод `like()`. Выведите в консоль свойство `likes` до и после вызова метода, чтобы проверить, изменилось ли количество лайков.
 */
struct Post {                   // Послание
    var message: String         // Текст сообщения
    var likes: Int              // Число лайков
    var numberOfComments: Int   // Количество комментариев
    
    mutating func like() -> Void {
        likes += 1
    }
}

var post = Post(message: "Some text", likes: 0, numberOfComments: 12)
post.like()
post.like()
print(post.likes)
//: [Ранее](@previous)  |  страница 5 из 10  |  [Далее: упражнение для приложения — функции разминки](@next)
