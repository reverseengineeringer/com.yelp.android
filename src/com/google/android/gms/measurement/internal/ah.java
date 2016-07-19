package com.google.android.gms.measurement.internal;

import android.os.Binder;
import android.os.Process;
import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zze;
import java.util.List;
import java.util.concurrent.Callable;

public class ah
  extends w.a
{
  private final ag a;
  private final boolean b;
  
  public ah(ag paramag)
  {
    zzx.zzz(paramag);
    a = paramag;
    b = false;
  }
  
  public ah(ag paramag, boolean paramBoolean)
  {
    zzx.zzz(paramag);
    a = paramag;
    b = paramBoolean;
  }
  
  private void b(String paramString)
    throws SecurityException
  {
    if (TextUtils.isEmpty(paramString))
    {
      a.f().b().a("Measurement Service called without app package");
      throw new SecurityException("Measurement Service called without app package");
    }
    try
    {
      c(paramString);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      a.f().b().a("Measurement Service called with invalid calling package", paramString);
      throw localSecurityException;
    }
  }
  
  private void c(String paramString)
    throws SecurityException
  {
    int i;
    if (b)
    {
      i = Process.myUid();
      if (!zze.zzb(a.p(), i, paramString)) {
        break label34;
      }
    }
    label34:
    while ((zze.zzf(a.p(), i)) && (!a.y()))
    {
      return;
      i = Binder.getCallingUid();
      break;
    }
    throw new SecurityException(String.format("Unknown calling package name '%s'.", new Object[] { paramString }));
  }
  
  /* Error */
  public List<UserAttributeParcel> a(final AppMetadata paramAppMetadata, boolean paramBoolean)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 33	com/google/android/gms/common/internal/zzx:zzz	(Ljava/lang/Object;)Ljava/lang/Object;
    //   4: pop
    //   5: aload_0
    //   6: aload_1
    //   7: getfield 126	com/google/android/gms/measurement/internal/AppMetadata:b	Ljava/lang/String;
    //   10: invokespecial 128	com/google/android/gms/measurement/internal/ah:b	(Ljava/lang/String;)V
    //   13: aload_0
    //   14: getfield 35	com/google/android/gms/measurement/internal/ah:a	Lcom/google/android/gms/measurement/internal/ag;
    //   17: invokevirtual 132	com/google/android/gms/measurement/internal/ag:h	()Lcom/google/android/gms/measurement/internal/af;
    //   20: new 16	com/google/android/gms/measurement/internal/ah$6
    //   23: dup
    //   24: aload_0
    //   25: aload_1
    //   26: invokespecial 135	com/google/android/gms/measurement/internal/ah$6:<init>	(Lcom/google/android/gms/measurement/internal/ah;Lcom/google/android/gms/measurement/internal/AppMetadata;)V
    //   29: invokevirtual 140	com/google/android/gms/measurement/internal/af:a	(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    //   32: astore_1
    //   33: aload_1
    //   34: invokeinterface 146 1 0
    //   39: checkcast 148	java/util/List
    //   42: astore_3
    //   43: new 150	java/util/ArrayList
    //   46: dup
    //   47: aload_3
    //   48: invokeinterface 153 1 0
    //   53: invokespecial 156	java/util/ArrayList:<init>	(I)V
    //   56: astore_1
    //   57: aload_3
    //   58: invokeinterface 160 1 0
    //   63: astore_3
    //   64: aload_3
    //   65: invokeinterface 165 1 0
    //   70: ifeq +67 -> 137
    //   73: aload_3
    //   74: invokeinterface 168 1 0
    //   79: checkcast 170	com/google/android/gms/measurement/internal/j
    //   82: astore 4
    //   84: iload_2
    //   85: ifne +14 -> 99
    //   88: aload 4
    //   90: getfield 171	com/google/android/gms/measurement/internal/j:b	Ljava/lang/String;
    //   93: invokestatic 177	com/google/android/gms/measurement/internal/k:g	(Ljava/lang/String;)Z
    //   96: ifne -32 -> 64
    //   99: aload_1
    //   100: new 179	com/google/android/gms/measurement/internal/UserAttributeParcel
    //   103: dup
    //   104: aload 4
    //   106: invokespecial 182	com/google/android/gms/measurement/internal/UserAttributeParcel:<init>	(Lcom/google/android/gms/measurement/internal/j;)V
    //   109: invokeinterface 186 2 0
    //   114: pop
    //   115: goto -51 -> 64
    //   118: astore_1
    //   119: aload_0
    //   120: getfield 35	com/google/android/gms/measurement/internal/ah:a	Lcom/google/android/gms/measurement/internal/ag;
    //   123: invokevirtual 55	com/google/android/gms/measurement/internal/ag:f	()Lcom/google/android/gms/measurement/internal/z;
    //   126: invokevirtual 60	com/google/android/gms/measurement/internal/z:b	()Lcom/google/android/gms/measurement/internal/z$a;
    //   129: ldc -68
    //   131: aload_1
    //   132: invokevirtual 76	com/google/android/gms/measurement/internal/z$a:a	(Ljava/lang/String;Ljava/lang/Object;)V
    //   135: aconst_null
    //   136: areturn
    //   137: aload_1
    //   138: areturn
    //   139: astore_1
    //   140: goto -21 -> 119
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	143	0	this	ah
    //   0	143	1	paramAppMetadata	AppMetadata
    //   0	143	2	paramBoolean	boolean
    //   42	32	3	localObject	Object
    //   82	23	4	localj	j
    // Exception table:
    //   from	to	target	type
    //   33	64	118	java/lang/InterruptedException
    //   64	84	118	java/lang/InterruptedException
    //   88	99	118	java/lang/InterruptedException
    //   99	115	118	java/lang/InterruptedException
    //   33	64	139	java/util/concurrent/ExecutionException
    //   64	84	139	java/util/concurrent/ExecutionException
    //   88	99	139	java/util/concurrent/ExecutionException
    //   99	115	139	java/util/concurrent/ExecutionException
  }
  
  public void a(final AppMetadata paramAppMetadata)
  {
    zzx.zzz(paramAppMetadata);
    b(b);
    a.h().a(new Runnable()
    {
      public void run()
      {
        a(paramAppMetadatah);
        ah.a(ah.this).b(paramAppMetadata);
      }
    });
  }
  
  public void a(final EventParcel paramEventParcel, final AppMetadata paramAppMetadata)
  {
    zzx.zzz(paramEventParcel);
    zzx.zzz(paramAppMetadata);
    b(b);
    a.h().a(new Runnable()
    {
      public void run()
      {
        a(paramAppMetadatah);
        ah.a(ah.this).a(paramEventParcel, paramAppMetadata);
      }
    });
  }
  
  public void a(final EventParcel paramEventParcel, final String paramString1, final String paramString2)
  {
    zzx.zzz(paramEventParcel);
    zzx.zzcM(paramString1);
    b(paramString1);
    a.h().a(new Runnable()
    {
      public void run()
      {
        a(paramString2);
        ah.a(ah.this).a(paramEventParcel, paramString1);
      }
    });
  }
  
  public void a(final UserAttributeParcel paramUserAttributeParcel, final AppMetadata paramAppMetadata)
  {
    zzx.zzz(paramUserAttributeParcel);
    zzx.zzz(paramAppMetadata);
    b(b);
    if (paramUserAttributeParcel.a() == null)
    {
      a.h().a(new Runnable()
      {
        public void run()
        {
          a(paramAppMetadatah);
          ah.a(ah.this).b(paramUserAttributeParcel, paramAppMetadata);
        }
      });
      return;
    }
    a.h().a(new Runnable()
    {
      public void run()
      {
        a(paramAppMetadatah);
        ah.a(ah.this).a(paramUserAttributeParcel, paramAppMetadata);
      }
    });
  }
  
  void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      paramString = paramString.split(":", 2);
      if (paramString.length != 2) {}
    }
    long l;
    try
    {
      l = Long.valueOf(paramString[0]).longValue();
      if (l > 0L)
      {
        a.e().b.a(paramString[1], l);
        return;
      }
    }
    catch (NumberFormatException localNumberFormatException)
    {
      a.f().c().a("Combining sample with a non-number weight", paramString[0]);
      return;
    }
    a.f().c().a("Combining sample with a non-positive weight", Long.valueOf(l));
  }
  
  public void b(final AppMetadata paramAppMetadata)
  {
    zzx.zzz(paramAppMetadata);
    b(b);
    a.h().a(new Runnable()
    {
      public void run()
      {
        a(paramAppMetadatah);
        ah.a(ah.this).a(paramAppMetadata);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */