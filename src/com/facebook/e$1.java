package com.facebook;

import android.view.View;
import android.view.View.OnClickListener;

class e$1
  implements View.OnClickListener
{
  e$1(e parame) {}
  
  public void onClick(View paramView)
  {
    if (e.a(a) != null) {
      e.a(a).onClick(paramView);
    }
    while (e.b(a) == null) {
      return;
    }
    e.b(a).onClick(paramView);
  }
}

/* Location:
 * Qualified Name:     com.facebook.e.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */