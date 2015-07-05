package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.NinePatchDrawable;
import android.util.AttributeSet;
import com.yelp.android.bf.e;
import com.yelp.android.bf.f;
import com.yelp.android.webimageview.WebImageView;

public class ShadowWebImageView
  extends WebImageView
{
  private Rect a = new Rect();
  
  public ShadowWebImageView(Context paramContext)
  {
    super(paramContext);
  }
  
  public ShadowWebImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public void onDraw(Canvas paramCanvas)
  {
    if (getDrawable() != null)
    {
      Object localObject = new float[9];
      getImageMatrix().getValues((float[])localObject);
      float f1 = localObject[0];
      float f2 = localObject[4];
      int i = getDrawable().getIntrinsicWidth();
      int j = getDrawable().getIntrinsicHeight();
      i = (int)(f1 * i);
      j = (int)(f2 * j);
      int k = (int)localObject[2];
      int m = (int)localObject[5];
      int n = (int)getResources().getDimension(e.shadow_radius);
      localObject = (NinePatchDrawable)getResources().getDrawable(f.shadow_black);
      a.set(k - n, m - n, i + k + n, j + m + n);
      ((NinePatchDrawable)localObject).setBounds(a);
      ((NinePatchDrawable)localObject).draw(paramCanvas);
    }
    super.onDraw(paramCanvas);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ShadowWebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */