package com.google.android.gms.internal;

import org.json.JSONException;
import org.json.JSONObject;

@ey
public class bv
{
  private u pM;
  private ah pN;
  private JSONObject pO;
  
  public bv(u paramu, ah paramah, JSONObject paramJSONObject)
  {
    pM = paramu;
    pN = paramah;
    pO = paramJSONObject;
  }
  
  public void aw()
  {
    pM.an();
  }
  
  public void b(String paramString, int paramInt)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("asset", paramInt);
      localJSONObject.put("template", paramString);
      paramString = new JSONObject();
      paramString.put("ad", pO);
      paramString.put("click", localJSONObject);
      pN.a("google.afma.nativeAds.handleClick", paramString);
      return;
    }
    catch (JSONException paramString)
    {
      gr.b("Unable to create click JSON.", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */