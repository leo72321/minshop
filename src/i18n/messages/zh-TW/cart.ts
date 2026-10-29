import type { Catalog } from '../../core';

/** Traditional Chinese (Taiwan) — cart. */
export const cart = {
  "cart.page.title": "購物車",
  "cart.page.heading": "我的購物車",
  "cart.page.empty": "購物車目前是空的。",
  "cart.page.continueShopping": "繼續購物",
  "cart.line.each": "每件 {price}",
  "cart.line.outOfStock": "缺貨",
  "cart.line.onlyAvailable": {"other":"目前只剩 {count} 件"},
  "cart.line.quantity": "數量",
  "cart.line.update": "更新",
  "cart.line.remove": "移除",
  "cart.summary.subtotal": "商品小計",
  "cart.summary.unavailable": "目前無法結帳。",
  "cart.summary.shipTo": "寄送至",
  "cart.summary.setUp": "設定",
  "cart.drawer.checkout": "前往結帳",
  "cart.drawer.viewFullCart": "查看完整購物車",
  "cart.error.chooseVariant": "請選擇{label}。",
  "cart.error.variantFallback": "商品選項",
} satisfies Catalog;
