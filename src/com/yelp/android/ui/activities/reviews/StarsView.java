package com.yelp.android.ui.activities.reviews;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.ImageView;

public class StarsView
  extends ImageView
{
  protected static final int[] a = { 2130838646, 2130838647, 2130838648, 2130838649, 2130838650, 2130838651 };
  protected static final int[] b = { 2130838845, 2130838846, 2130838847, 2130838848, 2130838849, 2130838850 };
  protected static final int[] c = { 2130838630, 2130838631, 2130838632, 2130838633, 2130838634, 2130838635 };
  protected static final int[] d = { 2130838851, 2130838852, 2130838853, 2130838854, 2130838855, 2130838856 };
  protected static final int[] e = { 2130838829, 2130838830, 2130838831, 2130838832, 2130838833, 2130838834 };
  protected static final int[] f = { 2130838813, 2130838814, 2130838815, 2130838816, 2130838817, 2130838818 };
  private int g;
  private StarsView.StarStyle h;
  private Runnable i;
  private Runnable j;
  
  public StarsView(Context paramContext)
  {
    super(paramContext);
    setStarStyle(StarsView.StarStyle.LARGE);
  }
  
  public StarsView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setStarStyle(StarsView.StarStyle.LARGE);
  }
  
  private int a(float paramFloat)
  {
    return Math.min(5, Math.max(1, (int)Math.ceil(paramFloat / (getWidth() / 5))));
  }
  
  private void a()
  {
    switch (StarsView.1.a[h.ordinal()])
    {
    default: 
      setImageResource(c[g]);
      return;
    case 1: 
      setImageResource(a[g]);
      return;
    case 2: 
      setImageResource(b[g]);
      return;
    case 3: 
      setImageResource(d[g]);
      return;
    case 4: 
      setImageResource(e[g]);
      return;
    }
    setImageResource(f[g]);
  }
  
  public int getNumStars()
  {
    return g;
  }
  
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
        if (i != null) {
          i.run();
        }
      }
    case 2: 
      k = a(paramMotionEvent.getX());
      if (k != g) {
        announceForAccessibility(getResources().getQuantityString(2131230774, k, new Object[] { Integer.valueOf(k) }));
      }
      setNumStars(k);
      return true;
    }
    if (j != null) {
      j.run();
    }
    int k = a(paramMotionEvent.getX());
    if (k != g) {
      announceForAccessibility(getResources().getQuantityString(2131230774, k, new Object[] { Integer.valueOf(k) }));
    }
    setNumStars(k);
    return true;
  }
  
  public void setNumStars(int paramInt)
  {
    g = paramInt;
    a();
  }
  
  public void setOnActionDown(Runnable paramRunnable)
  {
    j = paramRunnable;
  }
  
  public void setOnStarsClicked(Runnable paramRunnable)
  {
    i = paramRunnable;
  }
  
  public void setStarStyle(StarsView.StarStyle paramStarStyle)
  {
    h = paramStarStyle;
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviews.StarsView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */