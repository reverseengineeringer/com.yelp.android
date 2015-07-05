package com.yelp.android.ui.activities.reviews;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;
import com.yelp.android.appdata.n;

public class StarsView
  extends ImageView
{
  protected static final int[] a = { 2130838325, 2130838326, 2130838327, 2130838328, 2130838329, 2130838330 };
  protected static final int[] b = { 2130838465, 2130838466, 2130838467, 2130838468, 2130838469, 2130838470 };
  protected static final int[] c = { 2130838309, 2130838310, 2130838311, 2130838312, 2130838313, 2130838314 };
  private int d;
  private StarsView.StarSize e;
  private Runnable f;
  private Runnable g;
  
  public StarsView(Context paramContext)
  {
    super(paramContext);
    setStarSize(StarsView.StarSize.LARGE);
  }
  
  public StarsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setStarSize(StarsView.StarSize.LARGE);
  }
  
  private int a(float paramFloat)
  {
    return Math.min(5, Math.max(1, (int)Math.ceil(paramFloat / (getWidth() / 5))));
  }
  
  private void a()
  {
    switch (bh.a[e.ordinal()])
    {
    default: 
      setImageResource(c[d]);
      return;
    case 1: 
      setImageResource(a[d]);
      return;
    }
    setImageResource(b[d]);
  }
  
  public int getNumStars()
  {
    return d;
  }
  
  @TargetApi(16)
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    default: 
    case 1: 
    case 3: 
      for (;;)
      {
        return false;
        if (f != null) {
          f.run();
        }
      }
    case 2: 
      i = a(paramMotionEvent.getX());
      if ((n.a(16)) && (i != d)) {
        announceForAccessibility(getResources().getQuantityString(2131623985, i, new Object[] { Integer.valueOf(i) }));
      }
      setNumStars(i);
      return true;
    }
    if (g != null) {
      g.run();
    }
    int i = a(paramMotionEvent.getX());
    if ((n.a(16)) && (i != d)) {
      announceForAccessibility(getResources().getQuantityString(2131623985, i, new Object[] { Integer.valueOf(i) }));
    }
    setNumStars(i);
    return true;
  }
  
  public void setNumStars(int paramInt)
  {
    d = paramInt;
    a();
  }
  
  public void setOnActionDown(Runnable paramRunnable)
  {
    g = paramRunnable;
  }
  
  public void setOnStarsClicked(Runnable paramRunnable)
  {
    f = paramRunnable;
  }
  
  public void setStarSize(StarsView.StarSize paramStarSize)
  {
    e = paramStarSize;
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.StarsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */