package cn.lblbc.news.utils

import kotlin.random.Random.Default.nextInt
/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
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