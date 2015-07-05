package android.support.v4.widget;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable.Callback;

class an
{
  private final RectF a = new RectF();
  private final Paint b = new Paint();
  private final Paint c = new Paint();
  private final Drawable.Callback d;
  private float e = 0.0F;
  private float f = 0.0F;
  private float g = 0.0F;
  private float h = 5.0F;
  private float i = 2.5F;
  private int[] j;
  private int k;
  private float l;
  private float m;
  private float n;
  private boolean o;
  private Path p;
  private float q;
  private double r;
  private int s;
  private int t;
  private int u;
  private final Paint v = new Paint();
  private int w;
  
  public an(Drawable.Callback paramCallback)
  {
    d = paramCallback;
    b.setStrokeCap(Paint.Cap.SQUARE);
    b.setAntiAlias(true);
    b.setStyle(Paint.Style.STROKE);
    c.setStyle(Paint.Style.FILL);
    c.setAntiAlias(true);
  }
  
  private void a(Canvas paramCanvas, float paramFloat1, float paramFloat2, Rect paramRect)
  {
    if (o)
    {
      if (p != null) {
        break label218;
      }
      p = new Path();
      p.setFillType(Path.FillType.EVEN_ODD);
    }
    for (;;)
    {
      float f1 = (int)i / 2;
      float f2 = q;
      float f3 = (float)(r * Math.cos(0.0D) + paramRect.exactCenterX());
      float f4 = (float)(r * Math.sin(0.0D) + paramRect.exactCenterY());
      p.moveTo(0.0F, 0.0F);
      p.lineTo(s * q, 0.0F);
      p.lineTo(s * q / 2.0F, t * q);
      p.offset(f3 - f1 * f2, f4);
      p.close();
      c.setColor(j[k]);
      paramCanvas.rotate(paramFloat1 + paramFloat2 - 5.0F, paramRect.exactCenterX(), paramRect.exactCenterY());
      paramCanvas.drawPath(p, c);
      return;
      label218:
      p.reset();
    }
  }
  
  private void l()
  {
    d.invalidateDrawable(null);
  }
  
  public void a()
  {
    k = ((k + 1) % j.length);
  }
  
  public void a(double paramDouble)
  {
    r = paramDouble;
  }
  
  public void a(float paramFloat)
  {
    h = paramFloat;
    b.setStrokeWidth(paramFloat);
    l();
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    s = ((int)paramFloat1);
    t = ((int)paramFloat2);
  }
  
  public void a(int paramInt)
  {
    w = paramInt;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    float f1 = Math.min(paramInt1, paramInt2);
    if ((r <= 0.0D) || (f1 < 0.0F)) {}
    for (f1 = (float)Math.ceil(h / 2.0F);; f1 = (float)(f1 / 2.0F - r))
    {
      i = f1;
      return;
    }
  }
  
  public void a(Canvas paramCanvas, Rect paramRect)
  {
    RectF localRectF = a;
    localRectF.set(paramRect);
    localRectF.inset(i, i);
    float f1 = (e + g) * 360.0F;
    float f2 = (f + g) * 360.0F - f1;
    b.setColor(j[k]);
    paramCanvas.drawArc(localRectF, f1, f2, false, b);
    a(paramCanvas, f1, f2, paramRect);
    if (u < 255)
    {
      v.setColor(w);
      v.setAlpha(255 - u);
      paramCanvas.drawCircle(paramRect.exactCenterX(), paramRect.exactCenterY(), paramRect.width() / 2, v);
    }
  }
  
  public void a(ColorFilter paramColorFilter)
  {
    b.setColorFilter(paramColorFilter);
    l();
  }
  
  public void a(boolean paramBoolean)
  {
    if (o != paramBoolean)
    {
      o = paramBoolean;
      l();
    }
  }
  
  public void a(int[] paramArrayOfInt)
  {
    j = paramArrayOfInt;
    b(0);
  }
  
  public int b()
  {
    return u;
  }
  
  public void b(float paramFloat)
  {
    e = paramFloat;
    l();
  }
  
  public void b(int paramInt)
  {
    k = paramInt;
  }
  
  public float c()
  {
    return h;
  }
  
  public void c(float paramFloat)
  {
    f = paramFloat;
    l();
  }
  
  public void c(int paramInt)
  {
    u = paramInt;
  }
  
  public float d()
  {
    return e;
  }
  
  public void d(float paramFloat)
  {
    g = paramFloat;
    l();
  }
  
  public float e()
  {
    return l;
  }
  
  public void e(float paramFloat)
  {
    if (paramFloat != q)
    {
      q = paramFloat;
      l();
    }
  }
  
  public float f()
  {
    return m;
  }
  
  public float g()
  {
    return f;
  }
  
  public double h()
  {
    return r;
  }
  
  public float i()
  {
    return n;
  }
  
  public void j()
  {
    l = e;
    m = f;
    n = g;
  }
  
  public void k()
  {
    l = 0.0F;
    m = 0.0F;
    n = 0.0F;
    b(0.0F);
    c(0.0F);
    d(0.0F);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.an
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */