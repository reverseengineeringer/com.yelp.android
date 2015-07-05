package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class aj
  extends Animation
{
  aj(ai paramai, an paraman) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (b.a)
    {
      ai.a(b, paramFloat, a);
      return;
    }
    float f3 = (float)Math.toRadians(a.c() / (6.283185307179586D * a.h()));
    float f4 = a.f();
    float f1 = a.e();
    float f2 = a.i();
    float f5 = ai.a().getInterpolation(paramFloat);
    a.c((0.8F - f3) * f5 + f4);
    f3 = ai.b().getInterpolation(paramFloat);
    a.b(f3 * 0.8F + f1);
    a.d(0.25F * paramFloat + f2);
    f1 = ai.a(b) / 5.0F;
    b.c(144.0F * paramFloat + 720.0F * f1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */