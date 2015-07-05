package com.yelp.android.ui.util;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.fk;
import com.yelp.android.appdata.webrequests.fy;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class bj<T>
  extends bz<T>
{
  public bj(List<CharSequence> paramList, ArrayList<CharSequence> paramArrayList1, ArrayList<CharSequence> paramArrayList2, boolean paramBoolean1, boolean paramBoolean2, cc<T> paramcc)
  {
    super(paramList, paramArrayList1, paramArrayList2, paramBoolean1, true, paramBoolean2, paramcc);
  }
  
  protected ViewIri a()
  {
    return ViewIri.SearchBarSuggestRichDisplay;
  }
  
  protected fy<T> a(String paramString1, m<List<T>> paramm, Location paramLocation, String paramString2)
  {
    if (paramLocation != null) {
      return new fk(paramString1, d(), paramLocation, paramString2, paramm);
    }
    return new fk(paramString1, d(), paramm);
  }
  
  protected void a(Context paramContext, HashMap<String, Object> paramHashMap)
  {
    AppData.b().k().a(EventIri.SearchBarSuggestRich, paramHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */