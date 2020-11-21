/*:
 ## Упражнение для приложения — разделение функций
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Один из принципов, помогающих отлаживать и поддерживать код — это абстракция.  К примеру, в вашем фитнесс-приложении некоторые из функций были написаны так, что они как выполняли вычисления, так и печатали сообщения.  Довольно часто бывает нужно поменять либо формулу, либо сообщение.  Сделать это легче, если вы разделите вычисления и вывод собщений.
 
 В качестве примера, напишите функцию, которая выполняет только часть того, что делала ранее функция `pacing`.  Назовите новую функцию `calculatePace`.  Она должна принимать три аргумента типа `Double` с именами `currentDistance` (текущее расстояние), `totalDistance` (общее расстояние), и `currentTime` (текущее время), и возвращать значение типа `Double`, соответствующее времени, в которое пользователь достигнет финиша, основываясь на значениях текущего расстояния и времени.  Вызовите функцию несколько раз и напечатайте результаты.
 */
func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    return totalDistance / (currentDistance / currentTime)
}
//calculatePace(currentDistance: 200, totalDistance: 5000, currentTime: 50)
//calculatePace(currentDistance: 1000, totalDistance: 1000, currentTime: 10)
/*:
 Теперь напишите функцию с именем `pacing`, которая принимает четыре аргумента типа `Double` с названиями `currentDistance`, `totalDistance`, `currentTime` и `goalTime` (целевое время).  Функция должна также возвращать строку типа `String`, в которой будет содержаться сообщение для показа пользователю.  Функция должна вызывать `calculatePace`, передавать ей соответствующие значения, и запоминать возращаемое значение.  Функция затем должна сравнить возращённое значение и `goalTime`, и, если пользователь успевает, вернуть «Держите темп!», в противном случае вернуть «Вам нужно ускорить темп, чтобы успеть!».  Вызовите функцию и зафиксируйте результаты.
 */
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let time = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    if time > goalTime {
        return "Вам нужно ускорить темп, чтобы успеть!"
    }
    else {
        return "Держите темп!"
    }
}
print(pacing(currentDistance: 500, totalDistance: 10000, currentTime: 50, goalTime: 200))

//: [Ранее](@previous)  |  страница 6 из 6
