package android.support.v4.widget;

import android.view.animation.Interpolator;

final class ac$1
  implements Interpolator
{
  public float getInterpolation(float paramFloat)
  {
    paramFloat -= 1.0F;
    return paramFloat * (paramFloat * paramFloat * paramFloat * paramFloat) + 1.0F;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ac.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */