package android.support.design.internal;

import android.graphics.Rect;
import android.support.v4.view.ab;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.view.View;

class ScrimInsetsFrameLayout$1
  implements ab
{
  ScrimInsetsFrameLayout$1(ScrimInsetsFrameLayout paramScrimInsetsFrameLayout) {}
  
  public bg a(View paramView, bg parambg)
  {
    if (ScrimInsetsFrameLayout.a(a) == null) {
      ScrimInsetsFrameLayout.a(a, new Rect());
    }
    ScrimInsetsFrameLayout.a(a).set(parambg.a(), parambg.b(), parambg.c(), parambg.d());
    paramView = a;
    if ((ScrimInsetsFrameLayout.a(a).isEmpty()) || (ScrimInsetsFrameLayout.b(a) == null)) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setWillNotDraw(bool);
      ai.d(a);
      return parambg.f();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.ScrimInsetsFrameLayout.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */