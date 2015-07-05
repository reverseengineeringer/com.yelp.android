package com.yelp.android.v;

import com.bumptech.glide.load.a;
import java.io.InputStream;

public class p
  implements a<InputStream>
{
  public String a()
  {
    return "";
  }
  
  /* Error */
  public boolean a(InputStream paramInputStream, java.io.OutputStream paramOutputStream)
  {
    // Byte code:
    //   0: invokestatic 24	com/yelp/android/ai/a:a	()Lcom/yelp/android/ai/a;
    //   3: invokevirtual 28	com/yelp/android/ai/a:b	()[B
    //   6: astore 4
    //   8: aload_1
    //   9: aload 4
    //   11: invokevirtual 34	java/io/InputStream:read	([B)I
    //   14: istore_3
    //   15: iload_3
    //   16: iconst_m1
    //   17: if_icmpeq +44 -> 61
    //   20: aload_2
    //   21: aload 4
    //   23: iconst_0
    //   24: iload_3
    //   25: invokevirtual 40	java/io/OutputStream:write	([BII)V
    //   28: goto -20 -> 8
    //   31: astore_1
    //   32: ldc 42
    //   34: iconst_3
    //   35: invokestatic 48	android/util/Log:isLoggable	(Ljava/lang/String;I)Z
    //   38: ifeq +12 -> 50
    //   41: ldc 42
    //   43: ldc 50
    //   45: aload_1
    //   46: invokestatic 54	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   49: pop
    //   50: invokestatic 24	com/yelp/android/ai/a:a	()Lcom/yelp/android/ai/a;
    //   53: aload 4
    //   55: invokevirtual 57	com/yelp/android/ai/a:a	([B)Z
    //   58: pop
    //   59: iconst_0
    //   60: ireturn
    //   61: invokestatic 24	com/yelp/android/ai/a:a	()Lcom/yelp/android/ai/a;
    //   64: aload 4
    //   66: invokevirtual 57	com/yelp/android/ai/a:a	([B)Z
    //   69: pop
    //   70: iconst_1
    //   71: ireturn
    //   72: astore_1
    //   73: invokestatic 24	com/yelp/android/ai/a:a	()Lcom/yelp/android/ai/a;
    //   76: aload 4
    //   78: invokevirtual 57	com/yelp/android/ai/a:a	([B)Z
    //   81: pop
    //   82: aload_1
    //   83: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	84	0	this	p
    //   0	84	1	paramInputStream	InputStream
    //   0	84	2	paramOutputStream	java.io.OutputStream
    //   14	11	3	i	int
    //   6	71	4	arrayOfByte	byte[]
    // Exception table:
    //   from	to	target	type
    //   8	15	31	java/io/IOException
    //   20	28	31	java/io/IOException
    //   8	15	72	finally
    //   20	28	72	finally
    //   32	50	72	finally
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.v.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */