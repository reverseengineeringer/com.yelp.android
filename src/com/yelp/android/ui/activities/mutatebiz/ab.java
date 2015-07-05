package com.yelp.android.ui.activities.mutatebiz;

import com.google.android.gms.maps.GoogleMap.OnCameraChangeListener;
import com.google.android.gms.maps.model.CameraPosition;

class ab
  implements GoogleMap.OnCameraChangeListener
{
  ab(MoveBusinessPlacementFragment paramMoveBusinessPlacementFragment) {}
  
  public void onCameraChange(CameraPosition paramCameraPosition)
  {
    MoveBusinessPlacementFragment.a(a, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */