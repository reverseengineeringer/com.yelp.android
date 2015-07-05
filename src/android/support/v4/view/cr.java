package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class cr
{
  public static float a(View paramView)
  {
    return paramView.getAlpha();
  }
  
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  static long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    paramView.setSaveFromParentEnabled(paramBoolean);
  }
  
  public static int b(View paramView)
  {
    return paramView.getLayerType();
  }
  
  public static void b(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public static void b(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }
  
  public static int c(View paramView)
  {
    return paramView.getMeasuredWidthAndState();
  }
  
  public static void c(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public static int d(View paramView)
  {
    return paramView.getMeasuredState();
  }
  
  public static void d(View paramView, float paramFloat)
  {
    paramView.setScaleX(paramFloat);
  }
  
  public static float e(View paramView)
  {
    return paramView.getTranslationX();
  }
  
  public static void e(View paramView, float paramFloat)
  {
    paramView.setScaleY(paramFloat);
  }
  
  public static float f(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public static float g(View paramView)
  {
    return paramView.getScaleX();
  }
  
  public static void h(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */