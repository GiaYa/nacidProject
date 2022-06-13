import Mock from 'mockjs'

// 图表数据
let List = []
export default {
  getStatisticalData: () => {
    return {
      code: 20000,
      data: {
        // 饼图
        mallData: [
          {
            name: '红码',
            value: 5
          },
          {
            name: '黄码',
            value: 12
          },
          {
            name: '绿码',
            value: 42
          }
        ],
        // 柱状图
        userData: [
          {
            date: '周一',
            new: 5,
            active: 12
          },
          {
            date: '周二',
            new: 1,
            active: 13
          },
          {
            date: '周三',
            new: 2,
            active: 15
          },
          {
            date: '周四',
            new: 3,
            active: 18
          },
          {
            date: '周五',
            new: 2,
            active: 20
          },
          {
            date: '周六',
            new: 3,
            active: 23
          },
          {
            date: '周日',
            new: 5,
            active: 28
          }
        ],
        // 折线图
        orderData: {
          date: ['20220601', '20220602', '20220603', '20220604', '20220605', '20220606', '20220607'],
          data: List
        },
        tableData: [
          {
            name: '北京',
            todayBuy: Mock.Random.integer(10, 50),
            monthBuy: Mock.Random.integer(10, 50),
            totalBuy: Mock.Random.integer(10, 100)
          },
          {
            name: '上海',
            todayBuy: Mock.Random.integer(10, 50),
            monthBuy: Mock.Random.integer(10, 50),
            totalBuy: Mock.Random.integer(10, 100)
          },
          {
            name: '台湾',
            todayBuy: Mock.Random.integer(10, 50),
            monthBuy: Mock.Random.integer(10, 50),
            totalBuy: Mock.Random.integer(10, 100)
          },
          {
            name: '福建',
            todayBuy: Mock.Random.integer(10, 50),
            monthBuy: Mock.Random.integer(10, 50),
            totalBuy: Mock.Random.integer(10, 100)
          },
          {
            name: '香港',
            todayBuy: Mock.Random.integer(10, 50),
            monthBuy: Mock.Random.integer(10, 50),
            totalBuy: Mock.Random.integer(10, 100)
          }
        ]
      }
    }
  }
}
