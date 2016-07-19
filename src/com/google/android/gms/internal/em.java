package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@fv
public class em
{
  private final boolean a;
  private final boolean b;
  private final boolean c;
  private final boolean d;
  private final boolean e;
  
  private em(a parama)
  {
    a = a.a(parama);
    b = a.b(parama);
    c = a.c(parama);
    d = a.d(parama);
    e = a.e(parama);
  }
  
  public JSONObject a()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("sms", a).put("tel", b).put("calendar", c).put("storePicture", d).put("inlineVideo", e);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      gz.b("Error occured while obtaining the MRAID capabilities.", localJSONException);
    }
    return null;
  }
  
  public static final class a
  {
    private boolean a;
    private boolean b;
    private boolean c;
    private boolean d;
    private boolean e;
    
    public a a(boolean paramBoolean)
    {
      a = paramBoolean;
      return this;
    }
    
    public em a()
    {
      return new em(this, null);
    }
    
    public a b(boolean paramBoolean)
    {
      b = paramBoolean;
      return this;
    }
    
    public a c(boolean paramBoolean)
    {
      c = paramBoolean;
      return this;
    }
    
    public a d(boolean paramBoolean)
    {
      d = paramBoolean;
      return this;
    }
    
    public a e(boolean paramBoolean)
    {
      e = paramBoolean;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */