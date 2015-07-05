package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class x
{
  private static Context alI;
  private static c alJ;
  
  public static c S(Context paramContext)
  {
    jx.i(paramContext);
    if (alJ != null) {
      return alJ;
    }
    T(paramContext);
    alJ = U(paramContext);
    try
    {
      alJ.a(e.k(getRemoteContext(paramContext).getResources()), 6587000);
      return alJ;
    }
    catch (RemoteException paramContext)
    {
      throw new RuntimeRemoteException(paramContext);
    }
  }
  
  private static void T(Context paramContext)
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    switch (i)
    {
    default: 
      throw new GooglePlayServicesNotAvailableException(i);
    }
  }
  
  private static c U(Context paramContext)
  {
    if (nY())
    {
      Log.i(x.class.getSimpleName(), "Making Creator statically");
      return (c)c(nZ());
    }
    Log.i(x.class.getSimpleName(), "Making Creator dynamically");
    return c.a.aS((IBinder)a(getRemoteContext(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = c(((ClassLoader)jx.i(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  private static <T> T c(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
    }
  }
  
  private static Context getRemoteContext(Context paramContext)
  {
    if (alI == null) {
      if (!nY()) {
        break label23;
      }
    }
    label23:
    for (alI = paramContext.getApplicationContext();; alI = GooglePlayServicesUtil.getRemoteContext(paramContext)) {
      return alI;
    }
  }
  
  public static boolean nY()
  {
    return false;
  }
  
  private static Class<?> nZ()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 15) {
        return Class.forName("com.google.android.gms.maps.internal.CreatorImplGmm6");
      }
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */