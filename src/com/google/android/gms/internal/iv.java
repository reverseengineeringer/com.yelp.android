package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.RemoteException;
import com.google.android.gms.appdatasearch.UsageInfo;
import com.google.android.gms.appdatasearch.UsageInfo.a;
import com.google.android.gms.appdatasearch.a;
import com.google.android.gms.appdatasearch.k;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zza;
import com.google.android.gms.common.api.internal.zza.zzb;
import com.yelp.android.bh.c;
import com.yelp.android.bh.c.a;
import java.util.Iterator;
import java.util.List;

public final class iv
  implements k, c
{
  public static Intent a(String paramString, Uri paramUri)
  {
    b(paramString, paramUri);
    if (b(paramUri)) {
      return new Intent("android.intent.action.VIEW", paramUri);
    }
    if (c(paramUri)) {
      return new Intent("android.intent.action.VIEW", a(paramUri));
    }
    throw new RuntimeException("appIndexingUri is neither an HTTP(S) URL nor an \"android-app://\" URL: " + paramUri);
  }
  
  private static Uri a(Uri paramUri)
  {
    List localList = paramUri.getPathSegments();
    String str = (String)localList.get(0);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme(str);
    if (localList.size() > 1)
    {
      localBuilder.authority((String)localList.get(1));
      int i = 2;
      while (i < localList.size())
      {
        localBuilder.appendPath((String)localList.get(i));
        i += 1;
      }
    }
    localBuilder.encodedQuery(paramUri.getEncodedQuery());
    localBuilder.encodedFragment(paramUri.getEncodedFragment());
    return localBuilder.build();
  }
  
  public static void a(List<c.a> paramList)
  {
    if (paramList == null) {}
    for (;;)
    {
      return;
      paramList = paramList.iterator();
      while (paramList.hasNext()) {
        b(null, nexta);
      }
    }
  }
  
  private static void b(String paramString, Uri paramUri)
  {
    if (b(paramUri))
    {
      if (paramUri.getHost().isEmpty()) {
        throw new IllegalArgumentException("AppIndex: The web URL must have a host (follow the format http(s)://<host>/[path]). Provided URI: " + paramUri);
      }
    }
    else if (c(paramUri))
    {
      if ((paramString != null) && (!paramString.equals(paramUri.getHost()))) {
        throw new IllegalArgumentException("AppIndex: The android-app URI host must match the package name and follow the format android-app://<package_name>/<scheme>/[host_path]. Provided URI: " + paramUri);
      }
      paramString = paramUri.getPathSegments();
      if ((paramString.isEmpty()) || (((String)paramString.get(0)).isEmpty())) {
        throw new IllegalArgumentException("AppIndex: The app URI scheme must exist and follow the format android-app://<package_name>/<scheme>/[host_path]). Provided URI: " + paramUri);
      }
    }
    else
    {
      throw new IllegalArgumentException("AppIndex: The URI scheme must either be 'http(s)' or 'android-app'. If the latter, it must follow the format 'android-app://<package_name>/<scheme>/[host_path]'. Provided URI: " + paramUri);
    }
  }
  
  private static boolean b(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equals(paramUri)) || ("https".equals(paramUri));
  }
  
  private static boolean c(Uri paramUri)
  {
    return "android-app".equals(paramUri.getScheme());
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Intent paramIntent)
  {
    paramActivity = paramGoogleApiClient.getContext().getPackageName();
    return a(paramGoogleApiClient, new UsageInfo[] { new UsageInfo.a().a(UsageInfo.a(paramActivity, paramIntent)).a(System.currentTimeMillis()).a(0).b(2).a() });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Intent paramIntent, String paramString, Uri paramUri, List<c.a> paramList)
  {
    paramActivity = paramGoogleApiClient.getContext().getPackageName();
    a(paramList);
    return a(paramGoogleApiClient, new UsageInfo[] { new UsageInfo(paramActivity, paramIntent, paramString, paramUri, null, paramList, 1) });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri)
  {
    return a(paramGoogleApiClient, paramActivity, a(paramGoogleApiClient.getContext().getPackageName(), paramUri));
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, Activity paramActivity, Uri paramUri1, String paramString, Uri paramUri2, List<c.a> paramList)
  {
    String str = paramGoogleApiClient.getContext().getPackageName();
    b(str, paramUri1);
    return a(paramGoogleApiClient, paramActivity, a(str, paramUri1), paramString, paramUri2, paramList);
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final UsageInfo... paramVarArgs)
  {
    paramGoogleApiClient.zza(new b(paramGoogleApiClient)
    {
      protected void a(ir paramAnonymousir)
        throws RemoteException
      {
        paramAnonymousir.a(new iv.c(this), a, paramVarArgs);
      }
    });
  }
  
  private static abstract class a<T extends Result>
    extends zza.zza<T, iu>
  {
    public a(GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
    
    protected abstract void a(ir paramir)
      throws RemoteException;
    
    protected final void a(iu paramiu)
      throws RemoteException
    {
      a(paramiu.a());
    }
  }
  
  private static abstract class b<T extends Result>
    extends iv.a<Status>
  {
    b(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    protected Status a(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static final class c
    extends it<Status>
  {
    public c(zza.zzb<Status> paramzzb)
    {
      super();
    }
    
    public void a(Status paramStatus)
    {
      a.zzs(paramStatus);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */