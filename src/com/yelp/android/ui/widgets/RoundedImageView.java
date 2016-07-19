package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.Path.Direction;
import android.graphics.RectF;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yelp.android.co.a.d;

public class RoundedImageView
  extends ImageView
{
  private static int a;
  private Path b;
  private RectF c;
  
  public RoundedImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public RoundedImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    if ((Build.VERSION.SDK_INT < 18) && (Build.VERSION.SDK_INT >= 11)) {
      setLayerType(1, null);
    }
    b = new Path();
    c = new RectF(0.0F, 0.0F, getWidth(), getHeight());
    a = (int)getResources().getDimension(a.d.corner_radius);
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.clipPath(b);
    super.onDraw(paramCanvas);
    paramCanvas.restore();
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    c.set(0.0F, 0.0F, paramInt1, paramInt2);
    b.reset();
    b.addRoundRect(c, a, a, Path.Direction.CW);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RoundedImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */