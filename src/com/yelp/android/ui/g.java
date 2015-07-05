package com.yelp.android.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.view.View;
import android.widget.FrameLayout;

class g
{
  private Bitmap a;
  private Canvas b;
  private final FrameLayout c;
  
  public g(Context paramContext)
  {
    c = new FrameLayout(paramContext);
  }
  
  public Bitmap a(View paramView)
  {
    c.addView(paramView);
    c.measure(1024, 1024);
    c.layout(0, 0, 1024, 1024);
    c.removeAllViews();
    int i = paramView.getWidth();
    int j = paramView.getHeight();
    if ((a == null) || (a.getWidth() != i) || (a.getHeight() != j))
    {
      if (a != null) {
        a.recycle();
      }
      a = Bitmap.createBitmap(i, j, Bitmap.Config.ARGB_8888);
      b = new Canvas(a);
    }
    for (;;)
    {
      paramView.measure(i, j);
      paramView.layout(0, 0, i, j);
      paramView.draw(b);
      return a;
      a.eraseColor(0);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */