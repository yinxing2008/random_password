/**
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 */

@Entry
@Component
struct Home {
  @State password: string = ''

  build() {
    Column() {
      TextInput({
        text: this.password
      })
      Button('刷新')
        .height(40)
        .width(90)
        .margin({ top: 50 })
        .backgroundColor('#418DF9')
        .onClick((event: ClickEvent) => {
          this.refreshRandomPassword()
        })
    }.width('100%').margin({ top: 50 })
  }

  aboutToAppear() {
    this.refreshRandomPassword()
  }

  refreshRandomPassword() {
    var availableChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,.'
    let passwordLength = 32
    var arr = Array(passwordLength).fill('')
    for (let i = 0; i < passwordLength; i++) {
      arr[i] = availableChars[this.random(availableChars.length)]
    }
    this.password = arr.join('')
  }

  //生成随机数，0=<结果<max
  random(max: number) {
    return Math.floor(Math.random() * max)
  }
}