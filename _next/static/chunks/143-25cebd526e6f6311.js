(self.webpackChunk_N_E=self.webpackChunk_N_E||[]).push([[143],{6808:function(e,t,n){var o,i;void 0!==(o="function"==typeof(i=function(){function e(){for(var e=0,t={};e<arguments.length;e++){var n=arguments[e];for(var o in n)t[o]=n[o]}return t}function t(e){return e.replace(/(%[0-9A-Z]{2})+/g,decodeURIComponent)}return function n(o){function i(){}function c(t,n,c){if("undefined"!=typeof document){"number"==typeof(c=e({path:"/"},i.defaults,c)).expires&&(c.expires=new Date(new Date*1+864e5*c.expires)),c.expires=c.expires?c.expires.toUTCString():"";try{var r=JSON.stringify(n);/^[\{\[]/.test(r)&&(n=r)}catch(e){}n=o.write?o.write(n,t):encodeURIComponent(String(n)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g,decodeURIComponent),t=encodeURIComponent(String(t)).replace(/%(23|24|26|2B|5E|60|7C)/g,decodeURIComponent).replace(/[\(\)]/g,escape);var s="";for(var a in c)c[a]&&(s+="; "+a,!0!==c[a]&&(s+="="+c[a].split(";")[0]));return document.cookie=t+"="+n+s}}function r(e,n){if("undefined"!=typeof document){for(var i={},c=document.cookie?document.cookie.split("; "):[],r=0;r<c.length;r++){var s=c[r].split("="),a=s.slice(1).join("=");n||'"'!==a.charAt(0)||(a=a.slice(1,-1));try{var l=t(s[0]);if(a=(o.read||o)(a,l)||t(a),n)try{a=JSON.parse(a)}catch(e){}if(i[l]=a,e===l)break}catch(e){}}return e?i[e]:i}}return i.set=c,i.get=function(e){return r(e,!1)},i.getJSON=function(e){return r(e,!0)},i.remove=function(t,n){c(t,"",e(n,{expires:-1}))},i.defaults={},i.withConverter=n,i}(function(){})})?i.call(t,n,t,e):i)&&(e.exports=o),e.exports=i()},143:function(e,t,n){"use strict";n.d(t,{Gk:function(){return m}});var o,i,c=n(6808),r=n.n(c),s=n(7294),a=function(e){var t=e.condition,n=e.wrapper,o=e.children;return t?n(o):o};function l(){return(l=Object.assign?Object.assign.bind():function(e){for(var t=1;t<arguments.length;t++){var n=arguments[t];for(var o in n)Object.prototype.hasOwnProperty.call(n,o)&&(e[o]=n[o])}return e}).apply(this,arguments)}function u(e,t){return(u=Object.setPrototypeOf?Object.setPrototypeOf.bind():function(e,t){return e.__proto__=t,e})(e,t)}var p={TOP:"top",BOTTOM:"bottom",NONE:"none"};(o=i||(i={})).STRICT="strict",o.LAX="lax",o.NONE="none";var d={HIDDEN:"hidden",SHOW:"show",BY_COOKIE_VALUE:"byCookieValue"},b="CookieConsent",f=["children"],v={disableStyles:!1,hideOnAccept:!0,hideOnDecline:!0,location:p.BOTTOM,visible:d.BY_COOKIE_VALUE,onAccept:function(e){},onDecline:function(){},cookieName:b,cookieValue:"true",declineCookieValue:"false",setDeclineCookie:!0,buttonText:"I understand",declineButtonText:"I decline",debug:!1,expires:365,containerClasses:"CookieConsent",contentClasses:"",buttonClasses:"",buttonWrapperClasses:"",declineButtonClasses:"",buttonId:"rcc-confirm-button",declineButtonId:"rcc-decline-button",extraCookieOptions:{},disableButtonStyles:!1,enableDeclineButton:!1,flipButtons:!1,sameSite:i.LAX,ButtonComponent:function(e){var t=e.children,n=function(e,t){if(null==e)return{};var n,o,i={},c=Object.keys(e);for(o=0;o<c.length;o++)n=c[o],t.indexOf(n)>=0||(i[n]=e[n]);return i}(e,f);return s.createElement("button",Object.assign({},n),t)},overlay:!1,overlayClasses:"",onOverlayClick:function(){},acceptOnOverlayClick:!1,ariaAcceptLabel:"Accept cookies",ariaDeclineLabel:"Decline cookies",acceptOnScroll:!1,acceptOnScrollPercentage:25,customContentAttributes:{},customContainerAttributes:{},customButtonProps:{},customDeclineButtonProps:{},customButtonWrapperAttributes:{},style:{},buttonStyle:{},declineButtonStyle:{},contentStyle:{},overlayStyle:{}},h={visible:!1,style:{alignItems:"baseline",background:"#353535",color:"white",display:"flex",flexWrap:"wrap",justifyContent:"space-between",left:"0",position:"fixed",width:"100%",zIndex:"999"},buttonStyle:{background:"#ffd42d",border:"0",borderRadius:"0px",boxShadow:"none",color:"black",cursor:"pointer",flex:"0 0 auto",padding:"5px 10px",margin:"15px"},declineButtonStyle:{background:"#c12a2a",border:"0",borderRadius:"0px",boxShadow:"none",color:"#e5e5e5",cursor:"pointer",flex:"0 0 auto",padding:"5px 10px",margin:"15px"},contentStyle:{flex:"1 0 300px",margin:"15px"},overlayStyle:{position:"fixed",left:0,top:0,width:"100%",height:"100%",zIndex:"999",backgroundColor:"rgba(0,0,0,0.3)"}},y=function(e){void 0===e&&(e=b);var t=r().get(e);return void 0===t?r().get(O(e)):t},O=function(e){return e+"-legacy"},m=function(e){function t(){var t;return t=e.apply(this,arguments)||this,t.state=h,t.handleScroll=function(){var e=t.props.acceptOnScrollPercentage,n=document.documentElement,o=document.body,i="scrollTop",c="scrollHeight";(n[i]||o[i])/((n[c]||o[c])-n.clientHeight)*100>e&&t.accept(!0)},t.removeScrollListener=function(){t.props.acceptOnScroll&&window.removeEventListener("scroll",t.handleScroll)},t}(n=t).prototype=Object.create(e.prototype),n.prototype.constructor=n,u(n,e);var n,o=t.prototype;return o.componentDidMount=function(){var e=this.props.debug;(void 0===this.getCookieValue()||e)&&(this.setState({visible:!0}),this.props.acceptOnScroll&&window.addEventListener("scroll",this.handleScroll,{passive:!0}))},o.componentWillUnmount=function(){this.removeScrollListener()},o.accept=function(e){void 0===e&&(e=!1);var t,n=this.props,o=n.cookieName,i=n.cookieValue,c=n.hideOnAccept,r=n.onAccept;this.setCookie(o,i),r(null!=(t=e)&&t),c&&(this.setState({visible:!1}),this.removeScrollListener())},o.overlayClick=function(){var e=this.props,t=e.acceptOnOverlayClick,n=e.onOverlayClick;t&&this.accept(),n()},o.decline=function(){var e=this.props,t=e.cookieName,n=e.declineCookieValue,o=e.hideOnDecline,i=e.onDecline;e.setDeclineCookie&&this.setCookie(t,n),i(),o&&this.setState({visible:!1})},o.setCookie=function(e,t){var n=this.props,o=n.extraCookieOptions,c=n.expires,s=n.sameSite,a=this.props.cookieSecurity;void 0===a&&(a=!window.location||"https:"===window.location.protocol);var u=l({expires:c},o,{sameSite:s,secure:a});s===i.NONE&&r().set(O(e),t,u),r().set(e,t,u)},o.getCookieValue=function(){return y(this.props.cookieName)},o.render=function(){var e=this;switch(this.props.visible){case d.HIDDEN:return null;case d.BY_COOKIE_VALUE:if(!this.state.visible)return null}var t=this.props,n=t.location,o=t.style,i=t.buttonStyle,c=t.declineButtonStyle,r=t.contentStyle,u=t.disableStyles,b=t.buttonText,f=t.declineButtonText,v=t.containerClasses,h=t.contentClasses,y=t.buttonClasses,O=t.buttonWrapperClasses,m=t.declineButtonClasses,C=t.buttonId,g=t.declineButtonId,k=t.disableButtonStyles,S=t.enableDeclineButton,x=t.flipButtons,B=t.ButtonComponent,w=t.overlay,j=t.overlayClasses,E=t.overlayStyle,D=t.ariaAcceptLabel,N=t.ariaDeclineLabel,A=t.customContainerAttributes,I=t.customContentAttributes,T=t.customButtonProps,L=t.customDeclineButtonProps,_=t.customButtonWrapperAttributes,P={},U={},V={},R={},W={};switch(u?(P=Object.assign({},o),U=Object.assign({},i),V=Object.assign({},c),R=Object.assign({},r),W=Object.assign({},E)):(P=Object.assign({},l({},this.state.style,o)),R=Object.assign({},l({},this.state.contentStyle,r)),W=Object.assign({},l({},this.state.overlayStyle,E)),k?(U=Object.assign({},i),V=Object.assign({},c)):(U=Object.assign({},l({},this.state.buttonStyle,i)),V=Object.assign({},l({},this.state.declineButtonStyle,c)))),n){case p.TOP:P.top="0";break;case p.BOTTOM:P.bottom="0"}var H=[];return S&&H.push(s.createElement(B,Object.assign({key:"declineButton",style:V,className:m,id:g,"aria-label":N,onClick:function(){e.decline()}},L),f)),H.push(s.createElement(B,Object.assign({key:"acceptButton",style:U,className:y,id:C,"aria-label":D,onClick:function(){e.accept()}},T),b)),x&&H.reverse(),s.createElement(a,{condition:w,wrapper:function(t){return s.createElement("div",{style:W,className:j,onClick:function(){e.overlayClick()}},t)}},s.createElement("div",Object.assign({className:""+v,style:P},A),s.createElement("div",Object.assign({style:R,className:h},I),this.props.children),s.createElement("div",Object.assign({className:""+O},_),H.map(function(e){return e}))))},t}(s.Component);m.defaultProps=v}}]);