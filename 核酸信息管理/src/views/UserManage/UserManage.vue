<template>
  <div class="manage">
    <el-dialog
      :title="operateType === 'add' ? '新增用户' : '更新用户'"
      :visible.sync="isShow"
    >
      <common-form
        :formLabel="operateFormLabel"
        :form="operateForm"
        ref="form"
      ></common-form>
      <div slot="footer" class="dialog-footer">
        <el-button @click="isShow = false">取 消</el-button>
        <el-button type="primary" @click="confirm">确 定</el-button>
      </div>
    </el-dialog>
    <div class="manage-header">
      <el-button type="primary" @click="addUser">+ 新增</el-button>
      <common-form inline :formLabel="formLabel" :form="searchFrom">
        <el-button type="primary" @click="getList(searchFrom.keyword)"
          >搜索</el-button
        >
      </common-form>
    </div>
    <common-table
      :tableData="tableData"
      :tableLabel="tableLabel"
      :config="config"
      @changePage="getList()"
      @edit="editUser"
      @del="delUser"
    ></common-table>
  </div>
</template>

<script>
import Axios from "axios";
import CommonForm from "../../components/CommonForm";
import CommonTable from "../../components/CommonTable";
export default {
  components: {
    CommonForm,
    CommonTable,
  },
  data() {
    return {
      operateType: "add",
      isShow: false,
      tableData: [],
      tableLabel: [
        // {
        //   prop: 'id',
        //   label: '序号'
        // },
        {
          prop: "name",
          label: "姓名",
        },
        {
          prop: "age",
          label: "年龄",
        },
        {
          prop: "sex",
          label: "性别",
        },
        {
          prop: "ucid",
          label: "身份证",
        },
        {
          prop: "tel",
          label: "电话",
        },
        {
          prop: "address",
          label: "地址",
          width: 320,
        },
        {
          prop: "isvaccination",
          label: "接种疫苗针数",
        },
      ],
      config: {
        page: 1,
        total: 30,
        loading: false,
      },
      operateForm: {
        name: "",
        address: "",
        age: "",
        ucid: "",
        sex: "",
        isvaccination: "",
        tel: "",
      },
      operateFormLabel: [
        {
          model: "name",
          label: "姓名",
        },
        {
          model: "age",
          label: "年龄",
        },
        {
          model: "sex",
          label: "性别",
          type: "select",
          opts: [
            {
              label: "男",
              value: 1,
            },
            {
              label: "女",
              value: 0,
            },
          ],
        },
        {
          model: "ucid",
          label: "身份证",
        },
        {
          model: "tel",
          label: "电话",
        },
        {
          model: "address",
          label: "地址",
        },
        {
          model: "isvaccination",
          label: "是否接种疫苗",
        },
      ],
      searchFrom: {
        keyword: "",
      },
      formLabel: [
        {
          model: "keyword",
          label: "",
        },
      ],
    };
  },
  methods: {
    getList(name = "") {
      console.log("列表搜索" + name);
      this.config.loading = true;
      // 搜索时，页码需要设置为1，才能正确返回数据，因为数据是从第一页开始返回的
      name ? (this.config.page = 1) : "";
      this.$http
        .get("http://localhost:8080/api/NacidUser/", {
          params: {
            page: this.config.page,
            name,
          },
        })
        .then((res) => {
          this.tableData = res.data.list.map((item) => {
            return item;
          });
          console.log(this.tableData);
          this.config.total = res.data.count;
          this.config.loading = false;
        });
    },
    addUser() {
      this.operateForm = {}
      this.operateType = "add"
      this.isShow = true
    },
    editUser(row) {
      this.operateType = "edit"
      this.isShow = true
      this.operateForm = row
    },
    confirm() {
      if (this.operateType === "edit") {
        console.log(this.operateForm)
        this.$http
          .put("http://localhost:8080/api/NacidUser/", this.operateForm)
          .then((res) => {
            console.log(res.data);
            this.isShow = false;
            this.getList();
          });
      } else {
        this.$http
          .post("http://localhost:8080/api/NacidUser/", this.operateForm)
          .then((res) => {
            console.log(res.data);
            this.isShow = false;
            this.getList();
          });
      }
    },
    // DeleteUser(row) {
    //   this.$confirm("此操作将永久删除该文件, 是否继续?", "提示", {
    //     confirmButtonText: "确定",
    //     cancelButtonText: "取消",
    //     type: "warning"
    //   }).then(() => {
    //     let id = row.id
    //     Axios.delete('http://localhost:8080/api/NacidUser/del/id=', +id)
    //       .then((res) => {
    //         console.log(res.data)
    //         this.$message({
    //           type: "success",
    //           message: "删除成功!"
    //         })
    //         this.getList()
    //       })
    //       .catch(() => {
    //         this.$message({
    //           type: 'info',
    //           message: '已取消删除'
    //         });
    //       })
    //   });
    // },
   delUser(row) {
    this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
      confirmButtonText: '确定',
       cancelButtonText: '取消',
       type: 'warning'
     })
      .then(() => {
        let Gid = row.id
          this.$http.delete('http://localhost:8080/api/NacidUser/del/' + Gid).then(res => {
             console.log(res.data)
             this.$message({
              type: 'success',
              message: '删除成功!'
             })
            this.getList()
           })
       })
      .catch(() => {
        this.$message({
           type: 'info',
          message: '已取消删除'
        })
      })
   }
   },
  created() {
    this.getList();
  },
};
</script>

<style lang="scss" scoped>
@import "@/assets/scss/common";
</style>
