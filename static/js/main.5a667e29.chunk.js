(this["webpackJsonpadapt-proj-frontend"]=this["webpackJsonpadapt-proj-frontend"]||[]).push([[0],{16:function(e,t,n){},19:function(e,t,n){},21:function(e,t,n){},22:function(e,t,n){"use strict";n.r(t);var c=n(1),a=n.n(c),s=n(6),i=n.n(s),o=(n(16),n(7)),r=n(8),l=n(2),d=n(11),j=n(10),h=n(9),u=(n(19),n(0)),b=function(e){Object(d.a)(n,e);var t=Object(j.a)(n);function n(e){var c;return Object(o.a)(this,n),(c=t.call(this,e)).state={msg:""},c.ask=c.ask.bind(Object(l.a)(c)),c}return Object(r.a)(n,[{key:"ask",value:function(){var e=this;(new Headers).append("Access-Control-Allow-Origin","*");var t=Object(h.v4)(),n=new Request("http://0.0.0.0:80/api/game/play/1/".concat(t),{mode:"cors",method:"GET"});fetch(n).then((function(e){return e.json()})).then((function(t){console.log(t),e.setState({msg:"has_won: "+t.has_won})})).catch((function(e){return console.error(e)}))}},{key:"render",value:function(){return Object(u.jsxs)("div",{children:[Object(u.jsx)("div",{className:"question-container",children:Object(u.jsx)("button",{onClick:this.ask,children:"Play Game!"})}),Object(u.jsxs)("div",{className:"ball-container",children:[Object(u.jsx)("div",{className:"ball-black-outer",children:Object(u.jsx)("div",{className:"ball-white-inner",children:Object(u.jsx)("div",{children:""!==this.state.msg?this.state.msg:Object(u.jsx)("div",{className:"eight",children:"8"})})})}),Object(u.jsx)("div",{className:"ball-shadow"})]})]})}}]),n}(a.a.Component);n(21);var O=function(){return Object(u.jsx)(b,{})},f=function(e){e&&e instanceof Function&&n.e(3).then(n.bind(null,23)).then((function(t){var n=t.getCLS,c=t.getFID,a=t.getFCP,s=t.getLCP,i=t.getTTFB;n(e),c(e),a(e),s(e),i(e)}))};i.a.render(Object(u.jsx)(a.a.StrictMode,{children:Object(u.jsx)(O,{})}),document.getElementById("root")),f()}},[[22,1,2]]]);
//# sourceMappingURL=main.5a667e29.chunk.js.map