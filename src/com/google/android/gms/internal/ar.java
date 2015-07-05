package com.google.android.gms.internal;

import java.security.MessageDigest;

public class ar
  extends ao
{
  private MessageDigest nZ;
  
  byte[] a(String[] paramArrayOfString)
  {
    byte[] arrayOfByte = new byte[paramArrayOfString.length];
    int i = 0;
    while (i < paramArrayOfString.length)
    {
      arrayOfByte[i] = e(aq.o(paramArrayOfString[i]));
      i += 1;
    }
    return arrayOfByte;
  }
  
  byte e(int paramInt)
  {
    return (byte)(paramInt & 0xFF ^ (0xFF00 & paramInt) >> 8 ^ (0xFF0000 & paramInt) >> 16 ^ (0xFF000000 & paramInt) >> 24);
  }
  
  public byte[] l(String arg1)
  {
    byte[] arrayOfByte1 = a(???.split(" "));
    nZ = bf();
    for (;;)
    {
      synchronized (mH)
      {
        if (nZ == null) {
          return new byte[0];
        }
        nZ.reset();
        nZ.update(arrayOfByte1);
        arrayOfByte1 = nZ.digest();
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */