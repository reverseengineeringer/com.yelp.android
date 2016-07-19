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
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.g;
import com.yelp.android.bj.i;
import com.yelp.android.bj.l;
import com.yelp.android.bj.n.a;
import com.yelp.android.bj.q;
import com.yelp.android.bj.s;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class StreetViewPanoramaView
  extends FrameLayout
{
  private final b a;
  private h b;
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a = new b(this, paramContext, null);
  }
  
  public StreetViewPanoramaView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a = new b(this, paramContext, null);
  }
  
  @Deprecated
  public final h getStreetViewPanorama()
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
      b = new h(((a)a.a()).f().a());
      return b;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  static class a
    implements l
  {
    private final ViewGroup a;
    private final i b;
    private View c;
    
    public a(ViewGroup paramViewGroup, i parami)
    {
      b = ((i)zzx.zzz(parami));
      a = ((ViewGroup)zzx.zzz(paramViewGroup));
    }
    
    public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
    {
      throw new UnsupportedOperationException("onCreateView not allowed on StreetViewPanoramaViewDelegate");
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
      throw new UnsupportedOperationException("onInflate not allowed on StreetViewPanoramaViewDelegate");
    }
    
    public void a(Bundle paramBundle)
    {
      try
      {
        b.a(paramBundle);
        c = ((View)d.a(b.f()));
        a.removeAllViews();
        a.addView(c);
        return;
      }
      catch (RemoteException paramBundle)
      {
        throw new RuntimeRemoteException(paramBundle);
      }
    }
    
    public void a(final f paramf)
    {
      try
      {
        b.a(new n.a()
        {
          public void a(g paramAnonymousg)
            throws RemoteException
          {
            paramf.a(new h(paramAnonymousg));
          }
        });
        return;
      }
      catch (RemoteException paramf)
      {
        throw new RuntimeRemoteException(paramf);
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
      throw new UnsupportedOperationException("onDestroyView not allowed on StreetViewPanoramaViewDelegate");
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
    
    public i f()
    {
      return b;
    }
  }
  
  static class b
    extends b<StreetViewPanoramaView.a>
  {
    protected e<StreetViewPanoramaView.a> a;
    private final ViewGroup b;
    private final Context c;
    private final StreetViewPanoramaOptions d;
    private final List<f> e = new ArrayList();
    
    b(ViewGroup paramViewGroup, Context paramContext, StreetViewPanoramaOptions paramStreetViewPanoramaOptions)
    {
      b = paramViewGroup;
      c = paramContext;
      d = paramStreetViewPanoramaOptions;
    }
    
    protected void a(e<StreetViewPanoramaView.a> parame)
    {
      a = parame;
      g();
    }
    
    public void g()
    {
      if ((a != null) && (a() == null)) {}
      try
      {
        Object localObject = q.a(c).a(d.a(c), d);
        a.a(new StreetViewPanoramaView.a(b, (i)localObject));
        localObject = e.iterator();
        while (((Iterator)localObject).hasNext())
        {
          f localf = (f)((Iterator)localObject).next();
          ((StreetViewPanoramaView.a)a()).a(localf);
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

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */