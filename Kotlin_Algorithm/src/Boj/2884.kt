package Boj

import java.io.BufferedReader
import java.io.InputStreamReader

fun main(args: Array<String>) = with(BufferedReader(InputStreamReader(System.`in`))) {
    var time = readLine().split(" ").map { it.toInt() }.toMutableList()

    val min = time[1] - 45
    if (min < 0) {
        time[1] = 60 + min
        time[0] -= 1
    } else {
        time[1] = min
    }

    if (time[0] < 0) {
        time[0] = 23
    }

    println(time.joinToString(" "))
}