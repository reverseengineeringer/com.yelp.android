package com.google.android.gms.analytics.internal;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzx;
import java.util.HashSet;
import java.util.Set;

public class ad
{
  private final t a;
  private volatile Boolean b;
  private String c;
  private Set<Integer> d;
  
  protected ad(t paramt)
  {
    zzx.zzz(paramt);
    a = paramt;
  }
  
  public String A()
  {
    return "google_analytics_v4.db";
  }
  
  public String B()
  {
    return "google_analytics2_v4.db";
  }
  
  public long C()
  {
    return 86400000L;
  }
  
  public int D()
  {
    return ((Integer)ak.E.a()).intValue();
  }
  
  public int E()
  {
    return ((Integer)ak.F.a()).intValue();
  }
  
  public long F()
  {
    return ((Long)ak.G.a()).longValue();
  }
  
  public long G()
  {
    return ((Long)ak.P.a()).longValue();
  }
  
  public boolean a()
  {
    return zzd.zzakE;
  }
  
  /* Error */
  public boolean b()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   4: ifnonnull +129 -> 133
    //   7: aload_0
    //   8: monitorenter
    //   9: aload_0
    //   10: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   13: ifnonnull +118 -> 131
    //   16: aload_0
    //   17: getfield 26	com/google/android/gms/analytics/internal/ad:a	Lcom/google/android/gms/analytics/internal/t;
    //   20: invokevirtual 84	com/google/android/gms/analytics/internal/t:b	()Landroid/content/Context;
    //   23: invokevirtual 90	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   26: astore_3
    //   27: aload_0
    //   28: getfield 26	com/google/android/gms/analytics/internal/ad:a	Lcom/google/android/gms/analytics/internal/t;
    //   31: invokevirtual 84	com/google/android/gms/analytics/internal/t:b	()Landroid/content/Context;
    //   34: invokestatic 95	android/os/Process:myPid	()I
    //   37: invokestatic 100	com/google/android/gms/internal/kg:a	(Landroid/content/Context;I)Ljava/lang/String;
    //   40: astore_2
    //   41: aload_3
    //   42: ifnull +30 -> 72
    //   45: aload_3
    //   46: getfield 105	android/content/pm/ApplicationInfo:processName	Ljava/lang/String;
    //   49: astore_3
    //   50: aload_3
    //   51: ifnull +90 -> 141
    //   54: aload_3
    //   55: aload_2
    //   56: invokevirtual 111	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   59: ifeq +82 -> 141
    //   62: iconst_1
    //   63: istore_1
    //   64: aload_0
    //   65: iload_1
    //   66: invokestatic 117	java/lang/Boolean:valueOf	(Z)Ljava/lang/Boolean;
    //   69: putfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   72: aload_0
    //   73: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   76: ifnull +13 -> 89
    //   79: aload_0
    //   80: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   83: invokevirtual 120	java/lang/Boolean:booleanValue	()Z
    //   86: ifne +19 -> 105
    //   89: ldc 122
    //   91: aload_2
    //   92: invokevirtual 111	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   95: ifeq +10 -> 105
    //   98: aload_0
    //   99: getstatic 125	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   102: putfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   105: aload_0
    //   106: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   109: ifnonnull +22 -> 131
    //   112: aload_0
    //   113: getstatic 125	java/lang/Boolean:TRUE	Ljava/lang/Boolean;
    //   116: putfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   119: aload_0
    //   120: getfield 26	com/google/android/gms/analytics/internal/ad:a	Lcom/google/android/gms/analytics/internal/t;
    //   123: invokevirtual 129	com/google/android/gms/analytics/internal/t:f	()Lcom/google/android/gms/analytics/internal/g;
    //   126: ldc -125
    //   128: invokevirtual 136	com/google/android/gms/analytics/internal/g:f	(Ljava/lang/String;)V
    //   131: aload_0
    //   132: monitorexit
    //   133: aload_0
    //   134: getfield 79	com/google/android/gms/analytics/internal/ad:b	Ljava/lang/Boolean;
    //   137: invokevirtual 120	java/lang/Boolean:booleanValue	()Z
    //   140: ireturn
    //   141: iconst_0
    //   142: istore_1
    //   143: goto -79 -> 64
    //   146: astore_2
    //   147: aload_0
    //   148: monitorexit
    //   149: aload_2
    //   150: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	151	0	this	ad
    //   63	80	1	bool	boolean
    //   40	52	2	str	String
    //   146	4	2	localObject1	Object
    //   26	29	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   9	41	146	finally
    //   45	50	146	finally
    //   54	62	146	finally
    //   64	72	146	finally
    //   72	89	146	finally
    //   89	105	146	finally
    //   105	131	146	finally
    //   131	133	146	finally
    //   147	149	146	finally
  }
  
  public boolean c()
  {
    return ((Boolean)ak.b.a()).booleanValue();
  }
  
  public int d()
  {
    return ((Integer)ak.u.a()).intValue();
  }
  
  public int e()
  {
    return ((Integer)ak.y.a()).intValue();
  }
  
  public int f()
  {
    return ((Integer)ak.z.a()).intValue();
  }
  
  public int g()
  {
    return ((Integer)ak.A.a()).intValue();
  }
  
  public long h()
  {
    return ((Long)ak.j.a()).longValue();
  }
  
  public long i()
  {
    return ((Long)ak.i.a()).longValue();
  }
  
  public long j()
  {
    return ((Long)ak.m.a()).longValue();
  }
  
  public long k()
  {
    return ((Long)ak.n.a()).longValue();
  }
  
  public int l()
  {
    return ((Integer)ak.o.a()).intValue();
  }
  
  public int m()
  {
    return ((Integer)ak.p.a()).intValue();
  }
  
  public long n()
  {
    return ((Integer)ak.C.a()).intValue();
  }
  
  public String o()
  {
    return (String)ak.r.a();
  }
  
  public String p()
  {
    return (String)ak.q.a();
  }
  
  public String q()
  {
    return (String)ak.s.a();
  }
  
  public String r()
  {
    return (String)ak.t.a();
  }
  
  public zzm s()
  {
    return zzm.zzbm((String)ak.v.a());
  }
  
  public zzo t()
  {
    return zzo.zzbn((String)ak.w.a());
  }
  
  public Set<Integer> u()
  {
    String str1 = (String)ak.B.a();
    String[] arrayOfString;
    HashSet localHashSet;
    int j;
    int i;
    if ((d == null) || (c == null) || (!c.equals(str1)))
    {
      arrayOfString = TextUtils.split(str1, ",");
      localHashSet = new HashSet();
      j = arrayOfString.length;
      i = 0;
    }
    for (;;)
    {
      String str2;
      if (i < j) {
        str2 = arrayOfString[i];
      }
      try
      {
        localHashSet.add(Integer.valueOf(Integer.parseInt(str2)));
        i += 1;
        continue;
        c = str1;
        d = localHashSet;
        return d;
      }
      catch (NumberFormatException localNumberFormatException)
      {
        for (;;) {}
      }
    }
  }
  
  public long v()
  {
    return ((Long)ak.K.a()).longValue();
  }
  
  public long w()
  {
    return ((Long)ak.L.a()).longValue();
  }
  
  public long x()
  {
    return ((Long)ak.O.a()).longValue();
  }
  
  public int y()
  {
    return ((Integer)ak.f.a()).intValue();
  }
  
  public int z()
  {
    return ((Integer)ak.h.a()).intValue();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */