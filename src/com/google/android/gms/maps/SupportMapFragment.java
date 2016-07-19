package com.google.android.gms.maps;

import android.app.Activity;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.ae.a;
import com.yelp.android.bj.k;
import com.yelp.android.bj.p;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SupportMapFragment
  extends Fragment
{
  private final b a = new b(this);
  
  public void onActivityCreated(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onActivityCreated(paramBundle);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    b.a(a, paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a.a(paramBundle);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = a.a(paramLayoutInflater, paramViewGroup, paramBundle);
    paramLayoutInflater.setClickable(true);
    return paramLayoutInflater;
  }
  
  public void onDestroy()
  {
    a.e();
    super.onDestroy();
  }
  
  public void onDestroyView()
  {
    a.d();
    super.onDestroyView();
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    b.a(a, paramActivity);
    paramAttributeSet = GoogleMapOptions.a(paramActivity, paramAttributeSet);
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("MapOptions", paramAttributeSet);
    a.a(paramActivity, localBundle, paramBundle);
  }
  
  public void onLowMemory()
  {
    a.f();
    super.onLowMemory();
  }
  
  public void onPause()
  {
    a.c();
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    a.b();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (paramBundle != null) {
      paramBundle.setClassLoader(SupportMapFragment.class.getClassLoader());
    }
    super.onSaveInstanceState(paramBundle);
    a.b(paramBundle);
  }
  
  public void setArguments(Bundle paramBundle)
  {
    super.setArguments(paramBundle);
  }
  
  static class a
    implements k
  {
    private final Fragment a;
    private final com.yelp.android.bj.d b;
    
    public a(Fragment paramFragment, com.yelp.android.bj.d paramd)
    {
      b = ((com.yelp.android.bj.d)zzx.zzz(paramd));
      a = ((Fragment)zzx.zzz(paramFragment));
    }
    
    public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      try
      {
        paramLayoutInflater = b.a(com.google.android.gms.dynamic.d.a(paramLayoutInflater), com.google.android.gms.dynamic.d.a(paramViewGroup), paramBundle);
        return (View)com.google.android.gms.dynamic.d.a(paramLayoutInflater);
      }
      catch (RemoteException paramLayoutInflater)
      {
        throw new RuntimeRemoteException(paramLayoutInflater);
      }
    }
    
    public void a()
    {
      try
      {
        b.b();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void a(Activity paramActivity, Bundle paramBundle1, Bundle paramBundle2)
    {
      paramBundle1 = (GoogleMapOptions)paramBundle1.getParcelable("MapOptions");
      try
      {
        b.a(com.google.android.gms.dynamic.d.a(paramActivity), paramBundle1, paramBundle2);
        return;
      }
      catch (RemoteException paramActivity)
      {
        throw new RuntimeRemoteException(paramActivity);
      }
    }
    
    public void a(Bundle paramBundle)
    {
      Bundle localBundle = paramBundle;
      if (paramBundle == null) {}
      try
      {
        localBundle = new Bundle();
        paramBundle = a.getArguments();
        if ((paramBundle != null) && (paramBundle.containsKey("MapOptions"))) {
          p.a(localBundle, "MapOptions", paramBundle.getParcelable("MapOptions"));
        }
        b.a(localBundle);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new RuntimeRemoteException(paramBundle);
      }
    }
    
    public void a(final e parame)
    {
      try
      {
        b.a(new ae.a()
        {
          public void a(com.yelp.android.bj.b paramAnonymousb)
            throws RemoteException
          {
            parame.a(new c(paramAnonymousb));
          }
        });
        return;
      }
      catch (RemoteException parame)
      {
        throw new RuntimeRemoteException(parame);
      }
    }
    
    public void b()
    {
      try
      {
        b.c();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void b(Bundle paramBundle)
    {
      try
      {
        b.b(paramBundle);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new RuntimeRemoteException(paramBundle);
      }
    }
    
    public void c()
    {
      try
      {
        b.d();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void d()
    {
      try
      {
        b.e();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
    
    public void e()
    {
      try
      {
        b.f();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        throw new RuntimeRemoteException(localRemoteException);
      }
    }
  }
  
  static class b
    extends com.google.android.gms.dynamic.b<SupportMapFragment.a>
  {
    protected com.google.android.gms.dynamic.e<SupportMapFragment.a> a;
    private final Fragment b;
    private Activity c;
    private final List<e> d = new ArrayList();
    
    b(Fragment paramFragment)
    {
      b = paramFragment;
    }
    
    private void a(Activity paramActivity)
    {
      c = paramActivity;
      g();
    }
    
    protected void a(com.google.android.gms.dynamic.e<SupportMapFragment.a> parame)
    {
      a = parame;
      g();
    }
    
    public void g()
    {
      if ((c != null) && (a != null) && (a() == null)) {
        try
        {
          d.a(c);
          Object localObject = q.a(c).b(com.google.android.gms.dynamic.d.a(c));
          if (localObject == null) {
            return;
          }
          a.a(new SupportMapFragment.a(b, (com.yelp.android.bj.d)localObject));
          localObject = d.iterator();
          while (((Iterator)localObject).hasNext())
          {
            e locale = (e)((Iterator)localObject).next();
            ((SupportMapFragment.a)a()).a(locale);
          }
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new RuntimeRemoteException(localRemoteException);
          d.clear();
          return;
        }
        catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.SupportMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */