package com.google.android.gms.tagmanager;

import java.util.Arrays;

final class DataLayer$a
{
  public final String KP;
  public final Object wF;
  
  DataLayer$a(String paramString, Object paramObject)
  {
    KP = paramString;
    wF = paramObject;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof a)) {}
    do
    {
      return false;
      paramObject = (a)paramObject;
    } while ((!KP.equals(KP)) || (!wF.equals(wF)));
    return true;
  }
  
  public int hashCode()
  {
    return Arrays.hashCode(new Integer[] { Integer.valueOf(KP.hashCode()), Integer.valueOf(wF.hashCode()) });
  }
  
  public String toString()
  {
    return "Key: " + KP + " value: " + wF.toString();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.DataLayer.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */