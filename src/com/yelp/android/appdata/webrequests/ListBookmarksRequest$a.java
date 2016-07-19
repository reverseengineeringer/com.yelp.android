package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.YelpBookmark;
import com.yelp.android.serializable.YelpBusiness;
import java.util.ArrayList;
import java.util.List;

public final class ListBookmarksRequest$a
{
  public final List<YelpBookmark> a;
  public final ArrayList<YelpBusiness> b;
  public final MapSpan c;
  public final int d;
  
  public ListBookmarksRequest$a(List<YelpBookmark> paramList, ArrayList<YelpBusiness> paramArrayList, MapSpan paramMapSpan, int paramInt)
  {
    a = paramList;
    b = paramArrayList;
    d = paramInt;
    c = paramMapSpan;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ListBookmarksRequest.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */