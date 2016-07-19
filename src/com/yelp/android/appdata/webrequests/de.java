package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import java.util.Map;
import org.json.JSONObject;

public class de
  extends c
{
  public de(Map<String, Integer> paramMap, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "preferences/save", parama);
    b("values", new JSONObject(paramMap).toString());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.de
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */