(window.webpackJsonp_wordpress_seo=window.webpackJsonp_wordpress_seo||[]).push([[38],{292:function(t,s,e){"use strict";e.r(s),e.d(s,"scopeCss",(function(){return S}));const o=")(?:\\(((?:\\([^)(]*\\)|[^)(]*)+?)\\))?([^,{]*)",r=new RegExp("(-shadowcsshost"+o,"gim"),c=new RegExp("(-shadowcsscontext"+o,"gim"),n=new RegExp("(-shadowcssslotted"+o,"gim"),l=/-shadowcsshost-no-combinator([^\s]*)/,a=[/::shadow/g,/::content/g],i=/-shadowcsshost/gim,h=/:host/gim,p=/::slotted/gim,d=/:host-context/gim,u=/\/\*\s*[\s\S]*?\*\//g,g=/\/\*\s*#\s*source(Mapping)?URL=[\s\S]+?\*\//g,m=/(\s*)([^;\{\}]+?)(\s*)((?:{%BLOCK%}?\s*;?)|(?:\s*;))/g,w=/([{}])/g,f=(t,s)=>{const e=_(t);let o=0;return e.escapedString.replace(m,(...t)=>{const r=t[2];let c="",n=t[4],l="";n&&n.startsWith("{%BLOCK%")&&(c=e.blocks[o++],n=n.substring("%BLOCK%".length+1),l="{");const a=s({selector:r,content:c});return`${t[1]}${a.selector}${t[3]}${l}${a.content}${n}`})},_=t=>{const s=t.split(w),e=[],o=[];let r=0,c=[];for(let t=0;t<s.length;t++){const n=s[t];"}"===n&&r--,r>0?c.push(n):(c.length>0&&(o.push(c.join("")),e.push("%BLOCK%"),c=[]),e.push(n)),"{"===n&&r++}return c.length>0&&(o.push(c.join("")),e.push("%BLOCK%")),{escapedString:e.join(""),blocks:o}},x=(t,s,e)=>t.replace(s,(...t)=>{if(t[2]){const s=t[2].split(","),o=[];for(let r=0;r<s.length;r++){const c=s[r].trim();if(!c)break;o.push(e("-shadowcsshost-no-combinator",c,t[3]))}return o.join(",")}return"-shadowcsshost-no-combinator"+t[3]}),$=(t,s,e)=>t+s.replace("-shadowcsshost","")+e,b=(t,s,e)=>s.indexOf("-shadowcsshost")>-1?$(t,s,e):t+s+e+", "+s+" "+t+e,O=(t,s,e,o,r)=>f(t,t=>{let r=t.selector,c=t.content;return"@"!==t.selector[0]?r=((t,s,e,o)=>t.split(",").map(t=>o&&t.indexOf("."+o)>-1?t.trim():((t,s)=>!(t=>(t=t.replace(/\[/g,"\\[").replace(/\]/g,"\\]"),new RegExp("^("+t+")([>\\s~+[.,{:][\\s\\S]*)?$","m")))(s).test(t))(t,s)?((t,s,e)=>{const o="."+(s=s.replace(/\[is=([^\]]*)\]/g,(t,...s)=>s[0])),r=t=>{let r=t.trim();if(!r)return"";if(t.indexOf("-shadowcsshost-no-combinator")>-1)r=((t,s,e)=>{if(i.lastIndex=0,i.test(t)){const s="."+e;return t.replace(l,(t,e)=>e.replace(/([^:]*)(:*)(.*)/,(t,e,o,r)=>e+s+o+r)).replace(i,s+" ")}return s+" "+t})(t,s,e);else{const s=t.replace(i,"");if(s.length>0){const t=s.match(/([^:]*)(:*)(.*)/);t&&(r=t[1]+o+t[2]+t[3])}}return r},c=(t=>{const s=[];let e,o=0;return e=(t=t.replace(/(\[[^\]]*\])/g,(t,e)=>{const r=`__ph-${o}__`;return s.push(e),o++,r})).replace(/(:nth-[-\w]+)(\([^)]+\))/g,(t,e,r)=>{const c=`__ph-${o}__`;return s.push(r),o++,e+c}),{content:e,placeholders:s}})(t);let n,a="",h=0;const p=/( |>|\+|~(?!=))\s*/g;let d=!((t=c.content).indexOf("-shadowcsshost-no-combinator")>-1);for(;null!==(n=p.exec(t));){const s=n[1],e=t.slice(h,n.index).trim();d=d||e.indexOf("-shadowcsshost-no-combinator")>-1,a+=`${d?r(e):e} ${s} `,h=p.lastIndex}const u=t.substring(h);return d=d||u.indexOf("-shadowcsshost-no-combinator")>-1,a+=d?r(u):u,g=c.placeholders,a.replace(/__ph-(\d+)__/g,(t,s)=>g[+s]);var g})(t,s,e).trim():t.trim()).join(", "))(t.selector,s,e,o):(t.selector.startsWith("@media")||t.selector.startsWith("@supports")||t.selector.startsWith("@page")||t.selector.startsWith("@document"))&&(c=O(t.content,s,e,o)),{selector:r.replace(/\s{2,}/g," ").trim(),content:c}}),S=(t,s,e)=>{const o=s+"-h",l=s+"-s",i=t.match(g)||[];t=(t=>t.replace(u,""))(t);const m=[];if(e){const s=t=>{const s=`/*!@___${m.length}___*/`,e=`/*!@${t.selector}*/`;return m.push({placeholder:s,comment:e}),t.selector=s+t.selector,t};t=f(t,t=>"@"!==t.selector[0]?s(t):t.selector.startsWith("@media")||t.selector.startsWith("@supports")||t.selector.startsWith("@page")||t.selector.startsWith("@document")?(t.content=f(t.content,s),t):t)}const w=((t,s,e,o,l)=>{const i=((t,s)=>{const e="."+s+" > ",o=[];return t=t.replace(n,(...t)=>{if(t[2]){const s=t[2].trim(),r=t[3],c=e+s+r;let n="";for(let s=t[4]-1;s>=0;s--){const e=t[5][s];if("}"===e||","===e)break;n=e+n}const l=n+c,a=`${n.trimRight()}${c.trim()}`;if(l.trim()!==a.trim()){const t=`${a}, ${l}`;o.push({orgSelector:l,updatedSelector:t})}return c}return"-shadowcsshost-no-combinator"+t[3]}),{selectors:o,cssText:t}})(t=(t=>x(t,c,b))(t=(t=>x(t,r,$))(t=t.replace(d,"-shadowcsscontext").replace(h,"-shadowcsshost").replace(p,"-shadowcssslotted"))),o);return t=(t=>a.reduce((t,s)=>t.replace(s," "),t))(t=i.cssText),s&&(t=O(t,s,e,o)),{cssText:(t=(t=t.replace(/-shadowcsshost-no-combinator/g,"."+e)).replace(/>\s*\*\s+([^{, ]+)/gm," $1 ")).trim(),slottedSelectors:i.selectors}})(t,s,o,l);return t=[w.cssText,...i].join("\n"),e&&m.forEach(({placeholder:s,comment:e})=>{t=t.replace(s,e)}),w.slottedSelectors.forEach(s=>{t=t.replace(s.orgSelector,s.updatedSelector)}),t}}}]);