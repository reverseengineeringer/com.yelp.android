package com.yelp.android.db;

public class i
{
  public final String a;
  public final long b;
  public final String c;
  public final boolean d;
  
  i(String paramString1, long paramLong, String paramString2, boolean paramBoolean)
  {
    a = paramString1;
    b = paramLong;
    c = paramString2;
    d = paramBoolean;
  }
  
  public static final i a(String paramString)
  {
    return new i(paramString, -1L, null, false);
  }
  
  public static final i a(String paramString1, long paramLong, String paramString2)
  {
    return new i(paramString1, paramLong, paramString2, true);
  }
  
  public String toString()
  {
    return "RequestToken [requestToken=" + a + ", expire=" + b + ", refleshToken=" + c + ", isFromWebLogin=" + d + "]";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.db.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */