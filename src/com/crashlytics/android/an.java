package com.crashlytics.android;

import android.os.Process;
import com.crashlytics.android.internal.bd;
import com.crashlytics.android.internal.bo;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicLong;

final class an
{
  private static final AtomicLong a = new AtomicLong(0L);
  private static String b;
  
  public an(bo parambo)
  {
    long l1 = new Date().getTime();
    long l2 = l1 / 1000L;
    Object localObject = ByteBuffer.allocate(4);
    ((ByteBuffer)localObject).putInt((int)l2);
    ((ByteBuffer)localObject).order(ByteOrder.BIG_ENDIAN);
    ((ByteBuffer)localObject).position(0);
    localObject = ((ByteBuffer)localObject).array();
    int i = localObject[0];
    int j = localObject[1];
    int k = localObject[2];
    int m = localObject[3];
    localObject = a(l1 % 1000L);
    int n = localObject[0];
    int i1 = localObject[1];
    localObject = a(a.incrementAndGet());
    int i2 = localObject[0];
    int i3 = localObject[1];
    localObject = a(Integer.valueOf(Process.myPid()).shortValue());
    int i4 = localObject[0];
    int i5 = localObject[1];
    parambo = bd.a(parambo.b());
    localObject = bd.a(new byte[] { i, j, k, m, n, i1, i2, i3, i4, i5 });
    b = String.format(Locale.US, "%s-%s-%s-%s", new Object[] { ((String)localObject).substring(0, 12), ((String)localObject).substring(12, 16), ((String)localObject).subSequence(16, 20), parambo.substring(0, 12) }).toUpperCase(Locale.US);
  }
  
  private static byte[] a(long paramLong)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(2);
    localByteBuffer.putShort((short)(int)paramLong);
    localByteBuffer.order(ByteOrder.BIG_ENDIAN);
    localByteBuffer.position(0);
    return localByteBuffer.array();
  }
  
  public final String toString()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */