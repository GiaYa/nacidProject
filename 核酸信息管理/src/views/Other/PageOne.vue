<template>
  <div class="manage">
    <div class="manage-header">
      <common-form inline :formLabel="formLabel" :form="searchFrom" v-show="false">
        <el-button type="primary" @click="getList(searchFrom.keyword)">搜索</el-button>
      </common-form>
    </div>
    <div class="he"></div>
    <common-user :tableData="tableData" :tableLabel="tableLabel" :config="config" @changePage="getList()"></common-user>
  </div>
</template>

<script>
import CommonForm from '../../components/CommonForm'
import CommonUser from '../../components/CommonUser.vue'
export default {
  components: {
    CommonForm,
    CommonUser
  },
  data() {
    return {
      operateType: 'add',
      isShow: false,
      tableData: [],
      tableData2: [],
      tableData3: [],
      tableLabel: [
        {
          prop: 'name',
          label: '姓名'
        },
        {
          prop: 'age',
          label: '年龄'
        },
        {
          prop: 'sex',
          label: '性别'
        },
        {
          prop: 'ucid',
          label: '身份证'
        },
        {
          prop: 'tel',
          label: '电话'
        },
        {
          prop: 'address',
          label: '地址',
          width: 320
        },
        {
          prop: 'isvaccination',
          label: '接种疫苗针数'
        }
      ],
      config: {
        page: 1,
        total: 30,
        loading: false
      },
      searchFrom: {
        keyword: ''
      },
      formLabel: [
        {
          model: 'keyword',
          label: ''
        }
      ]
    }
  },
  methods: {
    getList(name = '') {
      console.log('列表搜索' + name)
      this.config.loading = true
      // 搜索时，页码需要设置为1，才能正确返回数据，因为数据是从第一页开始返回的
      name ? (this.config.page = 1) : ''
      this.$http
        .get('http://localhost:8080/api/NacidCode/1', {
          params: {
            page: this.config.page,
            name
          }
        })
        .then(res => {
          this.tableData2 = res.data.list
          this.tableData3 = this.tableData2.map(res => {
            return res.userlist
          })
          console.log(this.tableData3)
          console.log(this.tableData3[0][0])
          for (let index = 0; index < this.tableData3.length; index++) {
            this.tableData.push(this.tableData3[index][0])
          }
          this.config.total = this.tableData.length
          this.config.loading = false
        })
    }
  },
  created() {
    this.getList()
  }
}
</script>

<style lang="scss" scoped>
@import '@/assets/scss/common';
.he {
  height: 63px;
}
</style>
