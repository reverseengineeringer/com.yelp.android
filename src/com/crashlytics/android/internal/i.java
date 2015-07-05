package com.crashlytics.android.internal;

import java.io.IOException;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class i
  implements t
{
  private final ScheduledExecutorService a;
  private final j b;
  private final bu c;
  private ScheduledFuture<?> d;
  private int e = -1;
  private m f;
  
  public i(ScheduledExecutorService paramScheduledExecutorService, j paramj, bu parambu)
  {
    a = paramScheduledExecutorService;
    b = paramj;
    c = parambu;
  }
  
  private void a(int paramInt1, int paramInt2)
  {
    try
    {
      x localx = new x(b, this);
      bd.c("Scheduling time based file roll over every " + paramInt2 + " seconds");
      d = a.scheduleAtFixedRate(localx, paramInt1, paramInt2, TimeUnit.SECONDS);
      return;
    }
    catch (RejectedExecutionException localRejectedExecutionException)
    {
      bd.d("Crashlytics failed to schedule time based analytics file roll over");
    }
  }
  
  /* Error */
  public final void a()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 87	com/crashlytics/android/internal/i:f	Lcom/crashlytics/android/internal/m;
    //   4: ifnonnull +9 -> 13
    //   7: ldc 89
    //   9: invokestatic 65	com/crashlytics/android/internal/bd:c	(Ljava/lang/String;)V
    //   12: return
    //   13: ldc 91
    //   15: invokestatic 65	com/crashlytics/android/internal/bd:c	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: getfield 30	com/crashlytics/android/internal/i:b	Lcom/crashlytics/android/internal/j;
    //   22: invokevirtual 96	com/crashlytics/android/internal/j:b	()Ljava/util/List;
    //   25: astore 6
    //   27: iconst_0
    //   28: istore_1
    //   29: iload_1
    //   30: istore_3
    //   31: iload_1
    //   32: istore 4
    //   34: aload 6
    //   36: invokeinterface 102 1 0
    //   41: ifle +175 -> 216
    //   44: iload_1
    //   45: istore_3
    //   46: aload_0
    //   47: getfield 87	com/crashlytics/android/internal/i:f	Lcom/crashlytics/android/internal/m;
    //   50: invokestatic 107	com/crashlytics/android/internal/c:a	()Lcom/crashlytics/android/internal/c;
    //   53: invokevirtual 111	com/crashlytics/android/internal/c:w	()Landroid/content/Context;
    //   56: iconst_0
    //   57: invokestatic 116	com/crashlytics/android/internal/cj:a	(Landroid/content/Context;Z)Ljava/lang/String;
    //   60: aload 6
    //   62: invokeinterface 121 3 0
    //   67: istore 5
    //   69: iload_1
    //   70: istore_2
    //   71: iload 5
    //   73: ifeq +28 -> 101
    //   76: iload_1
    //   77: istore_3
    //   78: aload 6
    //   80: invokeinterface 102 1 0
    //   85: istore_2
    //   86: iload_2
    //   87: iload_1
    //   88: iadd
    //   89: istore_1
    //   90: aload_0
    //   91: getfield 30	com/crashlytics/android/internal/i:b	Lcom/crashlytics/android/internal/j;
    //   94: aload 6
    //   96: invokevirtual 124	com/crashlytics/android/internal/j:a	(Ljava/util/List;)V
    //   99: iload_1
    //   100: istore_2
    //   101: iload_2
    //   102: istore_3
    //   103: getstatic 130	java/util/Locale:US	Ljava/util/Locale;
    //   106: astore 7
    //   108: iload_2
    //   109: istore_3
    //   110: aload 6
    //   112: invokeinterface 102 1 0
    //   117: istore_1
    //   118: iload 5
    //   120: ifeq +59 -> 179
    //   123: ldc -124
    //   125: astore 6
    //   127: iload_2
    //   128: istore_3
    //   129: aload 7
    //   131: ldc -122
    //   133: iconst_2
    //   134: anewarray 4	java/lang/Object
    //   137: dup
    //   138: iconst_0
    //   139: iload_1
    //   140: invokestatic 140	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   143: aastore
    //   144: dup
    //   145: iconst_1
    //   146: aload 6
    //   148: aastore
    //   149: invokestatic 146	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   152: invokestatic 65	com/crashlytics/android/internal/bd:c	(Ljava/lang/String;)V
    //   155: iload_2
    //   156: istore 4
    //   158: iload 5
    //   160: ifeq +56 -> 216
    //   163: iload_2
    //   164: istore_3
    //   165: aload_0
    //   166: getfield 30	com/crashlytics/android/internal/i:b	Lcom/crashlytics/android/internal/j;
    //   169: invokevirtual 96	com/crashlytics/android/internal/j:b	()Ljava/util/List;
    //   172: astore 6
    //   174: iload_2
    //   175: istore_1
    //   176: goto -147 -> 29
    //   179: ldc -108
    //   181: astore 6
    //   183: goto -56 -> 127
    //   186: astore 6
    //   188: iload_3
    //   189: istore_1
    //   190: new 43	java/lang/StringBuilder
    //   193: dup
    //   194: ldc -106
    //   196: invokespecial 48	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   199: aload 6
    //   201: invokevirtual 153	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   204: invokevirtual 57	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   207: invokevirtual 61	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   210: invokestatic 83	com/crashlytics/android/internal/bd:d	(Ljava/lang/String;)V
    //   213: iload_1
    //   214: istore 4
    //   216: iload 4
    //   218: ifne -206 -> 12
    //   221: aload_0
    //   222: getfield 30	com/crashlytics/android/internal/i:b	Lcom/crashlytics/android/internal/j;
    //   225: invokevirtual 155	com/crashlytics/android/internal/j:d	()V
    //   228: return
    //   229: astore 6
    //   231: goto -41 -> 190
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	234	0	this	i
    //   28	186	1	i	int
    //   70	105	2	j	int
    //   30	159	3	k	int
    //   32	185	4	m	int
    //   67	92	5	bool	boolean
    //   25	157	6	localObject	Object
    //   186	14	6	localException1	Exception
    //   229	1	6	localException2	Exception
    //   106	24	7	localLocale	java.util.Locale
    // Exception table:
    //   from	to	target	type
    //   34	44	186	java/lang/Exception
    //   46	69	186	java/lang/Exception
    //   78	86	186	java/lang/Exception
    //   103	108	186	java/lang/Exception
    //   110	118	186	java/lang/Exception
    //   129	155	186	java/lang/Exception
    //   165	174	186	java/lang/Exception
    //   90	99	229	java/lang/Exception
  }
  
  public final void a(ak paramak, String paramString)
  {
    f = new g(paramString, a, c);
    b.a(paramak);
    e = b;
    a(0, e);
  }
  
  public final void a(u paramu)
  {
    int j = 1;
    bd.c(paramu.toString());
    try
    {
      b.a(paramu);
      if (e != -1)
      {
        i = 1;
        if (d != null) {
          break label69;
        }
        if ((i != 0) && (j != 0)) {
          a(e, e);
        }
      }
    }
    catch (IOException paramu)
    {
      for (;;)
      {
        bd.d("Crashlytics failed to write session event.");
        continue;
        int i = 0;
        continue;
        label69:
        j = 0;
      }
    }
  }
  
  public final void b()
  {
    b.c();
  }
  
  public final void c()
  {
    if (d != null)
    {
      bd.c("Cancelling time-based rollover because no events are currently being generated.");
      d.cancel(false);
      d = null;
    }
  }
  
  public final void d()
  {
    try
    {
      b.a();
      return;
    }
    catch (IOException localIOException)
    {
      bd.d("Crashlytics failed to roll analytics file over.");
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */