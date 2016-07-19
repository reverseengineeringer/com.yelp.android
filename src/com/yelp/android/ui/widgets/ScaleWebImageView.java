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
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.ScaleGestureDetector.SimpleOnScaleGestureListener;
import android.widget.ImageView.ScaleType;

public class ScaleWebImageView
  extends ShadowWebImageView
{
  private ScaleGestureDetector a;
  private c b;
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
  private final ScaleGestureDetector.SimpleOnScaleGestureListener n = new ScaleGestureDetector.SimpleOnScaleGestureListener()
  {
    public boolean onScale(ScaleGestureDetector paramAnonymousScaleGestureDetector)
    {
      ScaleWebImageView.a(ScaleWebImageView.this, paramAnonymousScaleGestureDetector.getScaleFactor(), paramAnonymousScaleGestureDetector.getFocusX(), paramAnonymousScaleGestureDetector.getFocusY());
      return true;
    }
    
    public boolean onScaleBegin(ScaleGestureDetector paramAnonymousScaleGestureDetector)
    {
      if (!ScaleWebImageView.d(ScaleWebImageView.this)) {
        return false;
      }
      ScaleWebImageView.a(ScaleWebImageView.this, false);
      ScaleWebImageView.b(ScaleWebImageView.this, false);
      return true;
    }
    
    public void onScaleEnd(ScaleGestureDetector paramAnonymousScaleGestureDetector)
    {
      if (ScaleWebImageView.a(ScaleWebImageView.this) < ScaleWebImageView.b(ScaleWebImageView.this))
      {
        postDelayed(new ScaleWebImageView.b(ScaleWebImageView.this, ScaleWebImageView.b(ScaleWebImageView.this), getWidth() / 2, getHeight() / 2, true), 16L);
        return;
      }
      postDelayed(new ScaleWebImageView.a(ScaleWebImageView.this), 16L);
    }
  };
  
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
    c = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener()
    {
      public boolean onDoubleTap(MotionEvent paramAnonymousMotionEvent)
      {
        if (ScaleWebImageView.a(ScaleWebImageView.this) > ScaleWebImageView.b(ScaleWebImageView.this))
        {
          ScaleWebImageView.a(ScaleWebImageView.this, false);
          postDelayed(new ScaleWebImageView.b(ScaleWebImageView.this, ScaleWebImageView.b(ScaleWebImageView.this), paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY(), true), 16L);
        }
        while (ScaleWebImageView.a(ScaleWebImageView.this) != ScaleWebImageView.b(ScaleWebImageView.this)) {
          return true;
        }
        ScaleWebImageView.a(ScaleWebImageView.this, false);
        postDelayed(new ScaleWebImageView.b(ScaleWebImageView.this, ScaleWebImageView.b(ScaleWebImageView.this) * 2.0F, paramAnonymousMotionEvent.getX(), paramAnonymousMotionEvent.getY(), false), 16L);
        return true;
      }
      
      public boolean onSingleTapConfirmed(MotionEvent paramAnonymousMotionEvent)
      {
        if (ScaleWebImageView.c(ScaleWebImageView.this) != null) {
          ScaleWebImageView.c(ScaleWebImageView.this).a();
        }
        return true;
      }
    });
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
  
  public void setTapListener(c paramc)
  {
    b = paramc;
  }
  
  private class a
    implements Runnable
  {
    private final long b = System.currentTimeMillis();
    private final float c;
    private final float d;
    private final float e;
    private final float f;
    
    public a()
    {
      Pair localPair = ScaleWebImageView.e(ScaleWebImageView.this);
      float[] arrayOfFloat = new float[9];
      ScaleWebImageView.f(ScaleWebImageView.this).getValues(arrayOfFloat);
      c = arrayOfFloat[2];
      e = arrayOfFloat[5];
      d = (((Float)first).floatValue() + c);
      f = (((Float)second).floatValue() + e);
    }
    
    public void run()
    {
      long l = System.currentTimeMillis() - b;
      float[] arrayOfFloat = new float[9];
      ScaleWebImageView.f(ScaleWebImageView.this).getValues(arrayOfFloat);
      float f1 = arrayOfFloat[2];
      float f2 = arrayOfFloat[5];
      if (l >= 200L)
      {
        ScaleWebImageView.f(ScaleWebImageView.this).postTranslate(d - f1, f - f2);
        ScaleWebImageView.a(ScaleWebImageView.this, true);
      }
      for (;;)
      {
        setImageMatrix(ScaleWebImageView.f(ScaleWebImageView.this));
        return;
        float f3 = (float)l / 200.0F;
        float f4 = c;
        float f5 = d;
        float f6 = c;
        float f7 = e;
        float f8 = f;
        float f9 = e;
        ScaleWebImageView.f(ScaleWebImageView.this).postTranslate(f4 + (f5 - f6) * f3 - f1, f3 * (f8 - f9) + f7 - f2);
        postDelayed(this, 16L);
      }
    }
  }
  
  private class b
    implements Runnable
  {
    private final long b = System.currentTimeMillis();
    private final float c = ScaleWebImageView.a(ScaleWebImageView.this);
    private final float d;
    private final float e;
    private final float f;
    private final boolean g;
    private final float h;
    private final float i;
    
    public b(float paramFloat1, float paramFloat2, float paramFloat3, boolean paramBoolean)
    {
      d = paramFloat1;
      e = paramFloat2;
      f = paramFloat3;
      g = paramBoolean;
      float[] arrayOfFloat = new float[9];
      ScaleWebImageView.f(ScaleWebImageView.this).getValues(arrayOfFloat);
      h = arrayOfFloat[2];
      i = arrayOfFloat[5];
    }
    
    public void run()
    {
      long l = System.currentTimeMillis() - b;
      float f4;
      float[] arrayOfFloat;
      float f5;
      float f6;
      if (l >= 200L)
      {
        ScaleWebImageView.f(ScaleWebImageView.this).postScale(d / ScaleWebImageView.a(ScaleWebImageView.this), d / ScaleWebImageView.a(ScaleWebImageView.this), e, f);
        ScaleWebImageView.a(ScaleWebImageView.this, d);
        if (g)
        {
          f1 = getWidth() / 2;
          f2 = d * ScaleWebImageView.g(ScaleWebImageView.this) / 2.0F;
          f3 = getHeight() / 2;
          f4 = d * ScaleWebImageView.h(ScaleWebImageView.this) / 2.0F;
          arrayOfFloat = new float[9];
          ScaleWebImageView.f(ScaleWebImageView.this).getValues(arrayOfFloat);
          f5 = arrayOfFloat[2];
          f6 = arrayOfFloat[5];
          ScaleWebImageView.f(ScaleWebImageView.this).postTranslate(f1 - f2 - f5, f3 - f4 - f6);
        }
        for (;;)
        {
          ScaleWebImageView.a(ScaleWebImageView.this, true);
          setImageMatrix(ScaleWebImageView.f(ScaleWebImageView.this));
          return;
          ScaleWebImageView.i(ScaleWebImageView.this);
        }
      }
      float f1 = (float)l / 200.0F;
      float f2 = c + (d - c) * f1;
      float f3 = f2 / ScaleWebImageView.a(ScaleWebImageView.this);
      ScaleWebImageView.a(ScaleWebImageView.this, f2);
      ScaleWebImageView.f(ScaleWebImageView.this).postScale(f3, f3, e, f);
      if (g)
      {
        f2 = getWidth() / 2;
        f3 = d * ScaleWebImageView.g(ScaleWebImageView.this) / 2.0F;
        f4 = getHeight() / 2;
        f5 = d * ScaleWebImageView.h(ScaleWebImageView.this) / 2.0F;
        arrayOfFloat = new float[9];
        ScaleWebImageView.f(ScaleWebImageView.this).getValues(arrayOfFloat);
        f6 = arrayOfFloat[2];
        float f7 = arrayOfFloat[5];
        float f8 = h;
        float f9 = h;
        float f10 = i;
        float f11 = i;
        ScaleWebImageView.f(ScaleWebImageView.this).postTranslate((f2 - f3 - f9) * f1 + f8 - f6, f1 * (f4 - f5 - f11) + f10 - f7);
      }
      for (;;)
      {
        setImageMatrix(ScaleWebImageView.f(ScaleWebImageView.this));
        postDelayed(this, 16L);
        return;
        ScaleWebImageView.i(ScaleWebImageView.this);
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract void a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.ScaleWebImageView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */