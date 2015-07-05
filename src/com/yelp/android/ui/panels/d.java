package com.yelp.android.ui.panels;

import android.view.animation.Animation;
import com.yelp.android.ui.util.dd;

class d
  extends dd
{
  d(BizAttributePanel paramBizAttributePanel) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    BizAttributePanel.b(a).a(true);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    BizAttributePanel.b(a).a(false);
    BizAttributePanel.b(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */