//厦门大学计算机专业 | 前华为工程师
//专注《零基础学编程系列》 http://lblbc.cn/blog
//包含：Java | 安卓 | 前端 | Flutter | iOS | 小程序 | 鸿蒙
//公众号：蓝不蓝编程
<template>
	<view class="page-wrapper">
		<div class="row">
			<div class="password">{{ password }}</div>
			<div class="refresh" @click="refreshRandomPassword">刷新</div>
		</div>
	</view>
</template>
<script>
	export default {
		data() {
			return {
				password: '',
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
			random(max) {
				return Math.floor(Math.random() * max)
			}
		}
	}
</script>
<style>
	.row {
		margin-top: 30px;
		display: flex;
		justify-content: center;
		align-items: center;
	}

	.password {
		margin-right: 20px;
	}
	.refresh {
		border-radius: 1rem;
		padding-left: 20px;
		padding-right: 20px;
		padding-top: 5px;
		padding-bottom: 5px;
		color: white;
		background-color: #418DF9;
	}
</style>
