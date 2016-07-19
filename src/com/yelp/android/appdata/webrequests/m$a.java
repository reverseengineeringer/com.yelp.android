package com.yelp.android.appdata.webrequests;

import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class m$a<E extends Parcelable>
  extends JsonParser<List<E>>
{
  private final String a;
  private final JsonParser<E> b;
  
  public m$a(String paramString, JsonParser<E> paramJsonParser)
  {
    a = paramString;
    b = paramJsonParser;
  }
  
  public List<E> a(JSONObject paramJSONObject)
    throws JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray(a), b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.m.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */