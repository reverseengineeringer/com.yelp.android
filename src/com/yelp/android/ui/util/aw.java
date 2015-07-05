package com.yelp.android.ui.util;

import android.content.Context;
import android.location.Location;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.db;
import com.yelp.android.appdata.webrequests.fy;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class aw<T>
  extends bz<T>
{
  public aw(List<CharSequence> paramList, ArrayList<CharSequence> paramArrayList1, ArrayList<CharSequence> paramArrayList2, boolean paramBoolean1, boolean paramBoolean2, cc<T> paramcc)
  {
    super(paramList, paramArrayList1, paramArrayList2, paramBoolean1, false, paramBoolean2, paramcc);
  }
  
  protected fy a(String paramString1, m<List<T>> paramm, Location paramLocation, String paramString2)
  {
    return new db(paramString1, paramLocation, paramm);
  }
  
  protected void a(Context paramContext, HashMap<String, Object> paramHashMap)
  {
    AppData.b().k().a(EventIri.SearchBarSuggestLocation, paramHashMap);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */