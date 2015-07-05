package com.crashlytics.android;

import com.crashlytics.android.internal.bt;
import java.io.InputStream;

final class be
  implements bt
{
  be(bb parambb, byte[] paramArrayOfByte, int[] paramArrayOfInt) {}
  
  public final void a(InputStream paramInputStream, int paramInt)
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
 * Qualified Name:     com.crashlytics.android.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */