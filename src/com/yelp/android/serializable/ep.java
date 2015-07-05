package com.yelp.android.serializable;

import org.json.JSONObject;

public class ep
{
  private JSONObject a;
  
  public ep(JSONObject paramJSONObject)
  {
    a = paramJSONObject;
  }
  
  public String a()
  {
    return en.a("text", a);
  }
  
  public int b()
  {
    return en.b("code", a);
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(512);
    localStringBuilder.append("YelpResponseMessage:\n");
    localStringBuilder.append("  Code: ");
    localStringBuilder.append(b());
    localStringBuilder.append("\n");
    localStringBuilder.append("  Text: ");
    localStringBuilder.append(a());
    localStringBuilder.append("\n");
    return localStringBuilder.toString();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ep
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */