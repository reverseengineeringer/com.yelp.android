package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import org.json.JSONException;
import org.json.JSONObject;

public class by
  extends b<Void, Void, a>
{
  private final int a;
  private Date g;
  private final Date h;
  
  public by(ApiRequest.b<a> paramb, YelpBusiness paramYelpBusiness, Date paramDate, int paramInt, String paramString) {}
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("times"), Reservation.CREATOR);
    Iterator localIterator = paramJSONObject.iterator();
    while (localIterator.hasNext()) {
      ((Reservation)localIterator.next()).a(a);
    }
    Collections.sort(paramJSONObject);
    return new a(g, paramJSONObject);
  }
  
  public Date b()
  {
    return g;
  }
  
  public static class a
  {
    final Date a;
    final ArrayList<Reservation> b;
    
    public a(Date paramDate, ArrayList<Reservation> paramArrayList)
    {
      a = paramDate;
      b = paramArrayList;
    }
    
    public Date a()
    {
      return a;
    }
    
    public ArrayList<Reservation> b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */