package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.zzg;
import com.google.android.gms.dynamic.zzg.zza;

public final class zzab
  extends zzg<zzu>
{
  private static final zzab zzamw = new zzab();
  
  private zzab()
  {
    super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
  }
  
  public static View zzb(Context paramContext, int paramInt1, int paramInt2, Scope[] paramArrayOfScope)
    throws zzg.zza
  {
    return zzamw.zzc(paramContext, paramInt1, paramInt2, paramArrayOfScope);
  }
  
  private View zzc(Context paramContext, int paramInt1, int paramInt2, Scope[] paramArrayOfScope)
    throws zzg.zza
  {
    try
    {
      paramArrayOfScope = new SignInButtonConfig(paramInt1, paramInt2, paramArrayOfScope);
      c localc = d.a(paramContext);
      paramContext = (View)d.a(((zzu)zzaB(paramContext)).zza(localc, paramArrayOfScope));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new zzg.zza("Could not get button with size " + paramInt1 + " and color " + paramInt2, paramContext);
    }
  }
  
  public zzu zzaV(IBinder paramIBinder)
  {
    return zzu.zza.zzaU(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */