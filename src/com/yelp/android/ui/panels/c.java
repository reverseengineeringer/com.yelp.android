package com.yelp.android.ui.panels;

import android.view.View;
import android.view.View.OnClickListener;

class c
  implements View.OnClickListener
{
  c(BizAttributePanel paramBizAttributePanel) {}
  
  public void onClick(View paramView)
  {
    if (!a.b())
    {
      a.removeCallbacks(BizAttributePanel.a(a));
      BizAttributePanel.a(a, false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */