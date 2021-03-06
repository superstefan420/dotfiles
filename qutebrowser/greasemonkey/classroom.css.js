// ==UserScript==
// @name    Userstyle (classroom.css)
// @include    classroom.google.com/*
// ==/UserScript==
GM_addStyle(`@-moz-document url-prefix("https://classroom.google.com")
{
/* Color variables */
  body
  {
    --bg-light: #525355;
    --bg-mid: #2D2E30;
    --bg-dark: #1f1f1f;
  }

/* Backgrounds */
  .joJglb, .I7OXgf, .iph-dialog.iph-dialog, body, .p0oLxb, .y2d25, .OlXwxf .SFCE1b, .DC55n td
  {
    background: var(--bg-dark);
  }

  .JPdR6b, .HyS0Qd .n9IS1, .HyS0Qd:not(.RDPZE):hover .n9IS1, .ETRkCe, .yckQJf, .d4Fe0d, .GWZ7yf, .Aopndd, .F7l5Ob-xl07Ob, .hgjBDc, .DShyMc-MjA4MDYzNzQ5ODla .tUJKGd:not(.xp2dJ):not(.rZXyy):hover.j6KDAd, .DShyMc-MjA4MDYzNzQ5ODla .tUJKGd:not(.xp2dJ):not(.rZXyy):hover.idtp4e, .DShyMc-MjA4MDYzNzQ5ODla .tUJKGd:not(.xp2dJ):not(.rZXyy):hover .j6KDAd, .DShyMc-MjA4MDYzNzQ5ODla .tUJKGd:not(.xp2dJ):not(.rZXyy):hover .idtp4e, .DShyMc-MjA4MDYzNzQ5ODla .ZoT1D:hover.j6KDAd, .DShyMc-MjA4MDYzNzQ5ODla .ZoT1D:hover.idtp4e, .DShyMc-MjA4MDYzNzQ5ODla .ZoT1D:hover .j6KDAd, .DShyMc-MjA4MDYzNzQ5ODla .ZoT1D:hover .idtp4e, .YEeyed, .VUfVLb, thead .qwFLJb, .xdKj9c.kTKNNc, .Je07k.kTKNNc, tbody .qwFLJb.kTKNNc, .xdKj9c, .Je07k, tbody .qwFLJb, .ncFHed, .aSjeL.aSjeL td, .TJtJXb:hover td, .tYQn5c:hover td, .DC55n:hover td, .wSo7x, .feojCc, .cLpBac, .Ipq4h, .cr8auc, .E8HiIc, .RpYYWb, .fEejq.qeTOO .dKKcxf, .fEejq.qeTOO .STMvPe, .hYt5f.EfvGO .WkZsyc, .CAntkd:focus, .S6Vdac:focus, .KeIaWd, .hm8fac.cNxwhc, .cQ1lCe, .uQ3ESd, .D3oBEe .qTs5Xc
  {
    background: var(--bg-mid);
  }

  .HyS0Qd .n9IS1, .Aopndd, .KmLLod:hover .uO32ac, .tfGBod:not(.xp2dJ) .jWCzBe:hover, .gb_l.gb_k:hover a, .zFfAHb:focus, .xHPsid .hN1OOc:hover
  {
    background: var(--bg-mid) !important;
  }

  .z80M1.FwR7Pc, .DShyMc-AaTFfe .Xi8cpb.qs41qe .LlcfK, .F7l5Ob-DNETlb-auswjd, .F7l5Ob-DNETlb-sn54Q, .DShyMc-ODg0NDIxMDA4M1pa.bFjUmb-Ysl7Fe, .DShyMc-ODg0NDIxMDA4M1pa .bFjUmb-Ysl7Fe, .DShyMc-Mzc3MDgwNjIyNjFa.bFjUmb-Ysl7Fe, .DShyMc-Mzc3MDgwNjIyNjFa .bFjUmb-Ysl7Fe, .fWf7qe:not(.RDPZE):hover .Yalane, .fWf7qe .Yalane, .DShyMc-Mzg3NjUxNzA4NDJa.bFjUmb-Ysl7Fe, .DShyMc-Mzg3NjUxNzA4NDJa .bFjUmb-Ysl7Fe, .DShyMc-MjM4NDMzOTAzNjBa.bFjUmb-Ysl7Fe, .DShyMc-MjM4NDMzOTAzNjBa .bFjUmb-Ysl7Fe, .qs41qe div, .DShyMc-MjA5MTczNjU5NTRa.bFjUmb-Ysl7Fe, .DShyMc-MjA5MTczNjU5NTRa .bFjUmb-Ysl7Fe, .qk0lee:focus:after, .xPAMbf:hover, .ncFHed .MocG8c.KKjvXb, .OlXwxf .SFCE1b:hover, .cQ1lCe:hover, .cQ1lCe:focus
  {
    background: var(--bg-light);
  }

  .xPAMbf:hover, .DShyMc-ODg0NDIxMDA4M1pa .ybOdnf:not(.RDPZE).iWO5td, .DShyMc-ODg0NDIxMDA4M1pa .ybOdnf:not(.RDPZE) .OA0qNb .LMgvRb[aria-selected="true"], .DShyMc-ODg0NDIxMDA4M1pa .NqFm6:not(.RDPZE) .tWfTvb [role="option"][aria-selected="true"]
  {
    background: var(--bg-light) !important;
  }
/* Border colors */
  .joJglb, .E5f6Vd, .s2g3Xd .ldHTPe, .s2g3Xd, .F7l5Ob-AXxpWd, .SZ0kZe, .ZNE4y, .A4OZlf .ldHTPe, .hlx3je:not(:empty)+.ldHTPe, .AeAAkf, .BEAGS, .BOW64, .xPAMbf, .qwFLJb, .Je07k, .YEeyed, .VUfVLb, .xdKj9c, .ppMo6b::before, .PeGHgb.Q8U8uc .Ono85c+.oh9CFb, .DC55n td, .AvaE, .cQ1lCe, .VDj5V, .kZNBke:last-child.bkKgJe .cQ1lCe
  {
    border-color: var(--bg-dark);
  }

  .d4Fe0d, .Aopndd, .F0D56, .F0D56:last-child, .ar1wE .eqqrO, .ySjuvd .eqqrO, .d6CWTd, .O9YpHb, .jWCzBe, .tUJKGd:not(:first-child), .gb_l.gb_k:hover a, .gb_l .gb_L, .oleV8d, .iHA0Sb, .aSjeL.aSjeL td, .a4YS1c, .BQ5ILd, .g5FCDc, .wSo7x, .WN8ale, .feojCc, .hja3X, .ECK80e, .RpYYWb, .YVyYF, .oqnjOc td.Fk0vXe, .D3oBEe .n9IS1:before, .AcK03d .Unei2d, .AcK03d .HNSHbb, .AcK03d .KmSns, .AkVYk .Yalane:before, .gKkZCe
  {
    border-color: var(--bg-mid);
  }

  .hN1OOc.eumXzf:after, .jWCzBe
  {
    border-color: var(--bg-mid) !important;
  }
/* Colors */
  .IqJTee, .FeRvI .jO7h3c, .qTs5Xc, .poFWNe, .Ag5Pwe, .Shk6y, .asQXV, .rpo4wf, .nk37z, .Evt7cb, .Evt7cb:visited, .IMvYId, .IMvYId:visited, .sdDCme, .K6Ovqd, .pco8Kc, .bKJwEd, .L9GLUe, .A6dC2c, .DShyMc-Mzk5MjAzNTQ3Njla .nRLOzd:hover, .DShyMc-Mzk5MjAzNTQ3Njla .nRLOzd:hover *, .DShyMc-Mzk5MjAzNTQ3Njla .nRLOzd:focus, .DShyMc-Mzk5MjAzNTQ3Njla .nRLOzd:focus *, .iph-dialog .iph-dialog-title, .iph-dialog-content, .QNajvd, .YVvGBb, .nforOe, .snyEZe .F7l5Ob-lPRnje, .F7l5Ob-FO6che, .jjooHc, .onkcGd, .onkcGd:visited, .ubVkr .AJAAmf, .DPvwYc, .jO7h3c, .rwnykc, .s7bwNb, .DShyMc-Mzk5MjAzNTQ3Njla .HyS0Qd:not(.RDPZE) .zHQkBf, .DShyMc-Mzk5MjAzNTQ3Njla .fWf7qe:not(.RDPZE) .tL9Q4c, .DShyMc-Mzk5MjAzNTQ3Njla .D3oBEe:not(.RDPZE) .zHQkBf, .DShyMc-Mzk5MjAzNTQ3Njla .AkVYk:not(.RDPZE) .tL9Q4c, .CYSZae, .lziZub, .lziZub:visited, .nGi02b, .tLDEHd, .KHxj8b, .Lzdwhd-AyKMt, .JsqLM, .wMvEnb, .apFsO.onkcGd, .apFsO.onkcGd:visited, .oBSRLe, .hqfVKd, .Lzdwhd-AyKMt::placeholder, .O98Lj, .Lzdwhd-BrZSOd, .yY3pFc-BrZSOd, .F1pOBe, .UYUfn, .waffle-theme-title, .oCUiN .j1BhHb, .asQXV-FGzYL, .bUqWxf, .EKkFUc .bUqWxf, .mHg3mf .wMrVoe, .x4sAde, .x4sAde:visited, .tLDEHd-Wvd9Cc, .FdiTFb, .LrUtTe, .MocG8c, .LCRwqc .zHQkBf, .TAjiIf a, .i9glDf, .ksaOtd, .ECK80e, .Kqfayb, .FMzRdf, .BgHQ3e, .MuGjgf, .RpYYWb, .qEVLZc, .dDKhVc, .asQXV, .udxSmc, .whsOnd, .gb_6c.gb_7c, .UvCNFb, .ApGtuc, .n9QKGb, .HgKLRe .zHQkBf, .EV3wqc>a:focus, .EV3wqc>a:hover, .J33wTc, .DShyMc-MTQ3OTA0NDgzNzM5.VnOHwf-Tvm9db, .DShyMc-MTQ3OTA0NDgzNzM5 .VnOHwf-Tvm9db, .DShyMc-MTQ3OTA0NDgzNzM5.CNpREd .VnOHwf-Tvm9db, .ciEgyd, .WdYux, .WOPwXe, .ViCi4, .B7SYid, .z3vRcc
  {
    color: white;
  }

  .EZrbnd, .XjYjO, .p0oLxb, .l4V7wb .NPEfkd, .Ipq4h
  {
    color: white !important;
  }
/* Other */
  .NMm5M
  {
    fill: white;
  }

  .iph-dialog-dismiss, .gMIble
  {
    filter: invert(1);
  }

  .Nep6Fb .NMm5M
  {
    fill: var(--bg-light);
  }

  .PDpaTd:not(:hover):not(.Rt1Pjf) .NhG04b
  {
    display: inline-block;
  }
}

@-moz-document url-prefix("https://classroom.google.com")
{
/* PROFILE CHOOSER & HEADERS */

/* Color variables */
  body
  {
    --bg-light: #525355;
    --bg-mid: #2D2E30;
    --bg-dark: #1f1f1f;
    --text-secondary: #ffffff87;
  }

/* Backgrounds */
  header[role=banner]
  {
    background: var(--bg-dark) !important;
  }

  .p2Ux4d, .EHzcec, .NQV3m
  {
    background: var(--bg-dark);
  }

  .gb_Me, .R37Fhd:hover, .J41f7d, .tX9u1b:hover, .tX9u1b:hover .Rq5Gcb, .NQV3m:hover
  {
    background: var(--bg-mid);
  }

  .gb_Me.gb_Ne, .J41f7d:hover, .wNaO7d .J41f7d:focus, .IlhWE:hover, .IlhWE:focus
  {
    background: var(--bg-light);
  }

/* Colors */
  span.gb_Xd.gb_Uc, input.gb_7e, .gb_Me.gb_Ne .gb_7e, .UTWGce, .ksO4Qc, .tuhRBc.ZWVAt, .jAcX2, .wBFtm, .Rq5Gcb, .NQV3m
  {
    color: white;
  }

  ok
  {
    color: white !important;
  }

  .asor_e, .gsan_a, .DmBVvf.ZWVAt, .Y8ahyb, .R37Fhd
  {
    color: var(--text-secondary);
  }

  ok
  {
    color: var(--text-secondary) !important;
  }

/* Border colors */
  .piCvSe, .EeWTFe, .dGrefb
  {
    border-color: var(--bg-mid);
  }

  .ksO4Qc, .jAcX2, .NQV3m, .NQV3m:hover
  {
    border-color: var(--bg-light);
  }

/* Other */
  ok
  {
    content: '\AUserstyle created by Lekrkoekj: https://lekr.site';
    color: white;
  }

  .NMm5M
  {
    fill: white;
  }
}

@-moz-document url-prefix("https://drive.google.com/picker"), url-prefix("https://docs.google.com/picker")
{
/* File choosers */

  .Nf-pm-Di.Nf-Jf-Di, .Nf-qm-Md, .picker-dialog.XKSfm-Sx9Kwc, .Nf-Er-Xr .d-u, .a-b-c.d-u.d-u-Q.d-u-v .Nf-Er-Yr.Nf-Er-cs .a-b-c.d-u.d-u-Q, .Nf-kn-Qc-Tg .a-b-c.d-u.d-u-Q, .a-kb.a-kb-dc.Nf-nb-kb.Nf-Xo-nb-kb, .d-Rb, .d-Rb, .Nf-mc-rk, .a-b-c.a-R-kb-u.Nf-Zo-kb-u, .Gd-jh-Kj-De-I-Xj, .Gd-jh-Kj-Kc, .Nf-Vm-Qc, .Nf-Gg-tg-E, .kf-Jg-cb-Md.kf-Mk-hc, .kf-tl-Qc, .a-kb, .kf-Ok-Md, .kf-mc-Sn, .LEiJIb, .jf-og-cb-Md.jf-rk-hc, .ye3Lg, .TNg8Ce .XoUIOc .focofd svg, .pGOlGd, .ndfHFb-ObfsIf-haAclf, .ndfHFb-jyrRxf-tJHJj, .ndfHFb-jyrRxf-haAclf.ndfHFb-jyrRxf-SfQLQb-pk6n9, .ndfHFb-jyrRxf-haAclf .ndfHFb-rBfmuc-E2o6qc-tJHJj, .jf-sk-Md, .jf-qk-Md,.jf-If-Gd-vg, .jf-pk-If .jf-Gd-dn-en, .UytvX, .Y7Vyje, .sz33sf
  {
    background: var(--bg-dark) !important;
  }

  .Nf-Jf-tc, .Nf-om-Zb-Df-Yb-Ij .Nf-om-Zb-wn, .Nf-Er-Xr .d-u, .d-u-Q, .a-ub-eb, .Nf-om-Zb-eb .Nf-kh-tg-Pi, .Nf-en-ok, .Nf-qn-Mi, .Nf-Vm-Jf, .Nf-Vm-Qc, input.Nf-kn-Qc-qb.d-Rb, .Nf-Gg-tg-eb, .Nf-Gg-tg-cb, .kf-rr .kf-Jg-ub-Oc, .kf-gf-tc, .kf-Lk-Zb-Ze-Yb-Fj .kf-Lk-Zb-Ul, .kf-Nc-ob-y, .d-Rb, .kf-mg-Gi-eb, .kf-mg-Gi-cb, .kf-tl-gf, .kf-tl-Qc, .fe-Vg-cb, .kf-mc-Rn, .kf-mc-Sn, .jf-ff-tc, .jf-pk-Zb-Ye-Yb-Jh .jf-pk-Zb-zl, .jf-Yk-ff, .jf-hl-ak, .jf-Ok, .jf-og-cb-Md.jf-rk-hc *, .pGOlGd .eizQhe-ObfsIf-mJRMzd:not(.eizQhe-ObfsIf-gk6SMd) .eizQhe-mJRMzd-V1ur5d-fmcmS, .pGOlGd .eizQhe-ObfsIf-mJRMzd .eizQhe-mJRMzd-V1ur5d-fmcmS, .pGOlGd .ndfHFb-ObfsIf-haAclf .ndfHFb-rBfmuc-E2o6qc-V67aGc, .ndfHFb-jyrRxf-tJHJj, .ndfHFb-jyrRxf-tJHJj-r4nke, .ndfHFb-jyrRxf-haAclf .ndfHFb-rBfmuc-E2o6qc-tJHJj *, .eizQhe-jyrRxf-V1ur5d-r4nke>.eizQhe-mJRMzd-V1ur5d-fmcmS, .gsfs, .jf-Cn-ff, .jf-pg-Lf-Uf-Oc, .jf-pg-Lf-Uf-Wh, .jf-qk-Zb-Ye-Yb-Jh .jf-qk-Zb-Al, .jf-oe-Kc .jf-Il .a-Fl-Ae-y, .jf-Zk-Qc, .jf-ul-Fg, .Re-ik-Zb-jk-Yb-zh .Re-ik-Zb-tl, .S0DSwd .clmEye, .JZi15b
  {
    color: white !important;
  }

  .kf-mg-Gi-E, .fe-Vg-hg-O, .kf-mc-Rn, .fe-Vg-ce-cb-Kc, .fe-Vg-ce-f-Kc, .fe-Vg-hg-Oc, .kf-Io-Gi-Io-Hj, .jf-ar .jf-og-ub-zn .jf-og-ub-tb, .jf-ar .jf-og-ub-tb:hover, .onv9We-AHmuwe-TSZdd .ndfHFb-ObfsIf-jXK9ad-haAclf:focus>.eizQhe-ObfsIf-jXK9ad>.eizQhe-ObfsIf-mJRMzd-V1ur5d-haAclf, .gssb_m:hover, .gssb_e:hover, .gssb_a.gsfs:hover, .jf-En-Uf-v .jf-En-Uf-Oc-Ig, .a-ub-Bb, .a-ub-v, .waffle-named-ranges-pill:focus, .waffle-named-ranges-pill:hover, .jf-oe-Kc .a-Fl-Ae .jf-Il .jf-Il-v, .jf-oe-Kc .W .jf-Il .w, .Gd-Mh-Nh-Kc>.fe-Mh-Nh.fe-Mh-w>.fe-Mh-pg-Oc-Kc, .Yd-Nd-Qb .Gd-Mh-Nh-Kc:focus>.fe-Mh-Nh.fe-Mh-w>.fe-Mh-pg-Oc-Kc, .jf-po-Uf-po-Nh, .Re-Bn-Gf-v .Re-Bn-Gf-Oc-xg, .waffle-filterbox-menu .goog-menu-filter input, .dZoILe, .IzuY1c.A5Mhhd .ZWZruf
  {
    background: var(--bg-light);
  }

  .Nf-Er-Xr, .a-b-c.d-u.d-u-Q, .Nf-jg-Gd-oh, .Nf-nm-jg .Nf-Gd-Vo-Wo, .Gd-qf-eb, .Nf-mc-V, .Gd-qf-rf-sf.Gd-he-ie, .Nf-kh-tg-E, .Nf-eb.Nf-en.Nf-fn, .Nf-eb.Nf-Vm, .Nf-eb.Nf-en.Nf-Vo-Wo, body, .kf-oe-uj, .kf-Nk-Md, .kf-Nc-ob .a-u, .d-Rb, .Gd-Vg-Kc, .a-R-kb-u, .fjSJOb, .yawtRb, .BxNLed, .TNg8Ce, .iZJb2e, .jf-oe-Kc .jf-Jl .jf-Kl-Ll, .Gd-Mh-Kc, .Re-pk-Md
  {
    background: var(--bg-mid);
  }

  .kf-mc-V
  {
    background: grey;
  }

  .a-R-kb-u, .kf-oe-Kc, .gssb_e, .gssb_e, .gssb_m, .jf-Zk-Qc, .fe-Dh-Eh
  {
    background: var(--bg-mid) !important;
  }

  .Nf-qm-Md, .Nf-nm-jg .Nf-om-Zb-Md, .Nf-jg-Gd-oh .Nf-eb-Kc, .Nf-nm-jg .Nf-Gd-Vo-Wo .Nf-eb-Kc, .fFW7wc.XKSfm-Sx9Kwc.picker-dialog, .Nf-mc-rk, .a-b-c.a-R-kb-u.Nf-Zo-kb-u, .Nf-om-Zb-eb .Nf-kh-tg-Pi, .Aopndd, .Nf-Vm-Qc, .Nf-jg-Gd-oh .Nf-en-ok
  {
    border: 0;
  }

  .Nf-Ln-db-Df, img.d-u-x, .Nf-Zm-kh-oh.Nf-Gd-oh-Ni-u, .Nf-Zm-hh.Nf-Zo-kb-u-eb, .Nf-om-Zb-Og-f.Nf-Zm-Og-ce-Yn, .kf-jm-ce-Bg, .kf-xl-mn-Zg-Qe, .kf-jm-db-Ze, .kf-jm-mm-vg-u, .kf-Nc-ob-f, .kf-Cn-kb-u-eb, .kf-yl-pc-Zg-Xm, .jf-Ql-db-Ye, .jf-Ql-Tl-Ti-u, .jf-Ql-Rl-n-dh, .jf-Ql-lb-ae, .a-ub-T, .a-ub-f, .jf-dl-db-qb-fm-dh, .jf-Gd-vg-Gg-u, .jf-in-kb-u-eb, .jf-dl-Tm-Lf-Pe, .Re-bn-kb-u-eb, .Re-Id-jg-ug-u, .Re-Wk-Ki-ce-Wl, .Re-Kl-db-kk
  {
    filter: invert(1);
  }

  .Nf-nm-jg .Nf-om-Zb-Md, .kf-Kk-Bg .kf-Lk-Zb-Md, .kf-Ho-Gi-Ho-Hj, .kf-Lk-Bg .kf-Mk-Zb-Md, .kf-Io-Gi-Io-Hj, .jf-ok-If .jf-pk-Zb-Md, .jf-pk-If .jf-qk-Zb-Md
  {
    box-shadow: none;
  }

  .Gd-Wi-Vi-y, span.fe-Bg-Oc-tc, input.Nf-kn-Qc-qb.d-Rb.Nf-kn-Ro-Hk, span.Nf-Bg-mg-tg-Oc, .kf-fn-swf, .kf-Ho-Gi-cb, .kf-Ol-Ji, .kf-Hn-tc, .kf-Cl-zk, .Gd-Vg-Kc .Gd-Ti-Si-y, .kf-Mk-Zb-Ze-Yb-Fj .kf-Mk-Zb-Vl, .kf-mc-Tn, .kf-hg-Zg-Gi-Oc, .kf-hg-Zg-Gi-Pj, .kf-Pl-Ji, .kf-Io-Gi-cb, .jf-ar .jf-og-ub-Oc.jf-og-ub-Oc-hr, .jfvobd, .GWh4Ge .kx3Hed, .iXlbzd, .fjSJOb input.Ax4B8, .jf-En-Fn, .a-R-kb-u-mb, .jf-En-cn-Oc, .jf-il-bk, .Gd-Mh-Kc .Gd-Pg-Og-y, .fe-Mh-cb, .jf-Lh-Uf-cb, .jf-Lh-Uf-eb, .jf-Zk-ff, .m2 .freebirdFormviewerViewNavigationPasswordWarning, .jf-po-Uf-cb, .jf-Mm-swf, .Re-Bn-Cn, .Re-bg-tc, .Re-Bn-Zm-Oc, .Re-Fm-swf, .Re-Sk-bg, .Re-Sk-Qc, .Id-Ch-Kc .Id-zg-yg-y, .fe-Ch-ce .fe-eg-Oc-tc, .fe-Ch-cb, .Re-tf-Id-jg .Re-bl-Tj, .waffle-filterbox-menu .goog-menu-filter input, .IzuY1c .fjSJOb input.Ax4B8, .IzuY1c.A5Mhhd .fjSJOb input.Ax4B8, .Re-jk-Zb-kk-Yb-Ah .a-kk, .Re-jk-Zb-kk-Yb-Ah .a-kb-u, .Id-Dh-Kc .Id-Bg-Ag-y, .fe-Dh-ce .fe-eg-Oc-tc, .fe-Dh-cb
  {
    color: white;
  }

  .d-Rb, .Nf-mc-rk, .Nf-Vm-Qc
  {
    border-radius: 2px;
  }

  .fe-jh-cb, .fe-ce-f-Ae, .fe-jh-ce-f-Nj, .kf-Ho-Gi-Ho-Hj, .kf-Bg-Gd-bh, .kf-Kk-Bg .kf-Gd-wn-xn, .jf-rk-Md, .a-R-kb-u, .Re-lk-Od, .Re-Sk-Qc, .fe-Ch-Dh, .Re-mk-Od
  {
    background: var(--bg-dark);
  }

  .fe-jh-ce-f-Nj>.fe-ce-f-Ae
  {
    opacity: 1;
  }

  .Nf-Zm-pc-mg-xo
  {
    filter: brightness(5);
  }

  .kf-xl-Wg-bh, .kf-xl-Tg, .kf-Gd-bh-Ki-u, .kf-km-db-Ze, .Re-Bn-Zm-Pj .Re-al-db-qb-cm-Vg, .Re-Jl-db-jk, .Re-Xk-Zi-lg, .Re-Xk-rg
  {
    filter: invert(1);
  }

  .Nf-Bg-mg-tg-Pi, .kf-rr .kf-eb-Kc, .kf-Nk-Md, .kf-Kk-Bg .kf-Lk-Zb-Md, .kf-Ho-Gi-Ho-Hj, .kf-Ho-Gi, .fFW7wc.XKSfm-Sx9Kwc, .d-u-Q.d-u-v, .kf-tl-Qc, .fe-Vg-hg-O, .kf-mc-Rn, .kf-Bg-Gd-bh .kf-eb-Kc, .kf-Ok-Md, .kf-mc-Sn, .kf-Lk-Bg .kf-Mk-Zb-Md, .kf-hg-Zg-Gi-Mi, .kf-Io-Gi-Io-Hj, .jf-ok-If .jf-pk-Zb-Md, .jf-rk-Md, .jf-ar .jf-eb-Kc, .J0uOUd .TNg8Ce, .pGOlGd, .gssb_e, .d-Rb, .jf-qk-Md, .jf-ff-eb, .jf-If-Gd-vg .jf-eb-Kc, .jf-pk-If .jf-Gd-dn-en .jf-eb-Kc, .jf-pk-If .jf-qk-Zb-Md, .Re-pk-Md
  {
    border-color: var(--bg-mid);
  }

  .a-R-kb-u, .kf-Bg-Gd-bh .kf-Cl-zk
  {
    border-color: var(--bg-mid) !important;
  }

  .kf-mc-Tn
  {
    font-weight: bold;
  }

  .TNg8Ce .XoUIOc .focofd svg, .kZyufc svg, .yawtRb .vaAiZ svg, .yawtRb .Icoilb svg, .yawtRb .lVYtmc svg, .rltL4 svg, .A5Mhhd .rltL4 svg, .dddP9e .rltL4 svg, .d3jfOd svg, .A5Mhhd .d3jfOd svg, .dddP9e .d3jfOd svg, .I7ZCxe svg, .IzuY1c .I7ZCxe svg, .IzuY1c.A5Mhhd .I7ZCxe svg
  {
    fill: white;
  }

  .ndfHFb-jyrRxf-haAclf .ndfHFb-rBfmuc-E2o6qc-tJHJj, .ndfHFb-jyrRxf-tJHJj, .jf-sk-Md, .jf-Gn .jf-il, .jf-En-Uf-Oc-Ig, .jf-Cn-ff, .jf-En-cn, .jf-Cn-Eg, .jf-Cn-Md, .quantumWizMenuPaperselectEl.appsMaterialWizMenuPaperselectSelect.freebirdFormeditorThemeWidgetsFontSelect.freebirdFormeditorSidebarThemeFontSelect.noMaxWidth, .jf-Zk-Qc, .Re-zn-bg, .Re-Dn .Re-fl, .Re-Bn-Gf-Oc-xg, .Re-Bn-Zm, .Re-zn-tg, .Re-zn-Md, .Re-wf-u-ad .Re-nh-he-Np .Re-Fc-wf-Mp-wg, .Re-lk-Od, .Re-hk-tf .Re-ik-Zb-Od, .Re-Sk-Qc, .fe-Ch-Dh, .Id-Ch-Dh-Kg-I-Rh, .Re-tf-Id-jg .Re-eb-Kc, .Re-hk-tf .Re-Id-Wm-Xm .Re-eb-Kc, .fe-Ch-Dh.fe-Ch-ce, .Re-tf-Id-jg .Re-bl-Tj, .fe-Dh-Eh.fe-Dh-ce, .Re-mk-Od, .Re-tf-Id-lg .Re-eb-Kc, .Re-ik-tf .Re-Id-Xm-Ym .Re-eb-Kc, .Re-ik-tf .Re-jk-Zb-Od,.fe-Dh-Eh, .Re-wf-u-ad .Re-oh-he-Op .Re-Fc-wf-Np-yg
  {
    border-color: var(--bg-dark);
  }

  .jf-po-Uf-po-Nh, .jf-po-Uf, .waffle-filterbox-menu .goog-menu-filter input, .IzuY1c.A5Mhhd .ZWZruf
  {
    border-color: var(--bg-light);
  }

  .jf-ol-Qc .a-b-c.d-u.d-u-F
  {
    display: none;
  }

  .jf-En-cn-Uj, .Re-Bn-Zm-Pj
  {
    background: transparent;
  }

  .jf-po-Uf-po-Nh, .Re-hk-tf .Re-ik-Zb-Od, .Re-ik-tf .Re-jk-Zb-Od
  {
    box-shadow: none;
  }
}
`)