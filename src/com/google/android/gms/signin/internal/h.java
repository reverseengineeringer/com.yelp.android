package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzj.zzf;
import com.google.android.gms.common.internal.zzp;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lf;
import com.google.android.gms.internal.lg;
import com.yelp.android.bi.a;

public class h
  extends zzj<e>
  implements lf
{
  private final boolean a;
  private final zzf b;
  private final Bundle c;
  private Integer d;
  
  public h(Context paramContext, Looper paramLooper, boolean paramBoolean, zzf paramzzf, Bundle paramBundle, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    super(paramContext, paramLooper, 44, paramzzf, paramConnectionCallbacks, paramOnConnectionFailedListener);
    a = paramBoolean;
    b = paramzzf;
    c = paramBundle;
    d = paramzzf.zzqz();
  }
  
  public h(Context paramContext, Looper paramLooper, boolean paramBoolean, zzf paramzzf, lg paramlg, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext, paramLooper, paramBoolean, paramzzf, a(paramzzf), paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  public static Bundle a(zzf paramzzf)
  {
    lg locallg = paramzzf.zzqy();
    Integer localInteger = paramzzf.zzqz();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", paramzzf.getAccount());
    if (localInteger != null) {
      localBundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", localInteger.intValue());
    }
    if (locallg != null)
    {
      localBundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", locallg.a());
      localBundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", locallg.b());
      localBundle.putString("com.google.android.gms.signin.internal.serverClientId", locallg.c());
      localBundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
      localBundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", locallg.d());
      localBundle.putString("com.google.android.gms.signin.internal.hostedDomain", locallg.e());
      localBundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", locallg.f());
    }
    return localBundle;
  }
  
  private ResolveAccountRequest c()
  {
    Account localAccount = b.zzqq();
    GoogleSignInAccount localGoogleSignInAccount = null;
    if ("<<default account>>".equals(name)) {
      localGoogleSignInAccount = a.a(getContext()).a();
    }
    return new ResolveAccountRequest(localAccount, d.intValue(), localGoogleSignInAccount);
  }
  
  protected e a(IBinder paramIBinder)
  {
    return e.a.a(paramIBinder);
  }
  
  public void a()
  {
    try
    {
      ((e)zzqJ()).a(d.intValue());
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
    }
  }
  
  public void a(zzp paramzzp, boolean paramBoolean)
  {
    try
    {
      ((e)zzqJ()).a(paramzzp, d.intValue(), paramBoolean);
      return;
    }
    catch (RemoteException paramzzp)
    {
      Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
    }
  }
  
  public void a(d paramd)
  {
    zzx.zzb(paramd, "Expecting a valid ISignInCallbacks");
    try
    {
      ResolveAccountRequest localResolveAccountRequest = c();
      ((e)zzqJ()).a(new SignInRequest(localResolveAccountRequest), paramd);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
      try
      {
        paramd.zzb(new SignInResponse(8));
        return;
      }
      catch (RemoteException paramd)
      {
        Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", localRemoteException);
      }
    }
  }
  
  public void b()
  {
    zza(new zzj.zzf(this));
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.signin.service.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.signin.internal.ISignInService";
  }
  
  public boolean zzmE()
  {
    return a;
  }
  
  protected Bundle zzml()
  {
    String str = b.zzqv();
    if (!getContext().getPackageName().equals(str)) {
      c.putString("com.google.android.gms.signin.internal.realClientPackageName", b.zzqv());
    }
    return c;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */