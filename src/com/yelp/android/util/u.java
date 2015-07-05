package com.yelp.android.util;

import android.text.TextUtils;
import android.view.View;
import android.view.animation.Animation;
import com.yelp.android.appdata.ao;
import com.yelp.android.ui.util.bh;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cw;
import com.yelp.android.ui.widgets.EditTextAndClearButton;

public class u
  extends bh
{
  private Animation a;
  private Animation b;
  private EditTextAndClearButton c;
  private boolean d;
  
  public u(EditTextAndClearButton paramEditTextAndClearButton, View paramView)
  {
    super(paramEditTextAndClearButton, paramView);
    c = paramEditTextAndClearButton;
  }
  
  private void a()
  {
    if (a == null)
    {
      a = cw.a(o, p);
      a.setAnimationListener(new v(this));
    }
    if (b == null)
    {
      b = cw.b(o, p);
      b.setAnimationListener(new w(this));
    }
  }
  
  public void b()
  {
    if ((!j) && (d))
    {
      j = true;
      c.startAnimation(b);
    }
  }
  
  public void b(float paramFloat)
  {
    if (paramFloat > ao.a(5)) {
      c();
    }
  }
  
  public void c()
  {
    a();
    if ((!j) && (TextUtils.isEmpty(c.getText())) && (!d))
    {
      j = true;
      cp.b(c);
      c.startAnimation(a);
    }
  }
  
  public void c(float paramFloat)
  {
    if (paramFloat > ao.a(5)) {
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */