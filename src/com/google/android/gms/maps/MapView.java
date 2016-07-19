package com.google.android.gms.maps;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.ae.a;
import com.yelp.android.bj.k;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class MapView
  extends FrameLayout
{
  private final b a;
  private c b;
  
  public MapView(Context paramContext)
  {
    super(paramContext);
    a = new b(this, paramContext, null);
    e();
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new b(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    e();
  }
  
  public MapView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new b(this, paramContext, GoogleMapOptions.a(paramContext, paramAttributeSet));
    e();
  }
  
  public MapView(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    a = new b(this, paramContext, paramGoogleMapOptions);
    e();
  }
  
  private void e()
  {
    setClickable(true);
  }
  
  public final void a()
  {
    a.b();
  }
  
  public final void a(Bundle paramBundle)
  {
    a.a(paramBundle);
    if (a.a() == null) {
      com.google.android.gms.dynamic.b.b(this);
    }
  }
  
  public void a(e parame)
  {
    zzx.zzcD("getMapAsync() must be called on the main thread");
    a.a(parame);
  }
  
  public final void b()
  {
    a.c();
  }
  
  public final void b(Bundle paramBundle)
  {
    a.b(paramBundle);
  }
  
  public final void c()
  {
    a.e();
  }
  
  public final void d()
  {
    a.f();
  }
  
  @Deprecated
  public final c getMap()
  {
    if (b != null) {
      return b;
    }
    a.g();
    if (a.a() == null) {
      return null;
    }
    try
    {
      b = new c(((a)a.a()).f().a());
      return b;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  static class a
    implements k
  {
    private final ViewGroup a;
    private final com.yelp.android.bj.e b;
    private View c;
    
    public a(ViewGroup paramViewGroup, com.yelp.android.bj.e parame)
    {
      b = ((com.yelp.android.bj.e)zzx.zzz(parame));
      a = ((ViewGroup)zzx.zzz(paramViewGroup));
    }
    
    public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      throw new UnsupportedOperationException("onCreateView not allowed on MapViewDelegate");
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
      throw new UnsupportedOperationException("onInflate not allowed on MapViewDelegate");
    }
    
    public void a(Bundle paramBundle)
    {
      try
      {
        b.a(paramBundle);
        c = ((View)com.google.android.gms.dynamic.d.a(b.f()));
        a.removeAllViews();
        a.addView(c);
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
      throw new UnsupportedOperationException("onDestroyView not allowed on MapViewDelegate");
    }
    
    public void d()
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
    
    public void e()
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
    
    public com.yelp.android.bj.e f()
    {
      return b;
    }
  }
  
  static class b
    extends com.google.android.gms.dynamic.b<MapView.a>
  {
    protected com.google.android.gms.dynamic.e<MapView.a> a;
    private final ViewGroup b;
    private final Context c;
    private final GoogleMapOptions d;
    private final List<e> e = new ArrayList();
    
    b(ViewGroup paramViewGroup, Context paramContext, GoogleMapOptions paramGoogleMapOptions)
    {
      b = paramViewGroup;
      c = paramContext;
      d = paramGoogleMapOptions;
    }
    
    protected void a(com.google.android.gms.dynamic.e<MapView.a> parame)
    {
      a = parame;
      g();
    }
    
    public void a(e parame)
    {
      if (a() != null)
      {
        ((MapView.a)a()).a(parame);
        return;
      }
      e.add(parame);
    }
    
    public void g()
    {
      if ((a != null) && (a() == null)) {
        try
        {
          d.a(c);
          Object localObject = q.a(c).a(com.google.android.gms.dynamic.d.a(c), d);
          if (localObject == null) {
            return;
          }
          a.a(new MapView.a(b, (com.yelp.android.bj.e)localObject));
          localObject = e.iterator();
          while (((Iterator)localObject).hasNext())
          {
            e locale = (e)((Iterator)localObject).next();
            ((MapView.a)a()).a(locale);
          }
          return;
        }
        catch (RemoteException localRemoteException)
        {
          throw new RuntimeRemoteException(localRemoteException);
          e.clear();
          return;
        }
        catch (GooglePlayServicesNotAvailableException localGooglePlayServicesNotAvailableException) {}
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.MapView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */