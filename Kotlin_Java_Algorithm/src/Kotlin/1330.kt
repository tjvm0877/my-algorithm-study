package Kotlin

import java.util.*

fun main(){
    val sc:Scanner = Scanner(System.`in`)

    val input = sc.nextLine().split(" ")
    val a = input[0].toInt()
    val b = input[1].toInt()

    if(a>b) {
        println(">")
    } else if (a==b) {
        println("==")
    } else {
        println("<")
    }
}