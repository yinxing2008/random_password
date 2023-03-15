 <!--
 * 厦门大学计算机专业 | 前华为工程师
 * 专注《零基础学编程系列》  http://lblbc.cn/blog
 * 包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
 * 公众号：蓝不蓝编程
 -->
 <template>
  <div>
    <div class="header">
      <span class="title-text">随机密码</span>
    </div>

    <div class="row">
      <div class="password">{{ password }}</div>
      <van-button type="primary" @click="refreshRandomPassword"
        >刷新</van-button
      >
    </div>
  </div>
</template>
<script lang="ts">
export default {
  data() {
    return {
      password: ''
    }
  },
  mounted() {
    this.refreshRandomPassword()
  },
  methods: {
    refreshRandomPassword() {
      var availableChars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789~!@#$%^&*()-+_=,.'
      let passwordLength = 32
      var arr = Array(passwordLength).fill('')
      for (let i = 0; i < passwordLength; i++) {
        arr[i] = availableChars[this.random(availableChars.length)]
      }
      this.password = arr.join('')
    },
    //生成随机数，0=<结果<max
    random(max: number) {
      return Math.floor(Math.random() * max)
    }
  }
}
</script>

<style scoped>
.header {
  display: flex;
  margin: 10px 0;
  padding: 5px 0;
}
.title-text {
  padding: 0 10px;
  font-size: 20px;
  border-right: 1px solid #f4f4f4;
}

.row {
  margin-top: 30px;
  display: flex;
  justify-content: center;
  align-items: center;
}
.password {
  margin-right: 20px;
}
</style>