package com.google.android.gms.internal;

import android.os.RemoteException;

@ey
public abstract class ff
  extends gf
{
  private final fh qh;
  private final fe.a tI;
  
  public ff(fh paramfh, fe.a parama)
  {
    qh = paramfh;
    tI = parama;
  }
  
  private static fj a(fl paramfl, fh paramfh)
  {
    try
    {
      paramfl = paramfl.b(paramfh);
      return paramfl;
    }
    catch (RemoteException paramfl)
    {
      gr.d("Could not fetch ad response from ad request service.", paramfl);
      return null;
    }
    catch (NullPointerException paramfl)
    {
      gr.d("Could not fetch ad response from ad request service due to an Exception.", paramfl);
      return null;
    }
    catch (SecurityException paramfl)
    {
      gr.d("Could not fetch ad response from ad request service due to an Exception.", paramfl);
      return null;
    }
    catch (Throwable paramfl)
    {
      ga.e(paramfl);
    }
    return null;
  }
  
  public abstract void cJ();
  
  public abstract fl cK();
  
  /* Error */
  public final void cx()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 57	com/google/android/gms/internal/ff:cK	()Lcom/google/android/gms/internal/fl;
    //   4: astore_1
    //   5: aload_1
    //   6: ifnonnull +27 -> 33
    //   9: new 59	com/google/android/gms/internal/fj
    //   12: dup
    //   13: iconst_0
    //   14: invokespecial 62	com/google/android/gms/internal/fj:<init>	(I)V
    //   17: astore_1
    //   18: aload_0
    //   19: invokevirtual 64	com/google/android/gms/internal/ff:cJ	()V
    //   22: aload_0
    //   23: getfield 18	com/google/android/gms/internal/ff:tI	Lcom/google/android/gms/internal/fe$a;
    //   26: aload_1
    //   27: invokeinterface 69 2 0
    //   32: return
    //   33: aload_1
    //   34: aload_0
    //   35: getfield 16	com/google/android/gms/internal/ff:qh	Lcom/google/android/gms/internal/fh;
    //   38: invokestatic 71	com/google/android/gms/internal/ff:a	(Lcom/google/android/gms/internal/fl;Lcom/google/android/gms/internal/fh;)Lcom/google/android/gms/internal/fj;
    //   41: astore_2
    //   42: aload_2
    //   43: astore_1
    //   44: aload_2
    //   45: ifnonnull -27 -> 18
    //   48: new 59	com/google/android/gms/internal/fj
    //   51: dup
    //   52: iconst_0
    //   53: invokespecial 62	com/google/android/gms/internal/fj:<init>	(I)V
    //   56: astore_1
    //   57: goto -39 -> 18
    //   60: astore_1
    //   61: aload_0
    //   62: invokevirtual 64	com/google/android/gms/internal/ff:cJ	()V
    //   65: aload_1
    //   66: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	67	0	this	ff
    //   4	53	1	localObject1	Object
    //   60	6	1	localObject2	Object
    //   41	4	2	localfj	fj
    // Exception table:
    //   from	to	target	type
    //   0	5	60	finally
    //   9	18	60	finally
    //   33	42	60	finally
    //   48	57	60	finally
  }
  
  public final void onStop()
  {
    cJ();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ff
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */