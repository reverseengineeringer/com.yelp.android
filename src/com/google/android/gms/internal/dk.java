package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@ey
public class dk
{
  private final boolean rs;
  private final boolean rt;
  private final boolean ru;
  private final boolean rv;
  private final boolean rw;
  
  private dk(dk.a parama)
  {
    rs = dk.a.a(parama);
    rt = dk.a.b(parama);
    ru = dk.a.c(parama);
    rv = dk.a.d(parama);
    rw = dk.a.e(parama);
  }
  
  public JSONObject toJson()
  {
    try
    {
      JSONObject localJSONObject = new JSONObject().put("sms", rs).put("tel", rt).put("calendar", ru).put("storePicture", rv).put("inlineVideo", rw);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      gr.b("Error occured while obtaining the MRAID capabilities.", localJSONException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */