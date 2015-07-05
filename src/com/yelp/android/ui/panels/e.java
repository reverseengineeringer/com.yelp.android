package com.yelp.android.ui.panels;

import android.view.animation.Animation;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.util.dd;

class e
  extends dd
{
  e(BizAttributePanel paramBizAttributePanel) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    super.onAnimationEnd(paramAnimation);
    BizAttributePanel.b(a, false);
    a.postDelayed(BizAttributePanel.a(a), cw.a);
  }
  
  public void onAnimationStart(Animation paramAnimation)
  {
    super.onAnimationStart(paramAnimation);
    BizAttributePanel.b(a).a(false);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */