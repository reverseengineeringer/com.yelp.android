package com.yelp.android.ui.map;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.RectF;
import android.location.Location;
import android.os.Bundle;
import android.util.AttributeSet;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMap.CancelableCallback;
import com.google.android.gms.maps.GoogleMap.OnCameraChangeListener;
import com.google.android.gms.maps.GoogleMap.OnInfoWindowClickListener;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.Projection;
import com.google.android.gms.maps.model.CameraPosition;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.LatLngBounds.Builder;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.VisibleRegion;
import com.yelp.android.appdata.ao;
import com.yelp.android.serializable.MapSpan;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.widgets.SpannableFrameLayout;
import com.yelp.android.util.o;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;

public class YelpMap<T extends by>
  extends SpannableFrameLayout
  implements GoogleMap.OnCameraChangeListener, GoogleMap.OnInfoWindowClickListener, f<T>, i
{
  private MapView g;
  private e<T> h;
  private f<T> i;
  private GoogleMap.OnCameraChangeListener j;
  private GoogleMapOptions k;
  private Collection<aa> l;
  private boolean m;
  private RectF n;
  
  public YelpMap(Context paramContext, Location paramLocation)
  {
    this(paramContext, a(paramContext, paramLocation));
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
  
  public static GoogleMapOptions a(Context paramContext)
  {
    paramContext = new GoogleMapOptions();
    paramContext.compassEnabled(false);
    paramContext.rotateGesturesEnabled(false);
    paramContext.scrollGesturesEnabled(false);
    paramContext.tiltGesturesEnabled(false);
    paramContext.zoomControlsEnabled(false);
    paramContext.zoomGesturesEnabled(false);
    paramContext.mapToolbarEnabled(false);
    return paramContext;
  }
  
  public static GoogleMapOptions a(Context paramContext, Location paramLocation)
  {
    CameraPosition localCameraPosition = null;
    if (paramLocation != null) {
      localCameraPosition = CameraPosition.builder().target(new LatLng(paramLocation.getLatitude(), paramLocation.getLongitude())).zoom(16.0F).build();
    }
    return a(paramContext, localCameraPosition);
  }
  
  public static GoogleMapOptions a(Context paramContext, CameraPosition paramCameraPosition)
  {
    paramContext = new GoogleMapOptions();
    if (paramCameraPosition != null) {
      paramContext.camera(paramCameraPosition);
    }
    paramContext.compassEnabled(true);
    paramContext.rotateGesturesEnabled(true);
    paramContext.scrollGesturesEnabled(true);
    paramContext.tiltGesturesEnabled(true);
    paramContext.zoomControlsEnabled(true);
    paramContext.zoomGesturesEnabled(true);
    return paramContext;
  }
  
  private Marker a(T paramT, a<T> parama)
  {
    LatLng localLatLng = paramT.getLatLng();
    parama = new MarkerOptions().draggable(false).position(localLatLng).icon(parama.a(paramT)).anchor(0.5F, 1.0F);
    parama = g.getMap().addMarker(parama);
    h.a(paramT, parama);
    return parama;
  }
  
  private void a(boolean paramBoolean)
  {
    GoogleMap localGoogleMap;
    if (g != null)
    {
      localGoogleMap = g.getMap();
      if (!paramBoolean) {
        break label27;
      }
    }
    label27:
    for (YelpMap localYelpMap = this;; localYelpMap = null)
    {
      localGoogleMap.setOnCameraChangeListener(localYelpMap);
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    e locale;
    if (h != null)
    {
      locale = h;
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
  
  private void g()
  {
    if (g != null)
    {
      Iterator localIterator = l.iterator();
      while (localIterator.hasNext())
      {
        aa localaa = (aa)localIterator.next();
        g.removeCallbacks(localaa);
      }
    }
  }
  
  public LatLngBounds a(List<T> paramList)
  {
    LatLng localLatLng2 = null;
    LatLng localLatLng1 = ((by)paramList.get(0)).getLatLng();
    double d3 = latitude;
    double d1 = latitude;
    double d4 = longitude;
    double d2 = longitude;
    Iterator localIterator = paramList.iterator();
    paramList = localLatLng2;
    label137:
    double d5;
    double d6;
    while (localIterator.hasNext())
    {
      localLatLng2 = ((by)localIterator.next()).getLatLng();
      if ((!Double.isNaN(latitude)) && (!Double.isNaN(longitude)) && (!Double.isInfinite(latitude)) && (!Double.isInfinite(longitude)))
      {
        if (paramList != null) {
          break label285;
        }
        paramList = LatLngBounds.builder();
        if (o.a(latitude, longitude, latitude, longitude) >= 50.0D) {
          break label288;
        }
        paramList.include(localLatLng2);
        d5 = Math.min(d3, latitude);
        d3 = Math.min(d4, longitude);
        d6 = Math.max(d1, latitude);
        d4 = Math.max(d2, longitude);
        localLatLng1 = new LatLng((d5 + d6) / 2.0D, (d3 + d4) / 2.0D);
        d1 = d5;
        d2 = d6;
      }
    }
    for (;;)
    {
      d5 = d2;
      d6 = d1;
      d2 = d4;
      d4 = d3;
      d1 = d5;
      d3 = d6;
      break;
      return paramList.build();
      label285:
      break label137;
      label288:
      d5 = d4;
      d6 = d3;
      d4 = d2;
      d3 = d5;
      d2 = d1;
      d1 = d6;
    }
  }
  
  public Runnable a(List<T> paramList, a<T> parama)
  {
    a(new w(this, paramList, parama));
    paramList = a(paramList);
    return new aa(l, g, new x(this, paramList));
  }
  
  public void a()
  {
    m = true;
  }
  
  public void a(Bundle paramBundle)
  {
    if (g != null)
    {
      Bundle localBundle = new Bundle();
      g.onSaveInstanceState(localBundle);
      paramBundle.putParcelable("extra.map_view", localBundle);
    }
  }
  
  public void a(Bundle paramBundle, e<T> parame)
  {
    if ((g != null) && (g.getParent() != null)) {
      removeView(g);
    }
    Context localContext = getContext();
    if (k != null)
    {
      g = new MapView(localContext, k);
      if ((localContext instanceof i)) {
        ((i)localContext).a(g);
      }
      addView(g, 0);
      h = parame;
      l = new HashSet();
      m = true;
      new g(getContext(), this).a(g);
      if (paramBundle == null) {
        break label173;
      }
      paramBundle = (Bundle)paramBundle.getParcelable("extra.map_view");
    }
    label173:
    for (;;)
    {
      g.onCreate(paramBundle);
      a(new s(this));
      return;
      g = new MapView(localContext);
      break;
    }
  }
  
  public void a(MapView paramMapView) {}
  
  public void a(CameraPosition paramCameraPosition, GoogleMap.CancelableCallback paramCancelableCallback)
  {
    if ((g != null) && (g.getMap() != null))
    {
      paramCameraPosition = CameraUpdateFactory.newCameraPosition(paramCameraPosition);
      a(new z(g.getMap(), paramCameraPosition, paramCancelableCallback));
    }
  }
  
  public void a(T paramT)
  {
    if (i != null) {
      i.a(paramT);
    }
  }
  
  public void a(Runnable paramRunnable)
  {
    if ((!m) || (g == null)) {
      return;
    }
    g.post(new aa(l, g, paramRunnable));
  }
  
  public void b()
  {
    if (g != null) {
      g.onPause();
    }
  }
  
  public void b(T paramT)
  {
    if (i != null) {
      i.b(paramT);
    }
  }
  
  public void c()
  {
    if (g != null) {
      g.onResume();
    }
  }
  
  public void d()
  {
    g();
    if (g != null) {
      g.onDestroy();
    }
  }
  
  public void e()
  {
    if (g != null) {
      g.onLowMemory();
    }
  }
  
  public void f()
  {
    a(new y(this));
  }
  
  public LatLngBounds getBounds()
  {
    return g.getMap().getProjection().getVisibleRegion().latLngBounds;
  }
  
  public CameraPosition getCurrentCamera()
  {
    return g.getMap().getCameraPosition();
  }
  
  public MapView getMapView()
  {
    return g;
  }
  
  public boolean getPlayServicesAvailable()
  {
    return m;
  }
  
  public double[] getViewableRegion()
  {
    Object localObject = g.getMap().getProjection();
    LatLng localLatLng1 = ((Projection)localObject).fromScreenLocation(new Point(0, 0));
    localObject = ((Projection)localObject).fromScreenLocation(new Point(g.getWidth(), g.getHeight()));
    LatLng localLatLng2 = g.getMap().getCameraPosition().target;
    return new double[] { latitude, longitude, latitude, longitude, latitude, longitude };
  }
  
  public void onCameraChange(CameraPosition paramCameraPosition)
  {
    if (j != null) {
      j.onCameraChange(paramCameraPosition);
    }
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (n != null) {
      paramCanvas.clipRect(n);
    }
    super.onDraw(paramCanvas);
  }
  
  public void onInfoWindowClick(Marker paramMarker)
  {
    if (h != null) {
      a((by)h.b(paramMarker));
    }
  }
  
  public void setClipRect(RectF paramRectF)
  {
    n = paramRectF;
  }
  
  public void setInfoWindowListener(f<T> paramf)
  {
    i = paramf;
    a(new t(this));
  }
  
  public void setInteractive(boolean paramBoolean)
  {
    a(new v(this, paramBoolean));
  }
  
  public void setMapMode(int paramInt)
  {
    if (g != null)
    {
      GoogleMap localGoogleMap = g.getMap();
      if (localGoogleMap != null) {
        localGoogleMap.setMapType(paramInt);
      }
    }
  }
  
  public void setMapSpan(MapSpan paramMapSpan)
  {
    paramMapSpan = LatLngBounds.builder().include(new LatLng(paramMapSpan.getLat(), paramMapSpan.getLon())).include(new LatLng(paramMapSpan.getLat() + paramMapSpan.getLatDelta(), paramMapSpan.getLon() + paramMapSpan.getLonDelta())).include(new LatLng(paramMapSpan.getLat() + paramMapSpan.getLatDelta(), paramMapSpan.getLon() - paramMapSpan.getLonDelta())).include(new LatLng(paramMapSpan.getLat() - paramMapSpan.getLatDelta(), paramMapSpan.getLon() + paramMapSpan.getLonDelta())).include(new LatLng(paramMapSpan.getLat() - paramMapSpan.getLatDelta(), paramMapSpan.getLon() - paramMapSpan.getLonDelta())).build();
    if ((g != null) && (g.getMap() != null))
    {
      paramMapSpan = CameraUpdateFactory.newLatLngBounds(paramMapSpan, ao.a);
      a(new z(g.getMap(), paramMapSpan));
    }
  }
  
  public void setOnCameraUpdate(GoogleMap.OnCameraChangeListener paramOnCameraChangeListener)
  {
    j = paramOnCameraChangeListener;
    a(new u(this));
  }
  
  public void setOptions(GoogleMapOptions paramGoogleMapOptions)
  {
    k = paramGoogleMapOptions;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */