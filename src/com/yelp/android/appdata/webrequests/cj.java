package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedback;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class cj
  extends b<Void, Void, a>
{
  public cj(ApiRequest.b<a> paramb, String paramString)
  {
    super(ApiRequest.RequestType.GET, "quicktips/list_feedbacks", paramb);
    a("quicktip_id", paramString);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), TipFeedback.CREATOR), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("compliments"), Compliment.CREATOR), (Tip)Tip.CREATOR.parse(paramJSONObject.getJSONObject("quicktip")));
  }
  
  public class a
  {
    public final ArrayList<TipFeedback> a;
    public final ArrayList<Compliment> b;
    public final Tip c;
    
    public a(ArrayList<Compliment> paramArrayList, Tip paramTip)
    {
      a = paramArrayList;
      b = paramTip;
      Tip localTip;
      c = localTip;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */