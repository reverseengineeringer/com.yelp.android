package com.yelp.android.ui.widgets;

import android.annotation.SuppressLint;
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
import android.util.SparseArray;
import com.yelp.android.appdata.n;
import com.yelp.android.co.a.e;
import com.yelp.android.co.a.l;
import com.yelp.android.webimageview.WebImageView;

public class RoundedWebImageView
  extends WebImageView
{
  private static Drawable b;
  private static final float c = n.m;
  private static final RectF d = new RectF();
  private static final PorterDuffXfermode e = new PorterDuffXfermode(PorterDuff.Mode.SRC_IN);
  private RoundingMode a;
  
  public RoundedWebImageView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public RoundedWebImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, a.l.RoundedWebImageView);
    if (paramAttributeSet != null)
    {
      a = RoundingMode.modeForValue(paramAttributeSet.getInt(a.l.RoundedWebImageView_forceRoundingMode, 0));
      paramAttributeSet.recycle();
    }
    setup(paramContext);
  }
  
  @SuppressLint({"WrongCall"})
  private void a(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    b.setBounds(0, 0, getWidth(), getHeight());
    b.draw(paramCanvas);
  }
  
  @SuppressLint({"WrongCall"})
  private void a(Drawable paramDrawable, Canvas paramCanvas)
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
      b = paramContext.getResources().getDrawable(a.e.corners);
    }
  }
  
  protected void drawableStateChanged()
  {
    super.drawableStateChanged();
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    if (a == RoundingMode.NONE)
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
      switch (1.a[a.ordinal()])
      {
      default: 
        if ((isEnabled()) && ((isSelected()) || (isPressed()) || (isFocused())))
        {
          a(localDrawable, paramCanvas);
          return;
        }
        break;
      case 1: 
        a(paramCanvas);
        return;
      case 2: 
        a(localDrawable, paramCanvas);
        return;
      }
      a(paramCanvas);
      return;
    }
    super.onDraw(paramCanvas);
  }
  
  public void setForceMode(RoundingMode paramRoundingMode)
  {
    if (paramRoundingMode != a) {
      invalidate();
    }
    a = paramRoundingMode;
  }
  
  public static enum RoundingMode
  {
    private static SparseArray<RoundingMode> modes;
    protected final int attrEnumValue;
    
    static
    {
      int i = 0;
      DEFAULT = new RoundingMode("DEFAULT", 0, 0);
      CLIP = new RoundingMode("CLIP", 1, 1);
      OVERLAY = new RoundingMode("OVERLAY", 2, 2);
      NONE = new RoundingMode("NONE", 3, 3);
      $VALUES = new RoundingMode[] { DEFAULT, CLIP, OVERLAY, NONE };
      modes = new SparseArray();
      RoundingMode[] arrayOfRoundingMode = values();
      int j = arrayOfRoundingMode.length;
      while (i < j)
      {
        RoundingMode localRoundingMode = arrayOfRoundingMode[i];
        modes.append(attrEnumValue, localRoundingMode);
        i += 1;
      }
    }
    
    private RoundingMode(int paramInt)
    {
      attrEnumValue = paramInt;
    }
    
    public static RoundingMode modeForValue(int paramInt)
    {
      return (RoundingMode)modes.get(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.RoundedWebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */