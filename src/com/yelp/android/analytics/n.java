package com.yelp.android.analytics;

import android.net.Uri;
import com.yelp.android.util.StringUtils;
import org.json.JSONException;
import org.json.JSONObject;

public class n
  extends b
{
  private final Uri a;
  
  public n(Uri paramUri)
  {
    if (paramUri == null) {
      throw new IllegalArgumentException("Url cannot be null.");
    }
    a = Uri.parse(StringUtils.b(paramUri.toString()));
  }
  
  public JSONObject c()
    throws JSONException
  {
    JSONObject localJSONObject1 = super.c();
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.put("url", String.valueOf(a));
    localJSONObject1.put("launch", localJSONObject2);
    return localJSONObject1;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(300);
    localStringBuilder.append("[LaunchAnalytic:");
    localStringBuilder.append("index=").append(b());
    localStringBuilder.append(", ");
    localStringBuilder.append("start=").append(a());
    localStringBuilder.append("url=").append(a);
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */