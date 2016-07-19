package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.FavoritesList;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class bw
  extends b<Void, Void, FavoritesList>
{
  private int a;
  private String g;
  
  public bw(String paramString, int paramInt, ApiRequest.b paramb)
  {
    super(ApiRequest.RequestType.GET, "/favorites_list", paramb);
    a("list_id", paramString);
    a("limit", 5);
    a("offset", paramInt);
    a = paramInt;
    g = paramString;
  }
  
  public bw(String paramString, ApiRequest.b paramb)
  {
    this(paramString, 0, paramb);
  }
  
  public FavoritesList a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (FavoritesList)FavoritesList.CREATOR.parse(paramJSONObject.getJSONObject("favorites_list"));
  }
  
  public void a(FavoritesList paramFavoritesList)
  {
    super.b(paramFavoritesList);
    a += 5;
  }
  
  public bw b()
  {
    bw localbw = new bw(g, a, n());
    localbw.f(new Void[0]);
    return localbw;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */