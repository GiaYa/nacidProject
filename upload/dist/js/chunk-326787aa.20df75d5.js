(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["chunk-326787aa"],{"005a":function(t,a,e){},2562:function(t,a,e){"use strict";e.r(a);var l=function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",[e("div",{staticClass:"he"}),e("el-table",{staticStyle:{width:"100%"},attrs:{data:t.tableData,height:"447"}},[e("el-table-column",{attrs:{fixed:"",prop:"id",label:"序号"}}),e("el-table-column",{attrs:{prop:"ucid",label:"身份证"}}),e("el-table-column",{attrs:{prop:"region",label:"地区"}}),e("el-table-column",{attrs:{prop:"gdata",label:"途径时间 "}})],1)],1)},n=[],c={data:function(){return{tableData:[]}},methods:{getList:function(){var t=this;this.$http.get("http://localhost:8099/api/NacidCard/",{}).then((function(a){t.tableData=a.data.list.map((function(t){return t})),console.log(t.tableData),t.config.total=a.data.count}))}},created:function(){this.getList()}},i=c,o=(e("569c"),e("2877")),s=Object(o["a"])(i,l,n,!1,null,"ff4c6298",null);a["default"]=s.exports},"569c":function(t,a,e){"use strict";var l=e("005a"),n=e.n(l);n.a}}]);
//# sourceMappingURL=chunk-326787aa.20df75d5.js.map