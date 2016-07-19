package com.google.android.gms.internal;

import java.security.MessageDigest;

@fv
public class ae
  extends ab
{
  private MessageDigest b;
  
  byte a(int paramInt)
  {
    return (byte)(paramInt & 0xFF ^ (0xFF00 & paramInt) >> 8 ^ (0xFF0000 & paramInt) >> 16 ^ (0xFF000000 & paramInt) >> 24);
  }
  
  public byte[] a(String arg1)
  {
    byte[] arrayOfByte1 = a(???.split(" "));
    b = a();
    for (;;)
    {
      synchronized (a)
      {
        if (b == null) {
          return new byte[0];
        }
        b.reset();
        b.update(arrayOfByte1);
        arrayOfByte1 = b.digest();
        i = 4;
        if (arrayOfByte1.length > 4)
        {
          byte[] arrayOfByte2 = new byte[i];
          System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, arrayOfByte2.length);
          return arrayOfByte2;
        }
      }
      int i = localObject.length;
    }
  }
  
  byte[] a(String[] paramArrayOfString)
  {
    byte[] arrayOfByte = new byte[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfByte[i] = a(ad.a(paramArrayOfString[i]));
      i += 1;
    }
    return arrayOfByte;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */