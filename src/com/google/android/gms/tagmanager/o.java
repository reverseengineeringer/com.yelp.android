package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.BaseImplementation.AbstractPendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c.f;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.ld;
import com.google.android.gms.internal.lf;
import com.google.android.gms.internal.pu.a;

class o
  extends BaseImplementation.AbstractPendingResult<ContainerHolder>
{
  private final Looper JF;
  private final o.d aqB;
  private final cg aqC;
  private final int aqD;
  private o.f aqE;
  private volatile n aqF;
  private volatile boolean aqG;
  private c.j aqH;
  private String aqI;
  private o.e aqJ;
  private o.a aqK;
  private final String aqm;
  private long aqr;
  private final TagManager aqy;
  private final Context mContext;
  private final ld wb;
  
  o(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, o.f paramf, o.e parame, ld paramld, cg paramcg) {}
  
  public o(Context paramContext, TagManager paramTagManager, Looper paramLooper, String paramString, int paramInt, r paramr)
  {
    this(paramContext, paramTagManager, paramLooper, paramString, paramInt, new cq(paramContext, paramString), new cp(paramContext, paramString, paramr), lf.jdMethod_if(), new bf(30, 900000L, 5000L, "refreshing", lf.jdMethod_if()));
  }
  
  private void V(boolean paramBoolean)
  {
    aqE.a(new o.b(this, null));
    aqJ.a(new o.c(this, null));
    cr.c localc = aqE.fH(aqD);
    if (localc != null) {
      aqF = new n(aqy, JF, new Container(mContext, aqy.getDataLayer(), aqm, 0L, localc), aqB);
    }
    aqK = new o.2(this, paramBoolean);
    if (pr())
    {
      aqJ.e(0L, "");
      return;
    }
    aqE.pt();
  }
  
  private void a(c.j paramj)
  {
    try
    {
      if (aqE != null)
      {
        pu.a locala = new pu.a();
        auB = aqr;
        gs = new c.f();
        auC = paramj;
        aqE.b(locala);
      }
      return;
    }
    finally
    {
      paramj = finally;
      throw paramj;
    }
  }
  
  private void a(c.j paramj, long paramLong, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (;;)
    {
      try
      {
        paramBoolean = aqG;
        if (paramBoolean) {
          return;
        }
        if ((isReady()) && (aqF == null)) {}
        aqH = paramj;
        aqr = paramLong;
        w(Math.max(0L, Math.min(43200000L, aqr + 43200000L - wb.currentTimeMillis())));
        paramj = new Container(mContext, aqy.getDataLayer(), aqm, paramLong, paramj);
        if (aqF == null)
        {
          aqF = new n(aqy, JF, paramj, aqB);
          if ((!isReady()) && (aqK.b(paramj))) {
            b(aqF);
          }
        }
        else
        {
          aqF.a(paramj);
        }
      }
      finally {}
    }
  }
  
  private boolean pr()
  {
    ce localce = ce.qa();
    return ((localce.qb() == ce.a.asr) || (localce.qb() == ce.a.ass)) && (aqm.equals(localce.getContainerId()));
  }
  
  /* Error */
  private void w(long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_0
    //   3: getfield 61	com/google/android/gms/tagmanager/o:aqJ	Lcom/google/android/gms/tagmanager/o$e;
    //   6: ifnonnull +12 -> 18
    //   9: ldc_w 288
    //   12: invokestatic 293	com/google/android/gms/tagmanager/bh:W	(Ljava/lang/String;)V
    //   15: aload_0
    //   16: monitorexit
    //   17: return
    //   18: aload_0
    //   19: getfield 61	com/google/android/gms/tagmanager/o:aqJ	Lcom/google/android/gms/tagmanager/o$e;
    //   22: lload_1
    //   23: aload_0
    //   24: getfield 75	com/google/android/gms/tagmanager/o:aqH	Lcom/google/android/gms/internal/c$j;
    //   27: getfield 296	com/google/android/gms/internal/c$j:gt	Ljava/lang/String;
    //   30: invokeinterface 180 4 0
    //   35: goto -20 -> 15
    //   38: astore_3
    //   39: aload_0
    //   40: monitorexit
    //   41: aload_3
    //   42: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	43	0	this	o
    //   0	43	1	paramLong	long
    //   38	4	3	localObject	Object
    // Exception table:
    //   from	to	target	type
    //   2	15	38	finally
    //   18	35	38	finally
  }
  
  protected ContainerHolder aD(Status paramStatus)
  {
    if (aqF != null) {
      return aqF;
    }
    if (paramStatus == Status.Kz) {
      bh.T("timer expired: setting result to failure");
    }
    return new n(paramStatus);
  }
  
  void ct(String paramString)
  {
    try
    {
      aqI = paramString;
      if (aqJ != null) {
        aqJ.cw(paramString);
      }
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  String pl()
  {
    try
    {
      String str = aqI;
      return str;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void po()
  {
    Object localObject = aqE.fH(aqD);
    if (localObject != null)
    {
      localObject = new Container(mContext, aqy.getDataLayer(), aqm, 0L, (cr.c)localObject);
      b(new n(aqy, JF, (Container)localObject, new o.1(this)));
    }
    for (;;)
    {
      aqJ = null;
      aqE = null;
      return;
      bh.T("Default was requested, but no default container was found");
      b(aD(new Status(10, "Default was requested, but no default container was found", null)));
    }
  }
  
  public void pp()
  {
    V(false);
  }
  
  public void pq()
  {
    V(true);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */