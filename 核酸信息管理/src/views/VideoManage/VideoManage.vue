<template>
<div>
  <div class="he"></div>
  <el-table
    :data="tableData"
    style="width: 100%"
    height="447">
    <el-table-column
      fixed
      prop="id"
      label="序号">
    </el-table-column>
    <el-table-column
      prop="ucid"
      label="身份证">
    </el-table-column>
    <el-table-column
      prop="region"
      label="地区">
    </el-table-column>
    <el-table-column
      prop="gdata"
      label="途径时间 ">
    </el-table-column>
  </el-table>
  </div>
</template>

<script>
  export default {
    data() {
      return {
        tableData: []
      }
    },
    methods: {
    getList() {
      this.$http
        .get('http://localhost:8080/api/NacidCard/', {
        })
        .then((res) => {
          this.tableData = res.data.list.map((item) => {
            return item;
          });
          console.log(this.tableData);
          this.config.total = res.data.count;
        });
    }
  },
  created() {
    this.getList()
  }
  }
</script>
<style lang="scss" scoped>
.he {
  height: 63px;
}
</style>