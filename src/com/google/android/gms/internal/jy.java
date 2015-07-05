package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.view.View;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;
import com.google.android.gms.dynamic.g.a;

public final class jy
  extends g<ju>
{
  private static final jy Nt = new jy();
  
  private jy()
  {
    super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
  }
  
  public static View b(Context paramContext, int paramInt1, int paramInt2)
  {
    return Nt.c(paramContext, paramInt1, paramInt2);
  }
  
  private View c(Context paramContext, int paramInt1, int paramInt2)
  {
    try
    {
      d locald = e.k(paramContext);
      paramContext = (View)e.f(((ju)L(paramContext)).a(locald, paramInt1, paramInt2));
      return paramContext;
    }
    catch (Exception paramContext)
    {
      throw new g.a("Could not get button with size " + paramInt1 + " and color " + paramInt2, paramContext);
    }
  }
  
  public ju S(IBinder paramIBinder)
  {
    return ju.a.R(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */