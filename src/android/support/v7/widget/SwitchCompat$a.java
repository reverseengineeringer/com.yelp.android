package android.support.v7.widget;

import android.view.animation.Animation;
import android.view.animation.Transformation;

class SwitchCompat$a
  extends Animation
{
  final float a;
  final float b;
  final float c;
  
  private SwitchCompat$a(SwitchCompat paramSwitchCompat, float paramFloat1, float paramFloat2)
  {
    a = paramFloat1;
    b = paramFloat2;
    c = (paramFloat2 - paramFloat1);
  }
  
  protected void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    SwitchCompat.a(d, a + c * paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.SwitchCompat.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */