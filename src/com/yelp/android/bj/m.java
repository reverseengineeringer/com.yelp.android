package com.yelp.android.bj;

public final class m
{
  public static byte a(Boolean paramBoolean)
  {
    if (paramBoolean != null)
    {
      if (paramBoolean.booleanValue()) {
        return 1;
      }
      return 0;
    }
    return -1;
  }
  
  public static Boolean a(byte paramByte)
  {
    switch (paramByte)
    {
    default: 
      return null;
    case 1: 
      return Boolean.TRUE;
    }
    return Boolean.FALSE;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bj.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */