package com.yelp.android.appdata.webrequests;

import android.util.Pair;
import com.yelp.android.av.g;
import com.yelp.android.util.f;
import java.util.LinkedList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class hc
  extends g<Void, Void, hd>
{
  public hc(String paramString1, String paramString2)
  {
    super(ApiRequest.RequestType.POST, "/business/video/upload_url_with_headers", null);
    addPostParam("biz_id", paramString1);
    addPostParam("md5_hash", f.a(paramString2));
  }
  
  public hd a(JSONObject paramJSONObject)
  {
    String str1 = paramJSONObject.optString("upload_url", null);
    String str2 = paramJSONObject.getString("video_id");
    LinkedList localLinkedList = new LinkedList();
    paramJSONObject = paramJSONObject.getJSONObject("http_headers");
    JSONArray localJSONArray = paramJSONObject.names();
    int i = 0;
    while (i < localJSONArray.length())
    {
      String str3 = (String)localJSONArray.get(i);
      localLinkedList.add(new Pair(str3, paramJSONObject.getString(str3)));
      i += 1;
    }
    return new hd(str1, str2, localLinkedList);
  }
  
  protected void a(hd paramhd) {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */