package com.yelp.android.ui.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import android.widget.ImageView.ScaleType;

public class ScaleWebImageView
  extends ShadowWebImageView
{
  private ScaleGestureDetector a;
  private ao b;
  private GestureDetector c;
  private Matrix d;
  private float e;
  private float f;
  private float g;
  private float h;
  private PointF i;
  private boolean j = true;
  private boolean k;
  private int l;
  private int m;
  private final ScaleGestureDetector.SimpleOnScaleGestureListener n = new al(this);
  
  public ScaleWebImageView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public ScaleWebImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  private void a()
  {
    a = new ScaleGestureDetector(getContext(), n);
    c = new GestureDetector(getContext(), new ak(this));
    d = new Matrix();
    d.setScale(1.0F, 1.0F);
    i = new PointF();
    setScaleType(ImageView.ScaleType.MATRIX);
  }
  
  private void a(float paramFloat1, float paramFloat2, float paramFloat3)
  {
    float f1 = e * paramFloat1;
    if (f1 > f)
    {
      paramFloat1 = f / e;
      e = f;
    }
    for (;;)
    {
      d.postScale(paramFloat1, paramFloat1, paramFloat2, paramFloat3);
      setImageMatrix(d);
      return;
      if (f1 < g)
      {
        paramFloat1 = g / e;
        e = g;
      }
      else
      {
        e = f1;
      }
    }
  }
  
  private void b()
  {
    Drawable localDrawable = getDrawable();
    if ((localDrawable != null) && (localDrawable.getIntrinsicWidth() > 0) && (localDrawable.getIntrinsicHeight() > 0))
    {
      int i1 = getWidth();
      int i2 = getHeight();
      float f1 = Math.min(i1 / l, i2 / m);
      e = f1;
      h = f1;
      g = (e * 0.3F);
      f = (e * 3.0F);
      float f2 = l;
      float f3 = e;
      float f4 = m;
      float f5 = e;
      f1 = i2 / 2;
      f4 = f4 * f5 / 2.0F;
      f5 = i1 / 2;
      f2 = f2 * f3 / 2.0F;
      d.setScale(e, e);
      d.postTranslate(f5 - f2, f1 - f4);
      setImageMatrix(d);
    }
  }
  
  private void c()
  {
    Pair localPair = getCenteringValues();
    d.postTranslate(((Float)first).floatValue(), ((Float)second).floatValue());
  }
  
  private Pair<Float, Float> getCenteringValues()
  {
    float f2 = 0.0F;
    float[] arrayOfFloat = new float[9];
    d.getValues(arrayOfFloat);
    float f1 = arrayOfFloat[2];
    float f3 = arrayOfFloat[5];
    float f5 = arrayOfFloat[0] * l;
    float f4 = arrayOfFloat[4];
    f4 = m * f4;
    if (f5 < getWidth()) {
      f1 = getWidth() / 2 - f5 / 2.0F - f1;
    }
    for (;;)
    {
      if (f4 < getHeight()) {
        f2 = getHeight() / 2 - f4 / 2.0F - f3;
      }
      for (;;)
      {
        return new Pair(Float.valueOf(f1), Float.valueOf(f2));
        if (f1 > 0.0F)
        {
          f1 = -f1;
          break;
        }
        if (f1 >= getWidth() - f5) {
          break label201;
        }
        f1 = getWidth() - f5 - f1;
        break;
        if (f3 > 0.0F) {
          f2 = -f3;
        } else if (f3 < getHeight() - f4) {
          f2 = getHeight() - f4 - f3;
        }
      }
      label201:
      f1 = 0.0F;
    }
  }
  
  public boolean canScrollHorizontally(int paramInt)
  {
    float[] arrayOfFloat = new float[9];
    d.getValues(arrayOfFloat);
    float f1 = e * l;
    int i1;
    if ((int)f1 > getWidth())
    {
      i1 = (int)arrayOfFloat[2];
      if ((i1 != 0) || (paramInt >= 0)) {
        break label51;
      }
    }
    label51:
    while ((i1 == (int)(getWidth() - f1)) && (paramInt > 0)) {
      return false;
    }
    return true;
  }
  
  public void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onSizeChanged(paramInt1, paramInt2, paramInt3, paramInt4);
    b();
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f2 = 0.0F;
    a.onTouchEvent(paramMotionEvent);
    c.onTouchEvent(paramMotionEvent);
    if ((e > h) && (j))
    {
      if (paramMotionEvent.getAction() == 0)
      {
        k = true;
        i.set(paramMotionEvent.getX(), paramMotionEvent.getY());
      }
    }
    else {
      return true;
    }
    float f4;
    float f3;
    float f7;
    float f5;
    float f8;
    float f6;
    float f1;
    if ((paramMotionEvent.getAction() == 2) && (k))
    {
      f4 = paramMotionEvent.getX() - i.x;
      f3 = paramMotionEvent.getY() - i.y;
      float[] arrayOfFloat = new float[9];
      d.getValues(arrayOfFloat);
      f7 = arrayOfFloat[0] * l;
      f5 = arrayOfFloat[4] * m;
      f8 = arrayOfFloat[2];
      f6 = arrayOfFloat[5];
      if (f7 < getWidth())
      {
        f1 = 0.0F;
        label175:
        if (f5 >= getHeight()) {
          break label259;
        }
      }
    }
    for (;;)
    {
      d.postTranslate(f1, f2);
      setImageMatrix(d);
      break;
      if (f8 + f4 > 0.0F)
      {
        f1 = -f8;
        break label175;
      }
      f1 = f4;
      if (f8 + f4 >= getWidth() - f7) {
        break label175;
      }
      f1 = getWidth() - f7 - f8;
      break label175;
      label259:
      if (f6 + f3 > 0.0F)
      {
        f2 = -f6;
      }
      else
      {
        if (f6 + f3 < getHeight() - f5)
        {
          f2 = getHeight() - f5 - f6;
          continue;
          if (paramMotionEvent.getAction() != 1) {
            break;
          }
          k = false;
          break;
        }
        f2 = f3;
      }
    }
  }
  
  public void setImageBitmap(Bitmap paramBitmap)
  {
    super.setImageBitmap(paramBitmap);
    paramBitmap = getDrawable();
    if ((paramBitmap != null) && (paramBitmap.getIntrinsicWidth() > 0) && (paramBitmap.getIntrinsicHeight() > 0))
    {
      l = paramBitmap.getIntrinsicWidth();
      m = paramBitmap.getIntrinsicHeight();
    }
    b();
  }
  
  public void setTapListener(ao paramao)
  {
    b = paramao;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ScaleWebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */