package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;

class ai
  extends Drawable
  implements Animatable
{
  private static final Interpolator b = new LinearInterpolator();
  private static final Interpolator c = new am(null);
  private static final Interpolator d = new ao(null);
  private static final Interpolator e = new AccelerateDecelerateInterpolator();
  boolean a;
  private final int[] f = { -16777216 };
  private final ArrayList<Animation> g = new ArrayList();
  private final an h;
  private float i;
  private Resources j;
  private View k;
  private Animation l;
  private float m;
  private double n;
  private double o;
  private final Drawable.Callback p = new al(this);
  
  public ai(Context paramContext, View paramView)
  {
    k = paramView;
    j = paramContext.getResources();
    h = new an(p);
    h.a(f);
    a(1);
    c();
  }
  
  private void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    an localan = h;
    float f1 = j.getDisplayMetrics().density;
    n = (f1 * paramDouble1);
    o = (f1 * paramDouble2);
    localan.a((float)paramDouble4 * f1);
    localan.a(f1 * paramDouble3);
    localan.b(0);
    localan.a(paramFloat1 * f1, f1 * paramFloat2);
    localan.a((int)n, (int)o);
  }
  
  private void a(float paramFloat, an paraman)
  {
    float f1 = (float)(Math.floor(paraman.i() / 0.8F) + 1.0D);
    paraman.b(paraman.e() + (paraman.f() - paraman.e()) * paramFloat);
    float f2 = paraman.i();
    paraman.d((f1 - paraman.i()) * paramFloat + f2);
  }
  
  private void c()
  {
    an localan = h;
    aj localaj = new aj(this, localan);
    localaj.setRepeatCount(-1);
    localaj.setRepeatMode(1);
    localaj.setInterpolator(b);
    localaj.setAnimationListener(new ak(this, localan));
    l = localaj;
  }
  
  public void a(float paramFloat)
  {
    h.e(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    h.b(paramFloat1);
    h.c(paramFloat2);
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
    h.a(paramBoolean);
  }
  
  public void a(int... paramVarArgs)
  {
    h.a(paramVarArgs);
    h.b(0);
  }
  
  public void b(float paramFloat)
  {
    h.d(paramFloat);
  }
  
  public void b(int paramInt)
  {
    h.a(paramInt);
  }
  
  void c(float paramFloat)
  {
    i = paramFloat;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i1 = paramCanvas.save();
    paramCanvas.rotate(i, localRect.exactCenterX(), localRect.exactCenterY());
    h.a(paramCanvas, localRect);
    paramCanvas.restoreToCount(i1);
  }
  
  public int getAlpha()
  {
    return h.b();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)o;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)n;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = g;
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
    h.c(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    h.a(paramColorFilter);
  }
  
  public void start()
  {
    l.reset();
    h.j();
    if (h.g() != h.d())
    {
      a = true;
      l.setDuration(666L);
      k.startAnimation(l);
      return;
    }
    h.b(0);
    h.k();
    l.setDuration(1333L);
    k.startAnimation(l);
  }
  
  public void stop()
  {
    k.clearAnimation();
    c(0.0F);
    h.a(false);
    h.b(0);
    h.k();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */