package com.yelp.android.bj;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public class q
{
  private static Context a;
  private static s b;
  
  public static s a(Context paramContext)
    throws GooglePlayServicesNotAvailableException
  {
    zzx.zzz(paramContext);
    if (b != null) {
      return b;
    }
    b(paramContext);
    b = c(paramContext);
    try
    {
      b.a(d.a(d(paramContext).getResources()), GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_VERSION_CODE);
      return b;
    }
    catch (RemoteException paramContext)
    {
      throw new RuntimeRemoteException(paramContext);
    }
  }
  
  private static <T> T a(Class<?> paramClass)
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
  
  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = a(((ClassLoader)zzx.zzz(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  public static boolean a()
  {
    return false;
  }
  
  private static Class<?> b()
  {
    try
    {
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
  }
  
  private static void b(Context paramContext)
    throws GooglePlayServicesNotAvailableException
  {
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext);
    switch (i)
    {
    default: 
      throw new GooglePlayServicesNotAvailableException(i);
    }
  }
  
  private static s c(Context paramContext)
  {
    if (a())
    {
      Log.i(q.class.getSimpleName(), "Making Creator statically");
      return (s)a(b());
    }
    Log.i(q.class.getSimpleName(), "Making Creator dynamically");
    return s.a.a((IBinder)a(d(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static Context d(Context paramContext)
  {
    if (a == null) {
      if (!a()) {
        break label23;
      }
    }
    label23:
    for (a = paramContext.getApplicationContext();; a = GooglePlayServicesUtil.getRemoteContext(paramContext)) {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bj.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */