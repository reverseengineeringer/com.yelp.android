package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.google.android.gms.maps.MapView;
import com.yelp.android.ui.map.YelpMap;

class m
  implements View.OnTouchListener
{
  m(ComboMapListActivity paramComboMapListActivity) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (ComboMapListActivity.a(a).b().getMapView() == null) {
      return false;
    }
    ComboMapListActivity.a(a).b().getMapView().requestFocusFromTouch();
    ComboMapListActivity.a(a).b().getMapView().dispatchTouchEvent(paramMotionEvent);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */