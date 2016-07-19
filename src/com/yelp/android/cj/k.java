package com.yelp.android.cj;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.activities.settings.PreferenceView;

public class k
  implements i
{
  private final i a;
  private final co b;
  
  public k()
  {
    this(AppData.b().q(), new k.1());
  }
  
  public k(co paramco, i parami)
  {
    a = parami;
    b = paramco;
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    if (((paramPreferenceView.b()) && (!b.b())) || ((paramPreferenceView.c()) && (b.b())))
    {
      paramPreferenceView.setVisibility(8);
      return;
    }
    a.a(paramPreferenceView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cj.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */