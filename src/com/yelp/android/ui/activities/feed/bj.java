package com.yelp.android.ui.activities.feed;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.TextView;
import com.yelp.android.util.StringUtils;

class bj
  implements CompoundButton.OnCheckedChangeListener
{
  bj(bi parambi, bg parambg) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    bi localbi = b;
    int i;
    if (paramBoolean)
    {
      i = bi.a(b) + 1;
      bi.a(localbi, i);
      if (bi.a(b) <= 0) {
        break label115;
      }
      bi.b(b).setText(StringUtils.a(paramCompoundButton.getContext(), 2131623996, bi.a(b), new Object[0]));
      bi.b(b).setVisibility(0);
    }
    for (;;)
    {
      bg.a(b.a).a(paramBoolean, bi.c(b));
      return;
      i = bi.a(b) - 1;
      break;
      label115:
      bi.b(b).setVisibility(4);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */