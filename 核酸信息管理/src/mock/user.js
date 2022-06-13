//import axios from 'axios'

// // get请求从config.url获取参数，post从config.body中获取参数
// function param2Obj(url) {
//   const search = url.split('?')[1]
//   if (!search) {
//     return {}
//   }
//   return JSON.parse(
//     '{"' +
//       decodeURIComponent(search)
//         .replace(/"/g, '\\"')
//         .replace(/&/g, '","')
//         .replace(/=/g, '":"') +
//       '"}'
//   )
// }

// let List = []
// // const count = 200
// // const getUser = axios.create({
// //   baseURL: 'http://localhost:8080/api/',
// //   timeout: 5000
// // })

// // getUser
// //   .get({
// //     url: 'NacidUser/'
// //   })
// //   .then(res => {
// //     res.list.push(List)
// //   })
// // axios.get({
// //   url: 'http://localhost:8080/api/NacidUser/'
// // })
// // .then(res => {
// //   console.log(res)
// //  List = res.data.list
// // })

// export default {
//   /**
//    * 获取列表
//    * 要带参数 name, page, limt; name可以不填, page,limit有默认值。
//    * @param name, page, limit
//    * @return {{code: number, count: number, data: *[]}}
//    */
//   getUserList: config => {
//     const { name, page = 1, limit = 20 } = param2Obj(config.url)
//     console.log('name:' + name, 'page:' + page, '分页大小limit:' + limit)
//     const UserList = List.filter(user => {
//       if (name && user.name.indexOf(name) === -1 && user.addr.indexOf(name) === -1) return false
//       return true
//     })
//     const pageList = UserList.filter((item, index) => index < limit * page && index >= limit * (page - 1))
//     return {
//       code: 20000,
//       count: UserList.length,
//       list: pageList
//     }
//   },
//   /**
//    * 增加用户
//    * @param name, addr, age, birth, sex
//    * @return {{code: number, data: {message: string}}}
//    */
//   createUser: config => {
//     const { id, name, addr, age, birth, sex } = JSON.parse(config.body)
//     console.log(JSON.parse(config.body))
//     List.unshift({
//       id: id,
//       name: name,
//       addr: addr,
//       age: age,
//       birth: birth,
//       sex: sex
//     })
//     return {
//       code: 20000,
//       data: {
//         message: '添加成功'
//       }
//     }
//   },
//   /**
//    * 删除用户
//    * @param id
//    * @return {*}
//    */
//   deleteUser: config => {
//     const { id } = param2Obj(config.url)
//     if (!id) {
//       return {
//         code: -999,
//         message: '参数不正确'
//       }
//     } else {
//       List = List.filter(u => u.id !== id)
//       return {
//         code: 20000,
//         message: '删除成功'
//       }
//     }
//   },
//   /**
//    * 批量删除
//    * @param config
//    * @return {{code: number, data: {message: string}}}
//    */
//   batchremove: config => {
//     let { ids } = param2Obj(config.url)
//     ids = ids.split(',')
//     List = List.filter(u => !ids.includes(u.id))
//     return {
//       code: 20000,
//       data: {
//         message: '批量删除成功'
//       }
//     }
//   },
//   /**
//    * 修改用户
//    * @param id, name, addr, age, birth, sex
//    * @return {{code: number, data: {message: string}}}
//    */
//   updateUser: config => {
//     const { id, name, addr, age, birth, sex } = JSON.parse(config.body)
//     const sex_num = parseInt(sex)
//     List.some(u => {
//       if (u.id === id) {
//         u.name = name
//         u.addr = addr
//         u.age = age
//         u.birth = birth
//         u.sex = sex_num
//         return true
//       }
//     })
//     return {
//       code: 20000,
//       data: {
//         message: '编辑成功'
//       }
//     }
//   }
// }
