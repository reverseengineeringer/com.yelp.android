package com.google.android.gms.auth;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.auth.firstparty.shared.zzd;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zze;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.m.a;
import java.io.IOException;

public class e
{
  private static final ComponentName a;
  private static final ComponentName b;
  public static final String c;
  public static final String d;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      c = "callerUid";
      if (Build.VERSION.SDK_INT < 14) {
        break label58;
      }
    }
    label58:
    for (;;)
    {
      d = "androidPackageName";
      a = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");
      b = new ComponentName("com.google.android.gms", "com.google.android.gms.recovery.RecoveryService");
      return;
      break;
    }
  }
  
  /* Error */
  private static <T> T a(Context paramContext, ComponentName paramComponentName, a<T> parama)
    throws IOException, GoogleAuthException
  {
    // Byte code:
    //   0: new 58	com/google/android/gms/common/zza
    //   3: dup
    //   4: invokespecial 60	com/google/android/gms/common/zza:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: invokestatic 66	com/google/android/gms/common/internal/zzl:zzau	(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;
    //   12: astore 4
    //   14: aload 4
    //   16: aload_1
    //   17: aload_3
    //   18: ldc 68
    //   20: invokevirtual 72	com/google/android/gms/common/internal/zzl:zza	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z
    //   23: ifeq +58 -> 81
    //   26: aload_2
    //   27: aload_3
    //   28: invokevirtual 76	com/google/android/gms/common/zza:zzoJ	()Landroid/os/IBinder;
    //   31: invokeinterface 79 2 0
    //   36: astore_0
    //   37: aload 4
    //   39: aload_1
    //   40: aload_3
    //   41: ldc 68
    //   43: invokevirtual 83	com/google/android/gms/common/internal/zzl:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   46: aload_0
    //   47: areturn
    //   48: astore_0
    //   49: ldc 68
    //   51: ldc 85
    //   53: aload_0
    //   54: invokestatic 91	android/util/Log:i	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    //   57: pop
    //   58: new 50	java/io/IOException
    //   61: dup
    //   62: ldc 85
    //   64: aload_0
    //   65: invokespecial 94	java/io/IOException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   68: athrow
    //   69: astore_0
    //   70: aload 4
    //   72: aload_1
    //   73: aload_3
    //   74: ldc 68
    //   76: invokevirtual 83	com/google/android/gms/common/internal/zzl:zzb	(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V
    //   79: aload_0
    //   80: athrow
    //   81: new 50	java/io/IOException
    //   84: dup
    //   85: ldc 96
    //   87: invokespecial 99	java/io/IOException:<init>	(Ljava/lang/String;)V
    //   90: athrow
    //   91: astore_0
    //   92: goto -43 -> 49
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	95	0	paramContext	Context
    //   0	95	1	paramComponentName	ComponentName
    //   0	95	2	parama	a<T>
    //   7	67	3	localzza	com.google.android.gms.common.zza
    //   12	59	4	localzzl	com.google.android.gms.common.internal.zzl
    // Exception table:
    //   from	to	target	type
    //   26	37	48	java/lang/InterruptedException
    //   26	37	69	finally
    //   49	69	69	finally
    //   26	37	91	android/os/RemoteException
  }
  
  public static String a(Context paramContext, Account paramAccount, String paramString)
    throws IOException, UserRecoverableAuthException, GoogleAuthException
  {
    return a(paramContext, paramAccount, paramString, new Bundle());
  }
  
  public static String a(Context paramContext, Account paramAccount, String paramString, Bundle paramBundle)
    throws IOException, UserRecoverableAuthException, GoogleAuthException
  {
    return b(paramContext, paramAccount, paramString, paramBundle).a();
  }
  
  private static void a(Context paramContext)
    throws GoogleAuthException
  {
    try
    {
      zze.zzad(paramContext.getApplicationContext());
      return;
    }
    catch (GooglePlayServicesRepairableException paramContext)
    {
      throw new GooglePlayServicesAvailabilityException(paramContext.getConnectionStatusCode(), paramContext.getMessage(), paramContext.getIntent());
    }
    catch (GooglePlayServicesNotAvailableException paramContext)
    {
      throw new GoogleAuthException(paramContext.getMessage());
    }
  }
  
  public static TokenData b(Context paramContext, Account paramAccount, final String paramString, final Bundle paramBundle)
    throws IOException, UserRecoverableAuthException, GoogleAuthException
  {
    zzx.zzcE("Calling this from your main thread can lead to deadlock");
    a(paramContext);
    if (paramBundle == null) {}
    for (paramBundle = new Bundle();; paramBundle = new Bundle(paramBundle))
    {
      String str = getApplicationInfopackageName;
      paramBundle.putString("clientPackageName", str);
      if (TextUtils.isEmpty(paramBundle.getString(d))) {
        paramBundle.putString(d, str);
      }
      paramBundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
      paramAccount = new a()
      {
        public TokenData a(IBinder paramAnonymousIBinder)
          throws RemoteException, IOException, GoogleAuthException
        {
          Object localObject = (Bundle)e.a(m.a.a(paramAnonymousIBinder).a(a, paramString, paramBundle));
          paramAnonymousIBinder = TokenData.a((Bundle)localObject, "tokenDetails");
          if (paramAnonymousIBinder != null) {
            return paramAnonymousIBinder;
          }
          paramAnonymousIBinder = ((Bundle)localObject).getString("Error");
          localObject = (Intent)((Bundle)localObject).getParcelable("userRecoveryIntent");
          zzd localzzd = zzd.zzbY(paramAnonymousIBinder);
          if (zzd.zza(localzzd)) {
            throw new UserRecoverableAuthException(paramAnonymousIBinder, (Intent)localObject);
          }
          if (zzd.zzc(localzzd)) {
            throw new IOException(paramAnonymousIBinder);
          }
          throw new GoogleAuthException(paramAnonymousIBinder);
        }
      };
      return (TokenData)a(paramContext, a, paramAccount);
    }
  }
  
  private static <T> T b(T paramT)
    throws IOException
  {
    if (paramT == null)
    {
      Log.w("GoogleAuthUtil", "Binder call returned null.");
      throw new IOException("Service unavailable.");
    }
    return paramT;
  }
  
  @Deprecated
  public static String b(Context paramContext, String paramString1, String paramString2)
    throws IOException, UserRecoverableAuthException, GoogleAuthException
  {
    return a(paramContext, new Account(paramString1, "com.google"), paramString2);
  }
  
  @Deprecated
  public static void b(Context paramContext, String paramString)
  {
    AccountManager.get(paramContext).invalidateAuthToken("com.google", paramString);
  }
  
  private static abstract interface a<T>
  {
    public abstract T b(IBinder paramIBinder)
      throws RemoteException, IOException, GoogleAuthException;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */