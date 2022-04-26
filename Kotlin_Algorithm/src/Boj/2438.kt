package Boj

import java.util.*

fun main(){
    val sc:Scanner = Scanner(System.`in`)

    val n = sc.nextInt()
    val star = "*"
    var stars = ""

    for(i: Int in 1..n) {
        stars += star
        println(stars)
    }
}