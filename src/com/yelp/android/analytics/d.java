package com.yelp.android.analytics;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import java.util.Collections;
import java.util.Map;

public abstract class d
  implements View.OnClickListener
{
  private final EventIri a;
  private final Map<String, Object> b;
  
  public d(EventIri paramEventIri)
  {
    this(paramEventIri, Collections.emptyMap());
  }
  
  public d(EventIri paramEventIri, Map<String, Object> paramMap)
  {
    a = paramEventIri;
    b = paramMap;
  }
  
  public abstract void a(View paramView);
  
  public final void onClick(View paramView)
  {
    AppData.b().k().a(a, b);
    a(paramView);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */