package com.yelp.android.appdata.webrequests;

import android.os.Parcelable;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.parcelgen.JsonParser;
import com.yelp.parcelgen.JsonUtil;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class m<Result>
  extends b<Void, Void, Result>
{
  private JsonParser<Result> a;
  
  public m(ApiRequest.RequestType paramRequestType, String paramString, Map<String, String> paramMap, ApiRequest.b<Result> paramb, JsonParser<Result> paramJsonParser)
  {
    super(paramRequestType, paramString, paramb);
    a = paramJsonParser;
    paramRequestType = paramMap.entrySet().iterator();
    while (paramRequestType.hasNext())
    {
      paramString = (Map.Entry)paramRequestType.next();
      a((String)paramString.getKey(), (String)paramString.getValue());
    }
  }
  
  public m(String paramString, Map<String, String> paramMap, ApiRequest.b<Result> paramb, JsonParser<Result> paramJsonParser)
  {
    this(ApiRequest.RequestType.GET, paramString, paramMap, paramb, paramJsonParser);
  }
  
  public Result b(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Result)a.parse(paramJSONObject);
  }
  
  public static class a<E extends Parcelable>
    extends JsonParser<List<E>>
  {
    private final String a;
    private final JsonParser<E> b;
    
    public a(String paramString, JsonParser<E> paramJsonParser)
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
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */