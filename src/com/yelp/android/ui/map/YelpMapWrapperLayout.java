package com.yelp.android.ui.map;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.g;

public class YelpMapWrapperLayout
  extends RelativeLayout
{
  private int a;
  private int b;
  private com.google.android.gms.maps.c c;
  private com.google.android.gms.maps.model.c d;
  private View e;
  private MotionEvent f;
  
  public YelpMapWrapperLayout(Context paramContext)
  {
    super(paramContext);
  }
  
  public YelpMapWrapperLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public YelpMapWrapperLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  private int a(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2)
  {
    return (int)Math.sqrt(Math.pow(paramMotionEvent2.getX() - paramMotionEvent1.getX(), 2.0D) + Math.pow(paramMotionEvent2.getY() - paramMotionEvent1.getY(), 2.0D));
  }
  
  public void a(com.google.android.gms.maps.model.c paramc, View paramView)
  {
    d = paramc;
    e = paramView;
  }
  
  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool2 = false;
    Object localObject;
    boolean bool1;
    if ((d != null) && (d.d()) && (c != null) && (e != null))
    {
      localObject = c.d().a(d.b());
      int i = -x;
      int j = e.getWidth() / 2;
      int k = -y;
      int m = e.getHeight();
      int n = a;
      localObject = MotionEvent.obtain(paramMotionEvent);
      ((MotionEvent)localObject).offsetLocation(i + j, k + m + n);
      if (paramMotionEvent.getActionMasked() == 0)
      {
        f = MotionEvent.obtain(paramMotionEvent);
        e.dispatchTouchEvent((MotionEvent)localObject);
        bool1 = false;
        ((MotionEvent)localObject).recycle();
      }
    }
    for (;;)
    {
      if (!bool1)
      {
        bool1 = bool2;
        if (!super.dispatchTouchEvent(paramMotionEvent)) {}
      }
      else
      {
        bool1 = true;
      }
      return bool1;
      if (((paramMotionEvent.getActionMasked() == 1) || (paramMotionEvent.getActionMasked() == 3)) && (f != null))
      {
        bool1 = e.dispatchTouchEvent((MotionEvent)localObject);
        break;
      }
      if ((f != null) && (a(paramMotionEvent, f) > b))
      {
        f.recycle();
        f = null;
        e.dispatchTouchEvent((MotionEvent)localObject);
      }
      bool1 = false;
      break;
      bool1 = false;
    }
  }
  
  public void setup(com.google.android.gms.maps.c paramc)
  {
    c = paramc;
    f = null;
    a = new l(getContext(), null).a().getHeight();
    b = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.YelpMapWrapperLayout
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */