package Kotlin
import java.util.*
fun main() {
    // Scanner를 변수로 선언 => 반복하지 않아도된다!
    val sc: Scanner = Scanner(System.`in`)

    // val : 상수
    // var : 변수
    val a = sc.nextInt()
    val b = sc.nextInt()
    val result = a + b

    println(result)
}
