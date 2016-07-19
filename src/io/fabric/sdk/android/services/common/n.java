package io.fabric.sdk.android.services.common;

import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class n
  implements Closeable
{
  private static final Logger b = Logger.getLogger(n.class.getName());
  int a;
  private final RandomAccessFile c;
  private int d;
  private a e;
  private a f;
  private final byte[] g = new byte[16];
  
  public n(File paramFile)
    throws IOException
  {
    if (!paramFile.exists()) {
      a(paramFile);
    }
    c = b(paramFile);
    e();
  }
  
  private static int a(byte[] paramArrayOfByte, int paramInt)
  {
    return ((paramArrayOfByte[paramInt] & 0xFF) << 24) + ((paramArrayOfByte[(paramInt + 1)] & 0xFF) << 16) + ((paramArrayOfByte[(paramInt + 2)] & 0xFF) << 8) + (paramArrayOfByte[(paramInt + 3)] & 0xFF);
  }
  
  private a a(int paramInt)
    throws IOException
  {
    if (paramInt == 0) {
      return a.a;
    }
    c.seek(paramInt);
    return new a(paramInt, c.readInt());
  }
  
  private void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
    throws IOException
  {
    a(g, new int[] { paramInt1, paramInt2, paramInt3, paramInt4 });
    c.seek(0L);
    c.write(g);
  }
  
  private void a(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
    throws IOException
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt3 <= a)
    {
      c.seek(paramInt1);
      c.write(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = a - paramInt1;
    c.seek(paramInt1);
    c.write(paramArrayOfByte, paramInt2, i);
    c.seek(16L);
    c.write(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private static void a(File paramFile)
    throws IOException
  {
    File localFile = new File(paramFile.getPath() + ".tmp");
    RandomAccessFile localRandomAccessFile = b(localFile);
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
  
  private static void a(byte[] paramArrayOfByte, int... paramVarArgs)
  {
    int i = 0;
    int k = paramVarArgs.length;
    int j = 0;
    while (i < k)
    {
      b(paramArrayOfByte, j, paramVarArgs[i]);
      j += 4;
      i += 1;
    }
  }
  
  private int b(int paramInt)
  {
    if (paramInt < a) {
      return paramInt;
    }
    return paramInt + 16 - a;
  }
  
  private static RandomAccessFile b(File paramFile)
    throws FileNotFoundException
  {
    return new RandomAccessFile(paramFile, "rwd");
  }
  
  private static <T> T b(T paramT, String paramString)
  {
    if (paramT == null) {
      throw new NullPointerException(paramString);
    }
    return paramT;
  }
  
  private void b(int paramInt1, byte[] paramArrayOfByte, int paramInt2, int paramInt3)
    throws IOException
  {
    paramInt1 = b(paramInt1);
    if (paramInt1 + paramInt3 <= a)
    {
      c.seek(paramInt1);
      c.readFully(paramArrayOfByte, paramInt2, paramInt3);
      return;
    }
    int i = a - paramInt1;
    c.seek(paramInt1);
    c.readFully(paramArrayOfByte, paramInt2, i);
    c.seek(16L);
    c.readFully(paramArrayOfByte, paramInt2 + i, paramInt3 - i);
  }
  
  private static void b(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    paramArrayOfByte[paramInt1] = ((byte)(paramInt2 >> 24));
    paramArrayOfByte[(paramInt1 + 1)] = ((byte)(paramInt2 >> 16));
    paramArrayOfByte[(paramInt1 + 2)] = ((byte)(paramInt2 >> 8));
    paramArrayOfByte[(paramInt1 + 3)] = ((byte)paramInt2);
  }
  
  private void c(int paramInt)
    throws IOException
  {
    int m = paramInt + 4;
    paramInt = f();
    if (paramInt >= m) {
      return;
    }
    int i = a;
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
      FileChannel localFileChannel = c.getChannel();
      localFileChannel.position(a);
      paramInt -= 4;
      if (localFileChannel.transferTo(16L, paramInt, localFileChannel) != paramInt) {
        throw new AssertionError("Copied insufficient number of bytes!");
      }
    }
    if (f.b < e.b)
    {
      paramInt = a + f.b - 16;
      a(j, d, e.b, paramInt);
      f = new a(paramInt, f.c);
    }
    for (;;)
    {
      a = j;
      return;
      a(j, d, e.b, f.b);
    }
  }
  
  private void d(int paramInt)
    throws IOException
  {
    c.setLength(paramInt);
    c.getChannel().force(true);
  }
  
  private void e()
    throws IOException
  {
    c.seek(0L);
    c.readFully(g);
    a = a(g, 0);
    if (a > c.length()) {
      throw new IOException("File is truncated. Expected length: " + a + ", Actual length: " + c.length());
    }
    d = a(g, 4);
    int i = a(g, 8);
    int j = a(g, 12);
    e = a(i);
    f = a(j);
  }
  
  private int f()
  {
    return a - a();
  }
  
  public int a()
  {
    if (d == 0) {
      return 16;
    }
    if (f.b >= e.b) {
      return f.b - e.b + 4 + f.c + 16;
    }
    return f.b + 4 + f.c + a - e.b;
  }
  
  public void a(c paramc)
    throws IOException
  {
    try
    {
      int j = e.b;
      int i = 0;
      while (i < d)
      {
        a locala = a(j);
        paramc.a(new b(locala, null), c);
        j = b;
        j = b(c + (j + 4));
        i += 1;
      }
      return;
    }
    finally {}
  }
  
  public void a(byte[] paramArrayOfByte)
    throws IOException
  {
    a(paramArrayOfByte, 0, paramArrayOfByte.length);
  }
  
  public void a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    throws IOException
  {
    try
    {
      b(paramArrayOfByte, "buffer");
      if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
        throw new IndexOutOfBoundsException();
      }
    }
    finally {}
    c(paramInt2);
    boolean bool = b();
    int i;
    a locala;
    if (bool)
    {
      i = 16;
      locala = new a(i, paramInt2);
      b(g, 0, paramInt2);
      a(b, g, 0, 4);
      a(b + 4, paramArrayOfByte, paramInt1, paramInt2);
      if (!bool) {
        break label195;
      }
    }
    label195:
    for (paramInt1 = b;; paramInt1 = e.b)
    {
      a(a, d + 1, paramInt1, b);
      f = locala;
      d += 1;
      if (bool) {
        e = f;
      }
      return;
      i = b(f.b + 4 + f.c);
      break;
    }
  }
  
  public boolean a(int paramInt1, int paramInt2)
  {
    return a() + 4 + paramInt1 <= paramInt2;
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 197	io/fabric/sdk/android/services/common/n:d	I
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
    //   0	27	0	this	n
    //   6	2	1	i	int
    //   12	7	2	bool	boolean
    //   22	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	7	22	finally
  }
  
  public void c()
    throws IOException
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
      a(a, d - 1, i, f.b);
      d -= 1;
      e = new a(i, j);
    }
  }
  
  public void close()
    throws IOException
  {
    try
    {
      c.close();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void d()
    throws IOException
  {
    try
    {
      a(4096, 0, 0, 0);
      d = 0;
      e = a.a;
      f = a.a;
      if (a > 4096) {
        d(4096);
      }
      a = 4096;
      return;
    }
    finally {}
  }
  
  public String toString()
  {
    final StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append(getClass().getSimpleName()).append('[');
    localStringBuilder.append("fileLength=").append(a);
    localStringBuilder.append(", size=").append(d);
    localStringBuilder.append(", first=").append(e);
    localStringBuilder.append(", last=").append(f);
    localStringBuilder.append(", element lengths=[");
    try
    {
      a(new c()
      {
        boolean a = true;
        
        public void a(InputStream paramAnonymousInputStream, int paramAnonymousInt)
          throws IOException
        {
          if (a) {
            a = false;
          }
          for (;;)
          {
            localStringBuilder.append(paramAnonymousInt);
            return;
            localStringBuilder.append(", ");
          }
        }
      });
      localStringBuilder.append("]]");
      return localStringBuilder.toString();
    }
    catch (IOException localIOException)
    {
      for (;;)
      {
        b.log(Level.WARNING, "read error", localIOException);
      }
    }
  }
  
  static class a
  {
    static final a a = new a(0, 0);
    final int b;
    final int c;
    
    a(int paramInt1, int paramInt2)
    {
      b = paramInt1;
      c = paramInt2;
    }
    
    public String toString()
    {
      return getClass().getSimpleName() + "[" + "position = " + b + ", length = " + c + "]";
    }
  }
  
  private final class b
    extends InputStream
  {
    private int b;
    private int c;
    
    private b(n.a parama)
    {
      b = n.a(n.this, b + 4);
      c = c;
    }
    
    public int read()
      throws IOException
    {
      if (c == 0) {
        return -1;
      }
      n.a(n.this).seek(b);
      int i = n.a(n.this).read();
      b = n.a(n.this, b + 1);
      c -= 1;
      return i;
    }
    
    public int read(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
      throws IOException
    {
      n.a(paramArrayOfByte, "buffer");
      if (((paramInt1 | paramInt2) < 0) || (paramInt2 > paramArrayOfByte.length - paramInt1)) {
        throw new ArrayIndexOutOfBoundsException();
      }
      if (c > 0)
      {
        int i = paramInt2;
        if (paramInt2 > c) {
          i = c;
        }
        n.a(n.this, b, paramArrayOfByte, paramInt1, i);
        b = n.a(n.this, b + i);
        c -= i;
        return i;
      }
      return -1;
    }
  }
  
  public static abstract interface c
  {
    public abstract void a(InputStream paramInputStream, int paramInt)
      throws IOException;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */