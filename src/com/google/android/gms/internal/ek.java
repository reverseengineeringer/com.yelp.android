package com.google.android.gms.internal;

import android.content.Intent;

@ey
public class ek
{
  private final String oK;
  
  public ek(String paramString)
  {
    oK = paramString;
  }
  
  public boolean a(String paramString, int paramInt, Intent paramIntent)
  {
    if ((paramString == null) || (paramIntent == null)) {}
    String str;
    do
    {
      return false;
      str = ei.e(paramIntent);
      paramIntent = ei.f(paramIntent);
    } while ((str == null) || (paramIntent == null));
    if (!paramString.equals(ei.D(str)))
    {
      gr.W("Developer payload not match.");
      return false;
    }
    if ((oK != null) && (!el.b(oK, str, paramIntent)))
    {
      gr.W("Fail to verify signature.");
      return false;
    }
    return true;
  }
  
  public String cC()
  {
    return gi.dx();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ek
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */