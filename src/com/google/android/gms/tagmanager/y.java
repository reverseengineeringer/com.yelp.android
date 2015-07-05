package com.google.android.gms.tagmanager;

import android.content.Context;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

class y
  implements aq
{
  private static y arl;
  private static final Object xO = new Object();
  private cg aqC;
  private String arm;
  private String arn;
  private ar aro;
  
  private y(Context paramContext)
  {
    this(as.Z(paramContext), new cw());
  }
  
  y(ar paramar, cg paramcg)
  {
    aro = paramar;
    aqC = paramcg;
  }
  
  public static aq X(Context paramContext)
  {
    synchronized (xO)
    {
      if (arl == null) {
        arl = new y(paramContext);
      }
      paramContext = arl;
      return paramContext;
    }
  }
  
  public boolean cB(String paramString)
  {
    if (!aqC.fe())
    {
      bh.W("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
      return false;
    }
    String str = paramString;
    if (arm != null)
    {
      str = paramString;
      if (arn == null) {}
    }
    try
    {
      str = arm + "?" + arn + "=" + URLEncoder.encode(paramString, "UTF-8");
      bh.V("Sending wrapped url hit: " + str);
      aro.cE(str);
      return true;
    }
    catch (UnsupportedEncodingException paramString)
    {
      bh.d("Error wrapping URL for testing.", paramString);
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */