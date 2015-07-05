package com.yelp.android.ui.dialogs;

import android.os.Handler;
import android.view.animation.Animation;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.dd;

class i
  extends dd
{
  i(h paramh) {}
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    ((YelpActivity)a.a.getActivity()).getHandler().postDelayed(new j(this), 1000L);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */