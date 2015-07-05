package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.parcelgen.JsonParser;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import org.json.JSONObject;

public class p<Result>
  extends g<Void, Void, Result>
{
  private JsonParser<Result> a;
  
  public p(ApiRequest.RequestType paramRequestType, String paramString, Map<String, String> paramMap, m<Result> paramm, JsonParser<Result> paramJsonParser)
  {
    super(paramRequestType, paramString, paramm);
    a = paramJsonParser;
    paramRequestType = paramMap.entrySet().iterator();
    while (paramRequestType.hasNext())
    {
      paramString = (Map.Entry)paramRequestType.next();
      addUrlParam((String)paramString.getKey(), (String)paramString.getValue());
    }
  }
  
  public p(String paramString, Map<String, String> paramMap, m<Result> paramm, JsonParser<Result> paramJsonParser)
  {
    this(ApiRequest.RequestType.GET, paramString, paramMap, paramm, paramJsonParser);
  }
  
  public Result process(JSONObject paramJSONObject)
  {
    return (Result)a.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */