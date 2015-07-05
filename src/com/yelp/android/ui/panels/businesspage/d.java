package com.yelp.android.ui.panels.businesspage;

import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.ap;
import java.util.Map;

class d
  implements ap
{
  d(b paramb) {}
  
  public void a(TwoTierButton paramTwoTierButton, int[] paramArrayOfInt)
  {
    int j = paramArrayOfInt.length;
    int i = 0;
    while (i < j)
    {
      if (paramArrayOfInt[i] == 16842919)
      {
        b.a(a, (int[])b.b(a).get(paramTwoTierButton));
        return;
      }
      i += 1;
    }
    b.b(a, (int[])b.b(a).get(paramTwoTierButton));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.businesspage.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */