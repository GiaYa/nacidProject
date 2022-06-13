import Mock from 'mockjs'
export default {
  getMenu: config => {
    const { username, password } = JSON.parse(config.body)
    console.log(JSON.parse(config.body))
    // 判断账号和密码是否对应
    if (username === 'admin' && password === 'admin') {
      return {
        code: 20000,
        data: {
          menu: [
            {
              path: '/',
              name: 'home',
              label: '首页',
              icon: 's-home',
              url: 'Home/Home'
            },
            {
              path: '/video',
              name: 'video',
              label: '全员行程卡',
              icon: 'video-play',
              url: 'VideoManage/VideoManage'
            },
            {
              path: '/user',
              name: 'user',
              label: '用户管理',
              icon: 'user',
              url: 'UserManage/UserManage'
            },
            {
              label: '健康情况',
              icon: 'location',
              children: [
                {
                  path: '/page1',
                  name: 'page1',
                  label: '高危人群',
                  icon: 'setting',
                  url: 'Other/PageOne'
                },
                {
                  path: '/page2',
                  name: 'page2',
                  label: '可疑人群',
                  icon: 'setting',
                  url: 'Other/PageTwo'
                },
                {
                  path: '/page3',
                  name: 'page3',
                  label: '健康人群',
                  icon: 'setting',
                  url: 'Other/PageThree'
                }
              ]
            }
          ],
          token: Mock.Random.guid(),
          message: '获取成功'
        }
      }
    } else {
      return {
        code: -999,
        data: {
          message: '密码错误'
        }
      }
    }
  }
}
