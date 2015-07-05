package com.yelp.android.ui.map;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.UiSettings;
import com.google.android.gms.maps.model.CameraPosition.Builder;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.n;
import com.yelp.android.bf.g;
import com.yelp.android.bf.i;
import com.yelp.android.serializable.by;
import com.yelp.android.ui.widgets.SpannableLinearLayout;
import java.util.Collections;

public class MapSpannableLinearLayout<T extends by>
  extends SpannableLinearLayout
{
  private YelpMap<T> g;
  private FrameLayout h;
  
  public MapSpannableLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    LayoutInflater.from(paramContext).inflate(i.map_spannable_header, this);
    g = ((YelpMap)findViewById(g.map));
    h = ((FrameLayout)findViewById(g.map_frame));
    setPadding(0, 0, 0, 0);
  }
  
  private boolean a(T paramT, e<T> parame, LatLng paramLatLng, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    paramLatLng = new CameraPosition.Builder().target(paramLatLng).zoom(16.0F).build();
    GoogleMapOptions localGoogleMapOptions = YelpMap.a(g.getContext());
    localGoogleMapOptions.camera(paramLatLng);
    localGoogleMapOptions.liteMode(paramBoolean);
    g.setOptions(localGoogleMapOptions);
    g.a(paramBundle, parame);
    if (a())
    {
      g.getMapView().getMap().getUiSettings().setMyLocationButtonEnabled(false);
      g.a(Collections.singletonList(paramT), new r(paramInt));
      return true;
    }
    b();
    return false;
  }
  
  public boolean a()
  {
    return (n.a(16)) && (g.getPlayServicesAvailable()) && (g.getMapView().getMap() != null);
  }
  
  public boolean a(T paramT, e<T> parame, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    return a(paramT, parame, paramT.getLatLng(), paramInt, paramBundle, paramBoolean);
  }
  
  public void b()
  {
    h.setVisibility(8);
  }
  
  public boolean b(T paramT, e<T> parame, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    return a(paramT, parame, new LatLng(getLatLnglatitude + 5.0E-4D, getLatLnglongitude), paramInt, paramBundle, paramBoolean);
  }
  
  public YelpMap<T> getYelpMap()
  {
    return g;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    super.setMiddle(paramBoolean);
    g.setMiddle(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.MapSpannableLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */