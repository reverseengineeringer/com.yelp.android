package com.kahuna.sdk;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

class l$10
  implements Runnable
{
  l$10(l paraml) {}
  
  public void run()
  {
    synchronized ()
    {
      int i = l.g(a).decrementAndGet();
      if (l.a) {
        Log.d("Kahuna", "Called stop, remaining activities in foreground is: " + i);
      }
      if (i == 0)
      {
        if (l.k(a) != null)
        {
          l.k(a).cancel();
          l.a(a, null);
        }
        l.a(a, new Timer());
        l.k(a).schedule(new TimerTask()
        {
          /* Error */
          public void run()
          {
            // Byte code:
            //   0: invokestatic 26	com/kahuna/sdk/l:v	()Ljava/lang/Object;
            //   3: astore_2
            //   4: aload_2
            //   5: monitorenter
            //   6: aload_0
            //   7: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
            //   10: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
            //   13: invokestatic 33	com/kahuna/sdk/l:k	(Lcom/kahuna/sdk/l;)Ljava/util/Timer;
            //   16: ifnull +28 -> 44
            //   19: aload_0
            //   20: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
            //   23: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
            //   26: invokestatic 33	com/kahuna/sdk/l:k	(Lcom/kahuna/sdk/l;)Ljava/util/Timer;
            //   29: invokevirtual 38	java/util/Timer:cancel	()V
            //   32: aload_0
            //   33: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
            //   36: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
            //   39: aconst_null
            //   40: invokestatic 41	com/kahuna/sdk/l:a	(Lcom/kahuna/sdk/l;Ljava/util/Timer;)Ljava/util/Timer;
            //   43: pop
            //   44: aload_0
            //   45: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
            //   48: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
            //   51: invokestatic 45	com/kahuna/sdk/l:g	(Lcom/kahuna/sdk/l;)Ljava/util/concurrent/atomic/AtomicInteger;
            //   54: invokevirtual 51	java/util/concurrent/atomic/AtomicInteger:get	()I
            //   57: istore_1
            //   58: iload_1
            //   59: ifle +6 -> 65
            //   62: aload_2
            //   63: monitorexit
            //   64: return
            //   65: aload_0
            //   66: getfield 15	com/kahuna/sdk/l$10$1:a	Lcom/kahuna/sdk/l$10;
            //   69: getfield 29	com/kahuna/sdk/l$10:a	Lcom/kahuna/sdk/l;
            //   72: ldc 53
            //   74: invokestatic 57	com/kahuna/sdk/l:b	(Lcom/kahuna/sdk/l;Ljava/lang/String;)V
            //   77: aload_2
            //   78: monitorexit
            //   79: return
            //   80: astore_3
            //   81: aload_2
            //   82: monitorexit
            //   83: aload_3
            //   84: athrow
            //   85: astore_3
            //   86: getstatic 60	com/kahuna/sdk/l:a	Z
            //   89: ifeq -12 -> 77
            //   92: ldc 62
            //   94: new 64	java/lang/StringBuilder
            //   97: dup
            //   98: invokespecial 65	java/lang/StringBuilder:<init>	()V
            //   101: ldc 67
            //   103: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
            //   106: aload_3
            //   107: invokevirtual 74	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
            //   110: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
            //   113: invokestatic 84	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
            //   116: pop
            //   117: goto -40 -> 77
            // Local variable table:
            //   start	length	slot	name	signature
            //   0	120	0	this	1
            //   57	2	1	i	int
            //   80	4	3	localObject2	Object
            //   85	22	3	localException	Exception
            // Exception table:
            //   from	to	target	type
            //   6	44	80	finally
            //   44	58	80	finally
            //   62	64	80	finally
            //   65	77	80	finally
            //   77	79	80	finally
            //   81	83	80	finally
            //   86	117	80	finally
            //   6	44	85	java/lang/Exception
            //   44	58	85	java/lang/Exception
            //   65	77	85	java/lang/Exception
          }
        }, 5000L);
      }
      synchronized (l.d(a))
      {
        s.a(l.e(a), l.a(a));
        s.b(l.f(a).get(), l.a(a));
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */