package com.yelp.android.ui.activities.deals;

import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.s;

final class ae
  implements s
{
  public final s[] a;
  
  public ae(s... paramVarArgs)
  {
    a = paramVarArgs;
  }
  
  public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
  {
    s[] arrayOfs = a;
    int j = arrayOfs.length;
    int i = 0;
    while (i < j)
    {
      arrayOfs[i].a(paramInt, paramQuantityDropDownView);
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */