package com.crashlytics.android.internal;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class bp
  implements Closeable
{
  private static final Logger a = Logger.getLogger(bp.class.getName());
  private final RandomAccessFile b;
  private int c;
  private int d;
  private br e;
  private br f;
  private final byte[] g = new byte[16];
  
  public bp(File paramFile)
  {
    if (!paramFile.exists())
    {
      File localFile = new File(paramFile.getPath() + ".tmp");
      RandomAccessFile localRandomAccessFile = a(localFile);
      try
      {
        localRandomAccessFile.setLength(4096L);
        localRandomAccessFile.seek(0L);
        byte[] arrayOfByte = new byte[16];
        a(arrayOfByte, new int[] { 4096, 0, 0, 0 });
        localRandomAccessFile.write(arrayOfByte);
        localRandomAccessFile.close();
        if (!localFile.renameTo(paramFile)) {
          throw new IOException("Rename failed!");
        }
      }
      finally
      {
        localRandomAccessFile.close();
      }
    }
    b = a(paramFile);
    b.seek(0L);
    b.readFully(g);
    c = a(g, 0);
    if (c > b.length()) {
      throw new IOException("File is truncated. Expected length: " + c + ", Actual length: " + b.length());
    }
    d = a(g, 4);
    int i = a(g, 8);
    int j = a(g, 12);
    e = a(i);
    f = a(j);
  }
  
  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }
  
  private br a(int paramInt)
  {
    if (paramInt == 0) {
      return br.a;
    }
    b.seek(paramInt);
    return new br(paramInt, b.readInt());
  }
  
  private static RandomAccessFile a(File paramFile)
  {
    return new RandomAccessFile(paramFile, "rwd");
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a(g, new int[] { paramInt1, paramInt2, paramInt3, paramInt4 });
    b.seek(0L);
    b.write(g);
  }
  
  private void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt3 <= c)
    {
      b.seek(paramInt1);
      b.write(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = c - paramInt1;
    b.seek(paramInt1);
    b.write(paramArrayOfByte, paramInt2, i);
    b.seek(16L);
    b.write(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private static void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = (paramInt2 >> 24);
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)paramInt2);
  }
  
  private static void a(byte[] paramArrayOfByte, int... paramVarArgs)
  {
    int i = 0;
    int k = paramVarArgs.length;
    int j = 0;
    while (i < k)
    {
      a(paramArrayOfByte, j, paramVarArgs[i]);
      j += 4;
      i += 1;
    }
  }
  
  private int b(int paramInt)
  {
    if (paramInt < c) {
      return paramInt;
    }
    return paramInt + 16 - c;
  }
  
  private static <T> T b(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  private void b(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt3 <= c)
    {
      b.seek(paramInt1);
      b.readFully(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = c - paramInt1;
    b.seek(paramInt1);
    b.readFully(paramArrayOfByte, paramInt2, i);
    b.seek(16L);
    b.readFully(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    try
    {
      b(paramArrayOfByte, "buffer");
      if (((paramInt2 | 0x0) < 0) || (paramInt2 > paramArrayOfByte.length)) {
        throw new IndexOutOfBoundsException();
      }
    }
    finally {}
    c(paramInt2);
    boolean bool = b();
    br localbr;
    if (bool)
    {
      paramInt1 = 16;
      localbr = new br(paramInt1, paramInt2);
      a(g, 0, paramInt2);
      a(b, g, 0, 4);
      a(b + 4, paramArrayOfByte, 0, paramInt2);
      if (!bool) {
        break label190;
      }
    }
    label190:
    for (paramInt1 = b;; paramInt1 = e.b)
    {
      a(c, d + 1, paramInt1, b);
      f = localbr;
      d += 1;
      if (bool) {
        e = f;
      }
      return;
      paramInt1 = b(f.b + 4 + f.c);
      break;
    }
  }
  
  private void c(int paramInt)
  {
    int m = paramInt + 4;
    paramInt = c - a();
    if (paramInt >= m) {
      return;
    }
    int i = c;
    int k;
    int j;
    do
    {
      k = paramInt + i;
      j = i << 1;
      i = j;
      paramInt = k;
    } while (k < m);
    d(j);
    paramInt = b(f.b + 4 + f.c);
    if (paramInt < e.b)
    {
      FileChannel localFileChannel = b.getChannel();
      localFileChannel.position(c);
      paramInt -= 4;
      if (localFileChannel.transferTo(16L, paramInt, localFileChannel) != paramInt) {
        throw new AssertionError("Copied insufficient number of bytes!");
      }
    }
    if (f.b < e.b)
    {
      paramInt = c + f.b - 16;
      a(j, d, e.b, paramInt);
      f = new br(paramInt, f.c);
    }
    for (;;)
    {
      c = j;
      return;
      a(j, d, e.b, f.b);
    }
  }
  
  private void d()
  {
    try
    {
      a(4096, 0, 0, 0);
      d = 0;
      e = br.a;
      f = br.a;
      if (c > 4096) {
        d(4096);
      }
      c = 4096;
      return;
    }
    finally {}
  }
  
  private void d(int paramInt)
  {
    b.setLength(paramInt);
    b.getChannel().force(true);
  }
  
  public final int a()
  {
    if (d == 0) {
      return 16;
    }
    if (f.b >= e.b) {
      return f.b - e.b + 4 + f.c + 16;
    }
    return f.b + 4 + f.c + c - e.b;
  }
  
  public final void a(bt parambt)
  {
    int i = 0;
    try
    {
      int j = e.b;
      while (i < d)
      {
        br localbr = a(j);
        parambt.a(new bs(this, localbr, (byte)0), c);
        j = b;
        j = b(c + (j + 4));
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public final void a(byte[] paramArrayOfByte)
  {
    b(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public final boolean a(int paramInt1, int paramInt2)
  {
    return a() + 4 + paramInt1 <= paramInt2;
  }
  
  /* Error */
  public final boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 125	com/crashlytics/android/internal/bp:d	I
    //   6: istore_1
    //   7: iload_1
    //   8: ifne +9 -> 17
    //   11: iconst_1
    //   12: istore_2
    //   13: aload_0
    //   14: monitorexit
    //   15: iload_2
    //   16: ireturn
    //   17: iconst_0
    //   18: istore_2
    //   19: goto -6 -> 13
    //   22: astore_3
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	27	0	this	bp
    //   6	2	1	i	int
    //   12	7	2	bool	boolean
    //   22	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public final void c()
  {
    try
    {
      if (b()) {
        throw new NoSuchElementException();
      }
    }
    finally {}
    if (d == 1) {
      d();
    }
    for (;;)
    {
      return;
      int i = b(e.b + 4 + e.c);
      b(i, g, 0, 4);
      int j = a(g, 0);
      a(c, d - 1, i, f.b);
      d -= 1;
      e = new br(i, j);
    }
  }
  
  public void close()
  {
    try
    {
      b.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append('[');
    localStringBuilder.append("fileLength=").append(c);
    localStringBuilder.append(", size=").append(d);
    localStringBuilder.append(", first=").append(e);
    localStringBuilder.append(", last=").append(f);
    localStringBuilder.append(", element lengths=[");
    try
    {
      a(new bq(this, localStringBuilder));
      localStringBuilder.append("]]");
      return localStringBuilder.toString();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        a.log(Level.WARNING, "read error", localIOException);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */