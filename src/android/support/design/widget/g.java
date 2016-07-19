package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.Transformation;

class g
  extends i
{
  l a;
  private Drawable g;
  private Drawable h;
  private Drawable i;
  private float j;
  private float k;
  private int l;
  private o m;
  private boolean n;
  
  g(View paramView, m paramm)
  {
    super(paramView, paramm);
    l = paramView.getResources().getInteger(17694720);
    m = new o();
    m.a(paramView);
    m.a(b, a(new b(null)));
    m.a(c, a(new b(null)));
    m.a(d, a(new c(null)));
  }
  
  private Animation a(Animation paramAnimation)
  {
    paramAnimation.setInterpolator(a.b);
    paramAnimation.setDuration(l);
    return paramAnimation;
  }
  
  private static ColorStateList b(int paramInt)
  {
    return new ColorStateList(new int[][] { c, b, new int[0] }, new int[] { paramInt, paramInt, 0 });
  }
  
  private void e()
  {
    Rect localRect = new Rect();
    a.getPadding(localRect);
    f.a(left, top, right, bottom);
  }
  
  void a()
  {
    m.b();
  }
  
  void a(float paramFloat)
  {
    if ((j != paramFloat) && (a != null))
    {
      a.a(paramFloat, k + paramFloat);
      j = paramFloat;
      e();
    }
  }
  
  void a(int paramInt)
  {
    com.yelp.android.d.a.a(h, b(paramInt));
  }
  
  void a(ColorStateList paramColorStateList)
  {
    com.yelp.android.d.a.a(g, paramColorStateList);
    if (i != null) {
      com.yelp.android.d.a.a(i, paramColorStateList);
    }
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    com.yelp.android.d.a.a(g, paramMode);
  }
  
  void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    g = com.yelp.android.d.a.c(paramDrawable.mutate());
    com.yelp.android.d.a.a(g, paramColorStateList);
    if (paramMode != null) {
      com.yelp.android.d.a.a(g, paramMode);
    }
    paramDrawable = new GradientDrawable();
    paramDrawable.setShape(1);
    paramDrawable.setColor(-1);
    paramDrawable.setCornerRadius(f.a());
    h = com.yelp.android.d.a.c(paramDrawable);
    com.yelp.android.d.a.a(h, b(paramInt1));
    com.yelp.android.d.a.a(h, PorterDuff.Mode.MULTIPLY);
    if (paramInt2 > 0) {
      i = a(paramInt2, paramColorStateList);
    }
    for (paramDrawable = new Drawable[] { i, g, h };; paramDrawable = new Drawable[] { g, h })
    {
      a = new l(e.getResources(), new LayerDrawable(paramDrawable), f.a(), j, j + k);
      a.a(false);
      f.a(a);
      e();
      return;
      i = null;
    }
  }
  
  void a(int[] paramArrayOfInt)
  {
    m.a(paramArrayOfInt);
  }
  
  void b()
  {
    if ((n) || (e.getVisibility() != 0)) {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(e.getContext(), com.yelp.android.a.a.a.design_fab_out);
    localAnimation.setInterpolator(a.b);
    localAnimation.setDuration(200L);
    localAnimation.setAnimationListener(new a.a()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        g.a(g.this, false);
        e.setVisibility(8);
      }
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        g.a(g.this, true);
      }
    });
    e.startAnimation(localAnimation);
  }
  
  void b(float paramFloat)
  {
    if ((k != paramFloat) && (a != null))
    {
      k = paramFloat;
      a.b(j + paramFloat);
      e();
    }
  }
  
  void c()
  {
    if ((e.getVisibility() != 0) || (n))
    {
      e.clearAnimation();
      e.setVisibility(0);
      Animation localAnimation = AnimationUtils.loadAnimation(e.getContext(), com.yelp.android.a.a.a.design_fab_in);
      localAnimation.setDuration(200L);
      localAnimation.setInterpolator(a.b);
      e.startAnimation(localAnimation);
    }
  }
  
  private abstract class a
    extends Animation
  {
    private float b;
    private float c;
    
    private a() {}
    
    protected abstract float a();
    
    protected void applyTransformation(float paramFloat, Transformation paramTransformation)
    {
      a.a(b + c * paramFloat);
    }
    
    public void reset()
    {
      super.reset();
      b = a.a();
      c = (a() - b);
    }
  }
  
  private class b
    extends g.a
  {
    private b()
    {
      super(null);
    }
    
    protected float a()
    {
      return g.a(g.this) + g.b(g.this);
    }
  }
  
  private class c
    extends g.a
  {
    private c()
    {
      super(null);
    }
    
    protected float a()
    {
      return g.a(g.this);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */