(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-52809ff1"],{"64a5":function(e,t,s){},7101:function(e,t,s){"use strict";s.r(t);var r=function(){var e=this,t=e.$createElement,s=e._self._c||t;return s("el-form",{ref:"form",staticClass:"login-container",attrs:{model:e.form,"status-icon":"",rules:e.rules,"label-width":"100px"}},[s("h3",{staticClass:"login_title"},[e._v("系统登录")]),s("el-form-item",{staticClass:"username",attrs:{label:"用户名","label-width":"80px",prop:"username"}},[s("el-input",{attrs:{type:"input",autocomplete:"off",placeholder:"请输入账号"},model:{value:e.form.username,callback:function(t){e.$set(e.form,"username",t)},expression:"form.username"}})],1),s("el-form-item",{attrs:{label:"密码","label-width":"80px",prop:"password"}},[s("el-input",{attrs:{type:"password",autocomplete:"off",placeholder:"请输入密码"},model:{value:e.form.password,callback:function(t){e.$set(e.form,"password",t)},expression:"form.password"}})],1),s("el-form-item",{staticClass:"longin_submit"},[s("el-button",{staticClass:"longin_submit",attrs:{type:"primary"},on:{click:e.login}},[e._v("登陆")])],1)],1)},a=[],o={data:function(){return{form:{username:"admin",password:"admin"},rules:{username:[{required:!0,message:"请输入用户名",trigger:"blur"},{min:3,message:"用户名长度不能小于3位",trigger:"blur"}],password:[{required:!0,message:"请输入密码",trigger:"blur"}]}}},methods:{login:function(){var e=this;this.$http.post("api/permission/getMenu",this.form).then((function(t){t=t.data,2e4===t.code?(e.$store.commit("clearMenu"),e.$store.commit("setMenu",t.data.menu),e.$store.commit("setToken",t.data.token),e.$store.commit("addMenu",e.$router),e.$router.push({name:"home"})):e.$message.warning(t.data.message)}))}}},n=o,i=(s("eeb1"),s("2877")),l=Object(i["a"])(n,r,a,!1,null,null,null);t["default"]=l.exports},eeb1:function(e,t,s){"use strict";var r=s("64a5"),a=s.n(r);a.a}}]);
//# sourceMappingURL=chunk-52809ff1.50aaf54e.js.map