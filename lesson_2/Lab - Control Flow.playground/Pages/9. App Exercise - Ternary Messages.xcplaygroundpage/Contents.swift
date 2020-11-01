/*:
 ## Упражнение для приложения - тернарные сообщения
 
 >Эти упражнения подкрепляют понятия Swift в контексте фитнес-приложения.
 
 Код ниже похож на тот, что мы писали при выполнении задания «фитнес-решения».  На самом деле инструкция if-else тут не нужна, и вместо неё вы можете вывести одно или другое сообщение в одной строке с помощью тернарного оператора.  Реорганизуйте код ниже с его помощью.
 */
let stepGoal = 10000    // дневная цель шагов
let steps = 3948        // текущее количество шагов

//if steps < stepGoal / 2 {
//    print("Скоро половина!")
//} else {
//    print("Больше половины!")
//}

print(steps < (stepGoal / 2) ? "Скоро половина!" : "Больше половины!")



/*:
 
 _Copyright © 2017 Apple Inc._
 
 _Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:_
 
 _The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software._
 
 _THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE._
 */
//: [Ранее](@previous)  |  страница 9 из 9
