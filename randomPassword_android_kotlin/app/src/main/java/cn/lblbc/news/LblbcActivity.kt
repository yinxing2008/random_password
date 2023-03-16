package cn.lblbc.news

import android.content.ClipData
import android.content.ClipboardManager
import android.content.Context
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.appcompat.app.AppCompatActivity
import cn.lblbc.news.utils.Utils

/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */
class LblbcActivity : AppCompatActivity() {
    private lateinit var refreshBtn: Button
    private lateinit var copyBtn: Button
    private lateinit var password: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_lblbc)
        initViews()
    }

    private fun initViews() {
        refreshBtn = findViewById(R.id.refreshBtn)
        copyBtn = findViewById(R.id.copyBtn)
        password = findViewById(R.id.password)
        refreshBtn.setOnClickListener {
            refreshPassword()
        }
        copyBtn.setOnClickListener {
            copyToClipboard(password.text.toString())
            Toast.makeText(this, "已复制", Toast.LENGTH_SHORT).show()
        }
        refreshPassword()
    }

    private fun refreshPassword() {
        password.text = Utils.getRandomPassword()
    }

    private fun copyToClipboard(info: String) {
        val cm = getSystemService(Context.CLIPBOARD_SERVICE) as ClipboardManager
        val mClipData = ClipData.newPlainText("", info)
        cm.setPrimaryClip(mClipData)
    }
}