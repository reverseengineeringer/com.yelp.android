package com.yelp.android.ui.activities.reviews;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import com.yelp.android.ui.util.cw;

class an
  implements Runnable
{
  an(am paramam) {}
  
  public void run()
  {
    a.a.a.setStarSize(StarsView.StarSize.SMALL);
    Object localObject = new AlphaAnimation(0.0F, 1.0F);
    ((AlphaAnimation)localObject).setDuration(cw.c);
    ReviewComposeFragment.n(a.a).startAnimation((Animation)localObject);
    localObject = new Rect();
    ReviewComposeFragment.h(a.a).getWindowVisibleDisplayFrame((Rect)localObject);
    ReviewComposeFragment.a(a.a, (Rect)localObject);
    ReviewComposeFragment.d(a.a, a.a.c.getHeight());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */