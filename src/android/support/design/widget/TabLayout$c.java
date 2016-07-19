package android.support.design.widget;

import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.View;

public final class TabLayout$c
{
  private Drawable a;
  private CharSequence b;
  private CharSequence c;
  private int d = -1;
  private View e;
  private final TabLayout f;
  
  TabLayout$c(TabLayout paramTabLayout)
  {
    f = paramTabLayout;
  }
  
  public c a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    if (d >= 0) {
      TabLayout.a(f, d);
    }
    return this;
  }
  
  public View a()
  {
    return e;
  }
  
  void a(int paramInt)
  {
    d = paramInt;
  }
  
  public Drawable b()
  {
    return a;
  }
  
  public c b(int paramInt)
  {
    return a(f.getResources().getText(paramInt));
  }
  
  public int c()
  {
    return d;
  }
  
  public CharSequence d()
  {
    return b;
  }
  
  public void e()
  {
    f.c(this);
  }
  
  public boolean f()
  {
    return f.getSelectedTabPosition() == d;
  }
  
  public CharSequence g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */