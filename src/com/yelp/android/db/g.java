package com.yelp.android.db;

import java.util.Arrays;

public class g
{
  public final int a;
  public final long b;
  public final String c;
  public final String[] d;
  
  public g(int paramInt, long paramLong, String paramString, String... paramVarArgs)
  {
    a = paramInt;
    b = paramLong;
    c = paramString;
    d = paramVarArgs;
  }
  
  public String toString()
  {
    return "PostEventResult [version=" + a + ", timestamp=" + b + ", messageId=" + c + ", failedMids=" + Arrays.toString(d) + "]";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.db.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */