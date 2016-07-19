package com.yelp.android.ui.map;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.RectF;
import android.location.Location;
import android.os.Bundle;
import android.util.AttributeSet;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.b;
import com.google.android.gms.maps.c.a;
import com.google.android.gms.maps.c.c;
import com.google.android.gms.maps.c.d;
import com.google.android.gms.maps.c.f;
import com.google.android.gms.maps.g;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBounds.a;
import com.google.android.gms.maps.model.MarkerOptions;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.k;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import java.util.Iterator;
import java.util.List;

public class YelpMap<T extends com.yelp.android.serializable.f>
  extends SpannableFrameLayout
  implements c.c, c.d, e.a<T>, f.a
{
  private MapView b;
  private GoogleMapOptions c;
  private c.c i;
  private e<T> j;
  private e.a<T> k;
  private List<T> l;
  private RectF m;
  private com.google.android.gms.maps.model.c n;
  private LatLng o;
  private double p;
  private int q = 0;
  
  public YelpMap(Context paramContext, Location paramLocation)
  {
    this(paramContext, a(paramLocation));
  }
  
  public YelpMap(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public YelpMap(Context paramContext, GoogleMapOptions paramGoogleMapOptions)
  {
    super(paramContext);
    setOptions(paramGoogleMapOptions);
  }
  
  public static GoogleMapOptions a(Location paramLocation)
  {
    CameraPosition localCameraPosition = null;
    if (paramLocation != null) {
      localCameraPosition = CameraPosition.b().a(new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude())).a(16.0F).a();
    }
    return b(localCameraPosition);
  }
  
  private void a(final T paramT, final a<T> parama)
  {
    final LatLng localLatLng = paramT.b();
    q += 1;
    final int i1 = q;
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        paramAnonymousc = paramAnonymousc.a(new MarkerOptions().a(false).a(localLatLng).a(parama.a(paramT)).a("marker " + i1).a(0.5F, 1.0F));
        YelpMap.a(YelpMap.this).a(paramT, paramAnonymousc);
        YelpMap.a(YelpMap.this, paramAnonymousc);
      }
    });
  }
  
  private void a(final boolean paramBoolean)
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        if (paramBoolean) {}
        for (c.c localc = jdField_this;; localc = null)
        {
          paramAnonymousc.a(localc);
          return;
        }
      }
    });
  }
  
  public static GoogleMapOptions b(CameraPosition paramCameraPosition)
  {
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (paramCameraPosition != null) {
      localGoogleMapOptions.a(paramCameraPosition);
    }
    localGoogleMapOptions.d(true);
    localGoogleMapOptions.h(true);
    localGoogleMapOptions.e(true);
    localGoogleMapOptions.g(true);
    localGoogleMapOptions.c(false);
    localGoogleMapOptions.f(true);
    localGoogleMapOptions.j(false);
    return localGoogleMapOptions;
  }
  
  private void b(boolean paramBoolean)
  {
    e locale;
    if (j != null)
    {
      locale = j;
      if (!paramBoolean) {
        break label26;
      }
    }
    label26:
    for (YelpMap localYelpMap = this;; localYelpMap = null)
    {
      locale.a(localYelpMap);
      return;
    }
  }
  
  public static GoogleMapOptions getReadOnlyOptions()
  {
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    localGoogleMapOptions.d(false);
    localGoogleMapOptions.h(false);
    localGoogleMapOptions.e(false);
    localGoogleMapOptions.g(false);
    localGoogleMapOptions.c(false);
    localGoogleMapOptions.f(false);
    localGoogleMapOptions.j(false);
    return localGoogleMapOptions;
  }
  
  public LatLngBounds a(List<T> paramList)
  {
    LatLng localLatLng = null;
    o = ((com.yelp.android.serializable.f)paramList.get(0)).b();
    double d4 = o.a;
    double d3 = o.a;
    double d2 = o.b;
    double d1 = o.b;
    Iterator localIterator = paramList.iterator();
    paramList = localLatLng;
    label147:
    double d5;
    double d6;
    while (localIterator.hasNext())
    {
      localLatLng = ((com.yelp.android.serializable.f)localIterator.next()).b();
      if ((!Double.isNaN(a)) && (!Double.isNaN(b)) && (!Double.isInfinite(a)) && (!Double.isInfinite(b)))
      {
        if (paramList != null) {
          break label470;
        }
        paramList = LatLngBounds.b();
        if (com.yelp.android.util.i.a(o.a, o.b, a, b) >= 50.0D) {
          break label473;
        }
        paramList.a(localLatLng);
        d5 = Math.min(d4, a);
        d4 = Math.min(d2, b);
        d2 = Math.max(d3, a);
        d6 = Math.max(d1, b);
        o = new LatLng((d5 + d2) / 2.0D, (d4 + d6) / 2.0D);
        d1 = d5;
        d3 = d4;
        d4 = d6;
      }
    }
    for (;;)
    {
      d5 = d2;
      d6 = d1;
      d1 = d4;
      d2 = d3;
      d3 = d5;
      d4 = d6;
      break;
      d6 = d3;
      d5 = d4;
      if (Math.abs(d3 - d4) < 0.001500000013038516D)
      {
        d5 = (0.001500000013038516D - Math.abs(d3 - d4)) / 2.0D;
        d6 = d3 + d5;
        d5 = d4 - d5;
      }
      d4 = d1;
      d3 = d2;
      if (Math.abs(d1 - d2) < 0.001500000013038516D)
      {
        d3 = (0.001500000013038516D - Math.abs(d1 - d2)) / 2.0D;
        d4 = d1 + d3;
        d3 = d2 - d3;
      }
      paramList = new LatLng(d5 - 5.000000237487257E-4D, d3 - 5.000000237487257E-4D);
      localLatLng = new LatLng(5.000000237487257E-4D + d6, 5.000000237487257E-4D + d4);
      p = com.yelp.android.util.i.a(paramList, o);
      return new LatLngBounds(paramList, localLatLng);
      label470:
      break label147;
      label473:
      d5 = d3;
      d6 = d4;
      d4 = d1;
      d3 = d2;
      d2 = d5;
      d1 = d6;
    }
  }
  
  public void a() {}
  
  public void a(Bundle paramBundle)
  {
    if (b != null)
    {
      Bundle localBundle = new Bundle();
      b.b(localBundle);
      paramBundle.putParcelable("extra.map_view", localBundle);
    }
  }
  
  public void a(Bundle paramBundle, e<T> parame)
  {
    if ((b != null) && (b.getParent() != null)) {
      removeView(b);
    }
    Context localContext = getContext();
    if (c != null)
    {
      b = new MapView(localContext, c);
      if ((localContext instanceof f.a)) {
        ((f.a)localContext).a(b);
      }
      addView(b, 0);
      j = parame;
      new f(localContext, this).a(b);
      if (paramBundle == null) {
        break label157;
      }
      paramBundle = (Bundle)paramBundle.getParcelable("extra.map_view");
    }
    label157:
    for (;;)
    {
      b.a(paramBundle);
      b.a(new com.google.android.gms.maps.e()
      {
        @SuppressLint({"MissingPermission"})
        public void a(com.google.android.gms.maps.c paramAnonymousc)
        {
          paramAnonymousc.a(YelpMap.a(YelpMap.this));
          paramAnonymousc.a(YelpMap.this);
          paramAnonymousc.a(true);
          if (k.a(getContext(), PermissionGroup.LOCATION)) {
            paramAnonymousc.b(true);
          }
        }
      });
      return;
      b = new MapView(localContext);
      break;
    }
  }
  
  public void a(MapView paramMapView) {}
  
  public void a(CameraPosition paramCameraPosition)
  {
    if (i != null) {
      i.a(paramCameraPosition);
    }
  }
  
  public void a(final CameraPosition paramCameraPosition, final c.a parama)
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        paramAnonymousc.a(b.a(paramCameraPosition), parama);
      }
    });
  }
  
  public void a(final LatLngBounds paramLatLngBounds)
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(final com.google.android.gms.maps.c paramAnonymousc)
      {
        try
        {
          paramAnonymousc.a(b.a(paramLatLngBounds, n.a));
          return;
        }
        catch (IllegalStateException localIllegalStateException)
        {
          paramAnonymousc.a(new c.f()
          {
            public void a()
            {
              paramAnonymousc.a(b.a(a, n.a));
            }
          });
        }
      }
    });
  }
  
  public void a(T paramT)
  {
    if (k != null) {
      k.a(paramT);
    }
  }
  
  public void a(List<T> paramList, a<T> parama)
  {
    a(paramList, parama, false);
  }
  
  public void a(List<T> paramList, a<T> parama, boolean paramBoolean)
  {
    Iterator localIterator;
    if ((paramBoolean) && (l != null) && (!l.isEmpty()))
    {
      a(l);
      localIterator = paramList.iterator();
    }
    while (localIterator.hasNext())
    {
      com.yelp.android.serializable.f localf = (com.yelp.android.serializable.f)localIterator.next();
      if (com.yelp.android.util.i.a(localf.b(), o) < p * 1.5D)
      {
        l.add(localf);
        continue;
        l = paramList;
      }
    }
    paramList = paramList.iterator();
    while (paramList.hasNext()) {
      a((com.yelp.android.serializable.f)paramList.next(), parama);
    }
  }
  
  public void b()
  {
    if (b != null) {
      b.b();
    }
  }
  
  public void b(T paramT)
  {
    if (k != null) {
      k.b(paramT);
    }
  }
  
  public void c()
  {
    if (b != null) {
      b.a();
    }
  }
  
  public void c(com.google.android.gms.maps.model.c paramc)
  {
    if (j != null) {
      a((com.yelp.android.serializable.f)j.e(paramc));
    }
  }
  
  public void d()
  {
    if (b != null) {
      b.c();
    }
  }
  
  public void e()
  {
    if (b != null) {
      b.d();
    }
  }
  
  public void f()
  {
    a(false);
    if ((l != null) && (l.size() > 0)) {
      a(a(l));
    }
    setOnCameraUpdate(i);
  }
  
  public void g()
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        YelpMap.a(YelpMap.this).a();
        YelpMap localYelpMap = YelpMap.this;
        if (YelpMap.b(YelpMap.this) != null) {}
        for (boolean bool = true;; bool = false)
        {
          YelpMap.a(localYelpMap, bool);
          paramAnonymousc.b();
          return;
        }
      }
    });
  }
  
  public CameraPosition getCurrentCamera()
  {
    if (b.getMap() != null) {
      return b.getMap().a();
    }
    return null;
  }
  
  public com.google.android.gms.maps.model.c getLastMarker()
  {
    return n;
  }
  
  public MapView getMapView()
  {
    return b;
  }
  
  public double[] getViewableRegion()
  {
    if (b.getMap() != null)
    {
      Object localObject = b.getMap().d();
      LatLng localLatLng1 = ((g)localObject).a(new Point(0, 0));
      localObject = ((g)localObject).a(new Point(b.getWidth(), b.getHeight()));
      LatLng localLatLng2 = b.getMap().a().a;
      return new double[] { a, b, a, b, a, b };
    }
    return null;
  }
  
  public boolean h()
  {
    return (com.yelp.android.appdata.f.a(16)) && (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getContext()) == 0);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (m != null) {
      paramCanvas.clipRect(m);
    }
    super.onDraw(paramCanvas);
  }
  
  public void setClipRect(RectF paramRectF)
  {
    m = paramRectF;
  }
  
  public void setInfoWindowListener(e.a<T> parama)
  {
    k = parama;
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        paramAnonymousc = YelpMap.this;
        if (YelpMap.b(YelpMap.this) != null) {}
        for (boolean bool = true;; bool = false)
        {
          YelpMap.a(paramAnonymousc, bool);
          return;
        }
      }
    });
  }
  
  public void setInteractive(final boolean paramBoolean)
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        paramAnonymousc = paramAnonymousc.c();
        paramAnonymousc.b(paramBoolean);
        paramAnonymousc.a(paramBoolean);
      }
    });
  }
  
  public void setMapMode(final int paramInt)
  {
    b.a(new com.google.android.gms.maps.e()
    {
      public void a(com.google.android.gms.maps.c paramAnonymousc)
      {
        paramAnonymousc.a(paramInt);
      }
    });
  }
  
  public void setMapSpan(MapSpan paramMapSpan)
  {
    a(LatLngBounds.b().a(new LatLng(paramMapSpan.a(), paramMapSpan.b())).a(new LatLng(paramMapSpan.a() + paramMapSpan.d(), paramMapSpan.b() + paramMapSpan.c())).a(new LatLng(paramMapSpan.a() + paramMapSpan.d(), paramMapSpan.b() - paramMapSpan.c())).a(new LatLng(paramMapSpan.a() - paramMapSpan.d(), paramMapSpan.b() + paramMapSpan.c())).a(new LatLng(paramMapSpan.a() - paramMapSpan.d(), paramMapSpan.b() - paramMapSpan.c())).a());
  }
  
  public void setMyLocationButtonEnabled(final boolean paramBoolean)
  {
    if (k.a(getContext(), PermissionGroup.LOCATION)) {
      b.a(new com.google.android.gms.maps.e()
      {
        public void a(com.google.android.gms.maps.c paramAnonymousc)
        {
          paramAnonymousc.c().a(paramBoolean);
        }
      });
    }
  }
  
  public void setOnCameraUpdate(c.c paramc)
  {
    i = paramc;
    if (i != null) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      return;
    }
  }
  
  public void setOptions(GoogleMapOptions paramGoogleMapOptions)
  {
    c = paramGoogleMapOptions;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */