package com.yelp.android.ui.map;

import android.content.Context;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.maps.GoogleMapOptions;
import com.google.android.gms.maps.model.CameraPosition.a;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.serializable.f;
import com.yelp.android.ui.widgets.SpannableLinearLayout;
import java.util.Collections;

public class MapSpannableLinearLayout<T extends f>
  extends SpannableLinearLayout
{
  private YelpMap<T> b;
  private FrameLayout c;
  private View i;
  private View j;
  
  public MapSpannableLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setOrientation(1);
    LayoutInflater.from(paramContext).inflate(a.h.map_spannable_header, this);
    b = ((YelpMap)findViewById(a.f.map));
    c = ((FrameLayout)findViewById(a.f.map_frame));
    i = findViewById(a.f.map_border);
    j = findViewById(a.f.map_white_corners);
    setPadding(0, 0, 0, 0);
  }
  
  private boolean a(T paramT, e<T> parame, LatLng paramLatLng, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    paramLatLng = new CameraPosition.a().a(paramLatLng).a(16.0F).a();
    GoogleMapOptions localGoogleMapOptions = YelpMap.getReadOnlyOptions();
    localGoogleMapOptions.a(paramLatLng);
    localGoogleMapOptions.i(paramBoolean);
    b.setOptions(localGoogleMapOptions);
    b.a(paramBundle, parame);
    if (b.h())
    {
      b.a(Collections.singletonList(paramT), new m(paramInt));
      b.setMyLocationButtonEnabled(false);
      return true;
    }
    a();
    return false;
  }
  
  public void a()
  {
    c.setVisibility(8);
  }
  
  public boolean a(T paramT, e<T> parame, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    return a(paramT, parame, paramT.b(), paramInt, paramBundle, paramBoolean);
  }
  
  public boolean b(T paramT, e<T> parame, int paramInt, Bundle paramBundle, boolean paramBoolean)
  {
    return a(paramT, parame, new LatLng(ba + 5.0E-4D, bb), paramInt, paramBundle, paramBoolean);
  }
  
  public YelpMap<T> getYelpMap()
  {
    return b;
  }
  
  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }
  
  public void setFullBleed(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      i.setVisibility(8);
      j.setVisibility(8);
      return;
    }
    i.setVisibility(0);
    j.setVisibility(0);
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    super.setMiddle(paramBoolean);
    b.setMiddle(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.MapSpannableLinearLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */