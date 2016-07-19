package com.yelp.android.ui.activities.nearby;

import android.annotation.SuppressLint;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.google.android.gms.maps.MapView;
import com.yelp.android.ui.map.YelpMap;

class ComboMapListActivity$1
  implements View.OnTouchListener
{
  ComboMapListActivity$1(ComboMapListActivity paramComboMapListActivity) {}
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    paramView = ComboMapListActivity.a(a).b().getMapView();
    if (paramView == null) {
      return false;
    }
    paramView.requestFocusFromTouch();
    paramView.dispatchTouchEvent(paramMotionEvent);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ComboMapListActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */