package com.crashlytics.android.core;

import io.fabric.sdk.android.services.common.n.c;
import java.io.IOException;
import java.io.InputStream;

class t$1
  implements n.c
{
  t$1(t paramt, byte[] paramArrayOfByte, int[] paramArrayOfInt) {}
  
  public void a(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    try
    {
      paramInputStream.read(a, b[0], paramInt);
      int[] arrayOfInt = b;
      arrayOfInt[0] += paramInt;
      return;
    }
    finally
    {
      paramInputStream.close();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.t.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */