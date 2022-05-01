package Boj

import java.util.*

fun main(){
    val sc:Scanner = Scanner(System.`in`)

    val x = sc.nextInt()
    val y = sc.nextInt()

    if (x > 0) {
        if (y > 0) {
            println(1)
        } else {
            println(4)
        }
    } else {
        if (y > 0) {
            println(2)
        } else {
            println(3)
        }
    }
}