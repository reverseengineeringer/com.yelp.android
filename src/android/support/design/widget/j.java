package android.support.design.widget;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.support.v4.view.ai;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.yelp.android.d.a;

@TargetApi(21)
class j
  extends h
{
  private Drawable g;
  private RippleDrawable h;
  private Drawable i;
  private Interpolator j;
  
  j(View paramView, m paramm)
  {
    super(paramView, paramm);
    if (!paramView.isInEditMode()) {
      j = AnimationUtils.loadInterpolator(e.getContext(), 17563661);
    }
  }
  
  private Animator a(Animator paramAnimator)
  {
    paramAnimator.setInterpolator(j);
    return paramAnimator;
  }
  
  void a() {}
  
  public void a(float paramFloat)
  {
    ai.h(e, paramFloat);
  }
  
  void a(int paramInt)
  {
    h.setColor(ColorStateList.valueOf(paramInt));
  }
  
  void a(ColorStateList paramColorStateList)
  {
    a.a(g, paramColorStateList);
    if (i != null) {
      a.a(i, paramColorStateList);
    }
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    a.a(g, paramMode);
  }
  
  void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2)
  {
    g = a.c(paramDrawable.mutate());
    a.a(g, paramColorStateList);
    if (paramMode != null) {
      a.a(g, paramMode);
    }
    if (paramInt2 > 0) {
      i = a(paramInt2, paramColorStateList);
    }
    for (paramDrawable = new LayerDrawable(new Drawable[] { i, g });; paramDrawable = g)
    {
      h = new RippleDrawable(ColorStateList.valueOf(paramInt1), paramDrawable, null);
      f.a(h);
      f.a(0, 0, 0, 0);
      return;
      i = null;
    }
  }
  
  void a(int[] paramArrayOfInt) {}
  
  void b(float paramFloat)
  {
    StateListAnimator localStateListAnimator = new StateListAnimator();
    localStateListAnimator.addState(b, a(ObjectAnimator.ofFloat(e, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(c, a(ObjectAnimator.ofFloat(e, "translationZ", new float[] { paramFloat })));
    localStateListAnimator.addState(d, a(ObjectAnimator.ofFloat(e, "translationZ", new float[] { 0.0F })));
    e.setStateListAnimator(localStateListAnimator);
  }
  
  b d()
  {
    return new c();
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */