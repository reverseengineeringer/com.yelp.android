package com.google.android.gms.tagmanager;

import java.util.Arrays;

class v$b
{
  final String KP;
  final byte[] arj;
  
  v$b(String paramString, byte[] paramArrayOfByte)
  {
    KP = paramString;
    arj = paramArrayOfByte;
  }
  
  public String toString()
  {
    return "KeyAndSerialized: key = " + KP + " serialized hash = " + Arrays.hashCode(arj);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.v.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */