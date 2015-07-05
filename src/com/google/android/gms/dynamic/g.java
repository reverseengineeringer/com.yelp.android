package com.google.android.gms.dynamic;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.jx;

public abstract class g<T>
{
  private final String TI;
  private T TJ;
  
  protected g(String paramString)
  {
    TI = paramString;
  }
  
  protected final T L(Context paramContext)
  {
    if (TJ == null)
    {
      jx.i(paramContext);
      paramContext = GooglePlayServicesUtil.getRemoteContext(paramContext);
      if (paramContext == null) {
        throw new g.a("Could not get remote context.");
      }
      paramContext = paramContext.getClassLoader();
    }
    try
    {
      TJ = d((IBinder)paramContext.loadClass(TI).newInstance());
      return (T)TJ;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new g.a("Could not load creator class.", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new g.a("Could not instantiate creator.", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new g.a("Could not access creator.", paramContext);
    }
  }
  
  protected abstract T d(IBinder paramIBinder);
}

/* Location:
 * Qualified Name:     com.google.android.gms.dynamic.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */