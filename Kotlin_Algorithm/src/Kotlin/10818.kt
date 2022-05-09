package Kotlin

import java.util.Scanner

fun main(){
    val sc = Scanner(System.`in`)
    val size = sc.nextInt()

    val list = ArrayList<Int>(size)

    for (i in 0 until size) {
        val n = sc.nextInt()
        list.add(n)
    }

    println("${list.minOrNull()} ${list.maxOrNull()}")
}