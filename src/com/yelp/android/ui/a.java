package com.yelp.android.ui;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Paint.Align;
import android.graphics.Shader;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.view.MotionEvent;
import android.view.View;

class a
  extends View
{
  private static final int a = Color.rgb(220, 220, 220);
  private static final int b = Color.rgb(150, 150, 150);
  private static final int[] c = { Color.rgb(47, 47, 47), -16777216, -16777216 };
  private static final int[] d = { -16777216, Color.rgb(106, 106, 106) };
  private static final int[] e = { Color.rgb(50, 50, 50), -16777216, -16777216 };
  private static final int[] f = { Color.rgb(106, 106, 106), -16777216, -16777216 };
  private static final float[] g = { 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F, 0.0F };
  private static final float[] h = { 10.0F, 10.0F, 10.0F, 10.0F, 0.0F, 0.0F, 0.0F, 0.0F };
  private static final float[] i = { 0.0F, 0.0F, 0.0F, 0.0F, 10.0F, 10.0F, 10.0F, 10.0F };
  private static final float[] j = { 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F, 10.0F };
  private Shader A = new LinearGradient(0.0F, 0.0F, 84.0F, 0.0F, e, null, Shader.TileMode.CLAMP);
  private RoundRectShape B = new RoundRectShape(j, null, null);
  private int k;
  private int l;
  private String[] m;
  private Runnable[] n;
  private float o = 0.0F;
  private int p = 0;
  private int q = 1;
  private int r = 0;
  private Paint s = new Paint();
  private Paint t = new Paint();
  private Paint u = new Paint();
  private RectShape v = new RectShape();
  private RectShape w = new RectShape();
  private Shader x = new LinearGradient(0.0F, 0.0F, 84.0F, 0.0F, c, null, Shader.TileMode.CLAMP);
  private Shader y = new LinearGradient(0.0F, 0.0F, 84.0F, 0.0F, d, null, Shader.TileMode.CLAMP);
  private Shader z = new LinearGradient(0.0F, 0.0F, 84.0F, 0.0F, f, null, Shader.TileMode.CLAMP);
  
  public a(Context paramContext, String[] paramArrayOfString, Runnable[] paramArrayOfRunnable)
  {
    super(paramContext);
    m = paramArrayOfString;
    n = paramArrayOfRunnable;
    s.setColor(Color.rgb(0, 0, 55));
  }
  
  public int a()
  {
    return p;
  }
  
  public void a(int paramInt)
  {
    p = paramInt;
    invalidate();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    float f1 = l / 854.0F;
    o = (q * p / r);
    v.resize(84.0F * f1, k);
    t.setShader(x);
    paramCanvas.save();
    paramCanvas.translate(l - 84.0F * f1, 0.0F);
    v.draw(paramCanvas, t);
    paramCanvas.restore();
    v.resize(2.0F, k);
    paramCanvas.save();
    paramCanvas.translate(l - 84.0F * f1, 0.0F);
    v.draw(paramCanvas, s);
    paramCanvas.restore();
    B.resize(64.0F * f1, k - 16.0F);
    t.setShader(y);
    paramCanvas.save();
    paramCanvas.translate(l - 84.0F * f1, 0.0F);
    paramCanvas.translate(8.0F * f1, 8.0F);
    B.draw(paramCanvas, t);
    paramCanvas.restore();
    q = (k - 20);
    r = m.length;
    B.resize(60.0F * f1, k - 20.0F);
    t.setShader(z);
    paramCanvas.save();
    paramCanvas.translate(l - 84.0F * f1, 0.0F);
    paramCanvas.translate(10.0F * f1, 10.0F);
    B.draw(paramCanvas, t);
    paramCanvas.restore();
    Object localObject;
    if (p == 0) {
      localObject = h;
    }
    for (;;)
    {
      localObject = new RoundRectShape((float[])localObject, null, null);
      ((RoundRectShape)localObject).resize(60.0F * f1, q * 1.0F / r);
      t.setShader(A);
      paramCanvas.save();
      paramCanvas.translate(l - 84.0F * f1, 0.0F);
      paramCanvas.translate(10.0F * f1, o + 10.0F);
      ((RoundRectShape)localObject).draw(paramCanvas, t);
      paramCanvas.restore();
      w.resize(60.0F * f1, 2.0F);
      t.setShader(y);
      i1 = 0;
      while (i1 < r - 1)
      {
        paramCanvas.save();
        paramCanvas.translate(l - 84.0F * f1 + 10.0F * f1, q * (i1 + 1) / r + 10.0F);
        w.draw(paramCanvas, t);
        paramCanvas.restore();
        i1 += 1;
      }
      if (p == r - 1) {
        localObject = i;
      } else {
        localObject = g;
      }
    }
    u.setTextSize(19.0F * k / 480.0F);
    u.setSubpixelText(true);
    u.setAntiAlias(true);
    u.setFlags(385);
    u.setTextAlign(Paint.Align.CENTER);
    paramCanvas.rotate(-90.0F);
    paramCanvas.translate(-k, l - 84.0F * f1);
    int i1 = 0;
    if (i1 < r)
    {
      if (r - i1 - 1 == p) {
        u.setColor(a);
      }
      for (;;)
      {
        paramCanvas.drawText(m[i1], q * (i1 + 0.5F) / r + 10.0F, 48.0F * f1, u);
        i1 += 1;
        break;
        u.setColor(b);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    l = getMeasuredWidth();
    k = getMeasuredHeight();
  }
  
  @SuppressLint({"ClickableViewAccessibility"})
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    float f1 = l / 854.0F;
    if ((paramMotionEvent.getAction() == 0) && (paramMotionEvent.getX() > l - (84.0F * f1 - 10.0F * f1)) && (paramMotionEvent.getX() < l - f1 * 10.0F) && (paramMotionEvent.getY() > 10.0F) && (paramMotionEvent.getY() < k - 10.0F))
    {
      int i1 = (int)((paramMotionEvent.getY() - 10.0F - (paramMotionEvent.getY() - 10.0F) % (q / r)) / (q / r));
      if (p != i1)
      {
        p = i1;
        o = (q * p / r);
        invalidate();
        n[(r - p - 1)].run();
      }
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */