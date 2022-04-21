package Boj

import java.util.*

fun main(){
    val sc: Scanner = Scanner(System.`in`)
    val input = sc.nextLine().split(" ")
    val a = input[0].toInt()
    val b = input[1].toInt()
    val c = input[2].toInt()

    println((a + b) % c)
    println(((a % c)+(b % c)) % c)
    println((a * b) % c)
    println(((a % c) * (b % c)) % c)
}