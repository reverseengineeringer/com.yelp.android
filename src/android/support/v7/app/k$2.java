package android.support.v7.app;

import android.support.v4.view.ab;
import android.support.v4.view.ai;
import android.support.v4.view.bg;
import android.view.View;

class k$2
  implements ab
{
  k$2(k paramk) {}
  
  public bg a(View paramView, bg parambg)
  {
    int i = parambg.b();
    int j = k.c(a, i);
    bg localbg = parambg;
    if (i != j) {
      localbg = parambg.a(parambg.a(), j, parambg.c(), parambg.d());
    }
    return ai.a(paramView, localbg);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.k.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */