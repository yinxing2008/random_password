package cn.lblbc.news.utils

import kotlin.random.Random.Default.nextInt

object Utils {
    private var availableChars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,."

    fun getRandomPassword(): String {
        val sb = StringBuilder()
        val len = availableChars.length
        val passwordLength = 32
        for (i in 0 until passwordLength) {
            sb.append(availableChars[getRandom(len)])
        }
        return sb.toString()
    }

    private fun getRandom(len: Int) = nextInt(0, len)
}