//index.js
//获取应用实例
const app = getApp()

Page({
  data: {
    password: 'ddd',
  },
  onShow: function () {
    this.refreshRandomPassword()
  },
  methods: {
  },
  refreshRandomPassword(e) {
    var availableChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,.'
    let passwordLength = 32
    var arr = Array(passwordLength).fill('')
    for (let i = 0; i < passwordLength; i++) {
      arr[i] = availableChars[this.random(availableChars.length)]
    }
    var password = arr.join('')
    this.setData({
      password: password
    })

  },
  //生成随机数，0=<结果<max
  random(max) {
    return Math.floor(Math.random() * max)
  },
  copy(e) {
    wx.setClipboardData({
      data: this.data.password,
    })
  }
})