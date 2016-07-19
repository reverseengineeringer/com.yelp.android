package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Paint.Cap;
import android.graphics.Paint.Style;
import android.graphics.Path;
import android.graphics.Path.FillType;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import com.yelp.android.i.a;
import java.util.ArrayList;

class o
  extends Drawable
  implements Animatable
{
  private static final Interpolator b = new LinearInterpolator();
  private static final Interpolator c = new a();
  boolean a;
  private final int[] d = { -16777216 };
  private final ArrayList<Animation> e = new ArrayList();
  private final a f;
  private float g;
  private Resources h;
  private View i;
  private Animation j;
  private float k;
  private double l;
  private double m;
  private final Drawable.Callback n = new Drawable.Callback()
  {
    public void invalidateDrawable(Drawable paramAnonymousDrawable)
    {
      invalidateSelf();
    }
    
    public void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong)
    {
      scheduleSelf(paramAnonymousRunnable, paramAnonymousLong);
    }
    
    public void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable)
    {
      unscheduleSelf(paramAnonymousRunnable);
    }
  };
  
  public o(Context paramContext, View paramView)
  {
    i = paramView;
    h = paramContext.getResources();
    f = new a(n);
    f.a(d);
    a(1);
    b();
  }
  
  private float a(a parama)
  {
    return (float)Math.toRadians(parama.d() / (6.283185307179586D * parama.j()));
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2)
  {
    int i3 = Integer.valueOf(paramInt1).intValue();
    paramInt1 = i3 >> 24 & 0xFF;
    int i1 = i3 >> 16 & 0xFF;
    int i2 = i3 >> 8 & 0xFF;
    i3 &= 0xFF;
    paramInt2 = Integer.valueOf(paramInt2).intValue();
    int i4 = (int)(((paramInt2 >> 24 & 0xFF) - paramInt1) * paramFloat);
    int i5 = (int)(((paramInt2 >> 16 & 0xFF) - i1) * paramFloat);
    int i6 = (int)(((paramInt2 >> 8 & 0xFF) - i2) * paramFloat);
    return i3 + (int)(((paramInt2 & 0xFF) - i3) * paramFloat) | paramInt1 + i4 << 24 | i1 + i5 << 16 | i6 + i2 << 8;
  }
  
  private void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    a locala = f;
    float f1 = h.getDisplayMetrics().density;
    l = (f1 * paramDouble1);
    m = (f1 * paramDouble2);
    locala.a((float)paramDouble4 * f1);
    locala.a(f1 * paramDouble3);
    locala.c(0);
    locala.a(paramFloat1 * f1, f1 * paramFloat2);
    locala.a((int)l, (int)m);
  }
  
  private void a(float paramFloat, a parama)
  {
    if (paramFloat > 0.75F) {
      parama.b(a((paramFloat - 0.75F) / 0.25F, parama.h(), parama.a()));
    }
  }
  
  private void b()
  {
    final a locala = f;
    Animation local1 = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        if (a)
        {
          o.a(o.this, paramAnonymousFloat, locala);
          return;
        }
        float f1 = o.a(o.this, locala);
        float f2 = locala.g();
        float f4 = locala.f();
        float f3 = locala.k();
        o.b(o.this, paramAnonymousFloat, locala);
        if (paramAnonymousFloat <= 0.5F)
        {
          float f5 = paramAnonymousFloat / 0.5F;
          f5 = o.a().getInterpolation(f5);
          locala.b(f4 + f5 * (0.8F - f1));
        }
        if (paramAnonymousFloat > 0.5F)
        {
          f4 = (paramAnonymousFloat - 0.5F) / 0.5F;
          f4 = o.a().getInterpolation(f4);
          locala.c((0.8F - f1) * f4 + f2);
        }
        locala.d(0.25F * paramAnonymousFloat + f3);
        f1 = o.a(o.this) / 5.0F;
        c(216.0F * paramAnonymousFloat + 1080.0F * f1);
      }
    };
    local1.setRepeatCount(-1);
    local1.setRepeatMode(1);
    local1.setInterpolator(b);
    local1.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation) {}
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
        locala.l();
        locala.b();
        locala.b(locala.i());
        if (a)
        {
          a = false;
          paramAnonymousAnimation.setDuration(1332L);
          locala.a(false);
          return;
        }
        o.a(o.this, (o.a(o.this) + 1.0F) % 5.0F);
      }
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        o.a(o.this, 0.0F);
      }
    });
    j = local1;
  }
  
  private void b(float paramFloat, a parama)
  {
    a(paramFloat, parama);
    float f1 = (float)(Math.floor(parama.k() / 0.8F) + 1.0D);
    float f2 = a(parama);
    float f3 = parama.f();
    parama.b((parama.g() - f2 - parama.f()) * paramFloat + f3);
    parama.c(parama.g());
    f2 = parama.k();
    parama.d((f1 - parama.k()) * paramFloat + f2);
  }
  
  public void a(float paramFloat)
  {
    f.e(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    f.b(paramFloat1);
    f.c(paramFloat2);
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0)
    {
      a(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    a(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
  
  public void a(boolean paramBoolean)
  {
    f.a(paramBoolean);
  }
  
  public void a(int... paramVarArgs)
  {
    f.a(paramVarArgs);
    f.c(0);
  }
  
  public void b(float paramFloat)
  {
    f.d(paramFloat);
  }
  
  public void b(int paramInt)
  {
    f.a(paramInt);
  }
  
  void c(float paramFloat)
  {
    g = paramFloat;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i1 = paramCanvas.save();
    paramCanvas.rotate(g, localRect.exactCenterX(), localRect.exactCenterY());
    f.a(paramCanvas, localRect);
    paramCanvas.restoreToCount(i1);
  }
  
  public int getAlpha()
  {
    return f.c();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)m;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)l;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = e;
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Animation localAnimation = (Animation)localArrayList.get(i1);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public void setAlpha(int paramInt)
  {
    f.d(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f.a(paramColorFilter);
  }
  
  public void start()
  {
    j.reset();
    f.l();
    if (f.i() != f.e())
    {
      a = true;
      j.setDuration(666L);
      i.startAnimation(j);
      return;
    }
    f.c(0);
    f.m();
    j.setDuration(1332L);
    i.startAnimation(j);
  }
  
  public void stop()
  {
    i.clearAnimation();
    c(0.0F);
    f.a(false);
    f.c(0);
    f.m();
  }
  
  private static class a
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
    private final Paint v = new Paint(1);
    private int w;
    private int x;
    
    public a(Drawable.Callback paramCallback)
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
          break label213;
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
        c.setColor(x);
        paramCanvas.rotate(paramFloat1 + paramFloat2 - 5.0F, paramRect.exactCenterX(), paramRect.exactCenterY());
        paramCanvas.drawPath(p, c);
        return;
        label213:
        p.reset();
      }
    }
    
    private int n()
    {
      return (k + 1) % j.length;
    }
    
    private void o()
    {
      d.invalidateDrawable(null);
    }
    
    public int a()
    {
      return j[n()];
    }
    
    public void a(double paramDouble)
    {
      r = paramDouble;
    }
    
    public void a(float paramFloat)
    {
      h = paramFloat;
      b.setStrokeWidth(paramFloat);
      o();
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
      b.setColor(x);
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
      o();
    }
    
    public void a(boolean paramBoolean)
    {
      if (o != paramBoolean)
      {
        o = paramBoolean;
        o();
      }
    }
    
    public void a(int[] paramArrayOfInt)
    {
      j = paramArrayOfInt;
      c(0);
    }
    
    public void b()
    {
      c(n());
    }
    
    public void b(float paramFloat)
    {
      e = paramFloat;
      o();
    }
    
    public void b(int paramInt)
    {
      x = paramInt;
    }
    
    public int c()
    {
      return u;
    }
    
    public void c(float paramFloat)
    {
      f = paramFloat;
      o();
    }
    
    public void c(int paramInt)
    {
      k = paramInt;
      x = j[k];
    }
    
    public float d()
    {
      return h;
    }
    
    public void d(float paramFloat)
    {
      g = paramFloat;
      o();
    }
    
    public void d(int paramInt)
    {
      u = paramInt;
    }
    
    public float e()
    {
      return e;
    }
    
    public void e(float paramFloat)
    {
      if (paramFloat != q)
      {
        q = paramFloat;
        o();
      }
    }
    
    public float f()
    {
      return l;
    }
    
    public float g()
    {
      return m;
    }
    
    public int h()
    {
      return j[k];
    }
    
    public float i()
    {
      return f;
    }
    
    public double j()
    {
      return r;
    }
    
    public float k()
    {
      return n;
    }
    
    public void l()
    {
      l = e;
      m = f;
      n = g;
    }
    
    public void m()
    {
      l = 0.0F;
      m = 0.0F;
      n = 0.0F;
      b(0.0F);
      c(0.0F);
      d(0.0F);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */