package com.facebook.internal;

import android.content.Intent;
import java.util.UUID;

public class a
{
  private static a a;
  private UUID b;
  private Intent c;
  private int d;
  
  public a(int paramInt)
  {
    this(paramInt, UUID.randomUUID());
  }
  
  public a(int paramInt, UUID paramUUID)
  {
    b = paramUUID;
    d = paramInt;
  }
  
  public static a a()
  {
    return a;
  }
  
  /* Error */
  public static a a(UUID paramUUID, int paramInt)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 37	com/facebook/internal/a:a	()Lcom/facebook/internal/a;
    //   6: astore_3
    //   7: aload_3
    //   8: ifnull +24 -> 32
    //   11: aload_3
    //   12: invokevirtual 39	com/facebook/internal/a:c	()Ljava/util/UUID;
    //   15: aload_0
    //   16: invokevirtual 43	java/util/UUID:equals	(Ljava/lang/Object;)Z
    //   19: ifeq +13 -> 32
    //   22: aload_3
    //   23: invokevirtual 46	com/facebook/internal/a:d	()I
    //   26: istore_2
    //   27: iload_2
    //   28: iload_1
    //   29: if_icmpeq +10 -> 39
    //   32: aconst_null
    //   33: astore_0
    //   34: ldc 2
    //   36: monitorexit
    //   37: aload_0
    //   38: areturn
    //   39: aconst_null
    //   40: invokestatic 49	com/facebook/internal/a:a	(Lcom/facebook/internal/a;)Z
    //   43: pop
    //   44: aload_3
    //   45: astore_0
    //   46: goto -12 -> 34
    //   49: astore_0
    //   50: ldc 2
    //   52: monitorexit
    //   53: aload_0
    //   54: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	55	0	paramUUID	UUID
    //   0	55	1	paramInt	int
    //   26	4	2	i	int
    //   6	39	3	locala	a
    // Exception table:
    //   from	to	target	type
    //   3	7	49	finally
    //   11	27	49	finally
    //   39	44	49	finally
  }
  
  /* Error */
  private static boolean a(a parama)
  {
    // Byte code:
    //   0: ldc 2
    //   2: monitorenter
    //   3: invokestatic 37	com/facebook/internal/a:a	()Lcom/facebook/internal/a;
    //   6: astore_2
    //   7: aload_0
    //   8: putstatic 34	com/facebook/internal/a:a	Lcom/facebook/internal/a;
    //   11: aload_2
    //   12: ifnull +10 -> 22
    //   15: iconst_1
    //   16: istore_1
    //   17: ldc 2
    //   19: monitorexit
    //   20: iload_1
    //   21: ireturn
    //   22: iconst_0
    //   23: istore_1
    //   24: goto -7 -> 17
    //   27: astore_0
    //   28: ldc 2
    //   30: monitorexit
    //   31: aload_0
    //   32: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	33	0	parama	a
    //   16	8	1	bool	boolean
    //   6	6	2	locala	a
    // Exception table:
    //   from	to	target	type
    //   3	11	27	finally
  }
  
  public void a(Intent paramIntent)
  {
    c = paramIntent;
  }
  
  public Intent b()
  {
    return c;
  }
  
  public UUID c()
  {
    return b;
  }
  
  public int d()
  {
    return d;
  }
  
  public boolean e()
  {
    return a(this);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */