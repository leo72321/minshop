import { common } from './common.ts';
import { storefront } from './storefront.ts';
import { cart } from './cart.ts';
import { checkout } from './checkout.ts';
import { order } from './order.ts';
import { account } from './account.ts';
import { email } from './email.ts';
import { admin } from './admin.ts';
import { adminProducts } from './adminProducts.ts';
import { catalog } from './catalog.ts';
import { adminOrders } from './adminOrders.ts';
import { adminContent } from './adminContent.ts';
import { settingsGeneral } from './settingsGeneral.ts';
import { settingsShipping } from './settingsShipping.ts';

/** Complete Traditional Chinese (Taiwan) catalog. No runtime English fallback intended. */
export const zhTW = {
  ...common,
  ...storefront,
  ...cart,
  ...checkout,
  ...order,
  ...account,
  ...email,
  ...admin,
  ...adminProducts,
  ...catalog,
  ...adminOrders,
  ...adminContent,
  ...settingsGeneral,
  ...settingsShipping,
};
