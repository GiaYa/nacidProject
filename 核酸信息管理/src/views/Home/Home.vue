<template>
  <el-row class="home" :gutter="20">
    <el-col :span="8">
      <el-card shadow="hover">
        <div class="user">
          <img :src="userImg" />
          <div class="userinfo">
            <p class="name">玛卡巴卡</p>
            <p class="access">超级管理员</p>
          </div>
        </div>
        <div class="login-info">
          <p>上次登录时间：<span>2019-10-20</span></p>
          <p>上次登录地点：<span>北京</span></p>
        </div>
      </el-card>
      <el-card shadow="hover" style="height: 522px; margin-top: 20px">
        <el-table :data="tableData">
          <el-table-column show-overflow-tooltip v-for="(val, key) in tableLabel" :key="key" :prop="key" :label="val"></el-table-column>
        </el-table>
      </el-card>
    </el-col>
    <el-col :span="16">
      <div class="num">
        <el-card shadow="hover" v-for="item in countData" :key="item.name" :body-style="{ display: 'flex', padding: 25 }">
          <i class="icon" :class="`el-icon-${item.icon}`" :style="{ background: item.color }"></i>
          <div class="detail">
            <p class="num">{{ item.value }}</p>
            <p class="txt">{{ item.name }}</p>
          </div>
        </el-card>
      </div>
      <div class="graph">
        <el-card shadow="hover">
          <echart :chartData="echartData.user" style="height: 260px"></echart>
        </el-card>
        <el-card shadow="hover">
          <echart :chartData="echartData.mall" style="height: 260px" :isAxisChart="false"></echart>
        </el-card>
      </div>
    </el-col>
  </el-row>
</template>

<script>
import Echart from '../../components/EChart'
export default {
  components: {
    Echart
  },
  data() {
    return {
      userImg: require('../../assets/images/OIP-C.jpg'),
      countData: [
        {
          name: '今日新增高危地区',
          value: 3
        },
        {
          name: '今日新增红码人数',
          value: 5
        },
        {
          name: '今日新增黄码人数',
          value: 20
        },
        {
          name: '无症状感染者',
          value: 22
        },
        {
          name: '现有确诊人数',
          value: 210
        },
        {
          name: '治愈人数',
          value: 5555
        }
      ],
      tableData: [],
      tableLabel: {
        name: '地区',
        todayBuy: '本土新增',
        monthBuy: '无症状',
        totalBuy: '现有确诊'
      },
      echartData: {
        order: {
          xData: [],
          series: []
        },
        user: {
          xData: [],
          series: []
        },
        mall: {
          series: []
        }
      }
    }
  },
  methods: {
    getTableData() {
      this.$http.get('/home/getData').then(res => {
        res = res.data
        this.tableData = res.data.tableData
        this.echartData.user.xData = res.data.userData.map(item => item.date)
        this.echartData.user.series.push({
          name: '新增确诊',
          data: res.data.userData.map(item => item.new),
          type: 'bar'
        })
        this.echartData.user.series.push({
          name: '总确诊',
          data: res.data.userData.map(item => item.active),
          type: 'bar',
          barGap: 0
        })
        this.echartData.mall.series.push({
          data: res.data.mallData,
          type: 'pie'
        })
      })
    }
  },
  created() {
    this.getTableData()
  }
}
</script>

<style lang="scss" scoped>
@import '../../assets/scss/home.scss';
</style>
