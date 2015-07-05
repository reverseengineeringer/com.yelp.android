package com.yelp.android.ui.activities.mutatebiz;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.yelp.android.ui.map.YelpMap;
import com.yelp.android.ui.map.g;

class z
  implements CompoundButton.OnCheckedChangeListener
{
  z(MoveBusinessPlacementFragment paramMoveBusinessPlacementFragment) {}
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (a.e().e())
    {
      paramCompoundButton = MoveBusinessPlacementFragment.a(a);
      if (!paramBoolean) {
        break label33;
      }
    }
    label33:
    for (int i = 4;; i = 1)
    {
      paramCompoundButton.setMapMode(i);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */