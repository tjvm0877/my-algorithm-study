package Boj

import java.util.*

fun main() {
    val sc:Scanner = Scanner(System.`in`)
    val num = sc.nextInt()

    for(i: Int in 1..9){
        val mul = num * i
        println("$num * $i = $mul")
    }
}