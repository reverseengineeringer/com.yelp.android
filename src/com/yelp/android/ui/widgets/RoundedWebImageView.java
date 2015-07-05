package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import com.yelp.android.appdata.ao;
import com.yelp.android.bf.f;
import com.yelp.android.bf.m;
import com.yelp.android.webimageview.WebImageView;

public class RoundedWebImageView
  extends WebImageView
{
  private static Drawable b;
  private static final float c = ao.m;
  private static final RectF d = new RectF();
  private static final PorterDuffXfermode e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
  private RoundedWebImageView.RoundingMode a;
  
  public RoundedWebImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RoundedWebImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, m.RoundedWebImageView);
    if (paramAttributeSet != null)
    {
      a = RoundedWebImageView.RoundingMode.modeForValue(paramAttributeSet.getInt(0, 0));
      paramAttributeSet.recycle();
    }
    setup(paramContext);
  }
  
  private void a(Drawable paramDrawable, Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    b.setBounds(0, 0, getWidth(), getHeight());
    b.draw(paramCanvas);
  }
  
  private void b(Drawable paramDrawable, Canvas paramCanvas)
  {
    Paint localPaint = ((BitmapDrawable)paramDrawable).getPaint();
    paramDrawable = paramDrawable.getBounds();
    d.set(paramDrawable);
    getImageMatrix().mapRect(d);
    int i = paramCanvas.saveLayer(d, null, 31);
    localPaint.setAntiAlias(true);
    paramCanvas.drawARGB(0, 0, 0, 0);
    localPaint.setColor(-16777216);
    paramCanvas.drawRoundRect(d, c, c, localPaint);
    paramDrawable = localPaint.getXfermode();
    localPaint.setXfermode(e);
    super.onDraw(paramCanvas);
    localPaint.setXfermode(paramDrawable);
    paramCanvas.restoreToCount(i);
  }
  
  private void setup(Context paramContext)
  {
    if (b == null) {
      b = paramContext.getResources().getDrawable(f.corners);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (a == RoundedWebImageView.RoundingMode.NONE)
    {
      super.onDraw(paramCanvas);
      return;
    }
    Drawable localDrawable = getDrawable();
    if ((localDrawable instanceof GradientDrawable))
    {
      super.onDraw(paramCanvas);
      return;
    }
    if (((localDrawable instanceof BitmapDrawable)) && (c > 0.0F))
    {
      switch (aj.a[a.ordinal()])
      {
      default: 
        if ((isEnabled()) && ((isSelected()) || (isPressed()) || (isFocused())))
        {
          b(localDrawable, paramCanvas);
          return;
        }
        break;
      case 1: 
        a(localDrawable, paramCanvas);
        return;
      case 2: 
        b(localDrawable, paramCanvas);
        return;
      }
      a(localDrawable, paramCanvas);
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void setForceMode(RoundedWebImageView.RoundingMode paramRoundingMode)
  {
    if (paramRoundingMode != a) {
      invalidate();
    }
    a = paramRoundingMode;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RoundedWebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */