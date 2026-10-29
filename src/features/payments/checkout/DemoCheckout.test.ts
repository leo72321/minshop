import { expect, it } from 'vitest';
import { experimental_AstroContainer as AstroContainer } from 'astro/container';
import { getConfig } from '../../../config';
import { createI18n } from '../../../i18n/core';
import DemoCheckout from './DemoCheckout.astro';

const pending = {
  amount_total_cents: 1200,
  currency: 'twd',
  shipping_cents: 0,
  items: '[]',
  email: null,
};

it('shows the runtime store name and falls back to the configured name', async () => {
  const container = await AstroContainer.create();
  const renamed = await container.renderToString(DemoCheckout, {
    props: { pending, storeName: '台灣測試商店' },
    locals: { i18n: createI18n('zh-TW') },
  });
  expect(renamed).toContain('台灣測試商店');
  expect(await container.renderToString(DemoCheckout, {
    props: { pending },
    locals: { i18n: createI18n('zh-TW') },
  })).toContain(getConfig().storeName);
});

it('keeps the submitted email visible after a declined demo payment', async () => {
  const container = await AstroContainer.create();
  const html = await container.renderToString(DemoCheckout, {
    props: {
      pending: { ...pending, email: 'previous@example.invalid' },
      declined: '付款失敗',
      email: 'edited@example.invalid',
    },
    locals: { i18n: createI18n('zh-TW') },
  });
  expect(html).toContain('value="edited@example.invalid"');
  expect(html).not.toContain('value="previous@example.invalid"');
});
