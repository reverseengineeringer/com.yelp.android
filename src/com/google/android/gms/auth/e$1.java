package com.google.android.gms.auth;

import android.accounts.Account;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.auth.firstparty.shared.zzd;
import com.google.android.gms.internal.m;
import com.google.android.gms.internal.m.a;
import java.io.IOException;

final class e$1
  implements e.a<TokenData>
{
  e$1(Account paramAccount, String paramString, Bundle paramBundle) {}
  
  public TokenData a(IBinder paramIBinder)
    throws RemoteException, IOException, GoogleAuthException
  {
    Object localObject = (Bundle)e.a(m.a.a(paramIBinder).a(a, b, c));
    paramIBinder = TokenData.a((Bundle)localObject, "tokenDetails");
    if (paramIBinder != null) {
      return paramIBinder;
    }
    paramIBinder = ((Bundle)localObject).getString("Error");
    localObject = (Intent)((Bundle)localObject).getParcelable("userRecoveryIntent");
    zzd localzzd = zzd.zzbY(paramIBinder);
    if (zzd.zza(localzzd)) {
      throw new UserRecoverableAuthException(paramIBinder, (Intent)localObject);
    }
    if (zzd.zzc(localzzd)) {
      throw new IOException(paramIBinder);
    }
    throw new GoogleAuthException(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */