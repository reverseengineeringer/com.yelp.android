package android.support.design.widget;

import android.support.v4.view.ViewPager.e;
import java.lang.ref.WeakReference;

public class TabLayout$d
  implements ViewPager.e
{
  private final WeakReference<TabLayout> a;
  private int b;
  private int c;
  
  public TabLayout$d(TabLayout paramTabLayout)
  {
    a = new WeakReference(paramTabLayout);
  }
  
  public void a(int paramInt)
  {
    b = c;
    c = paramInt;
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    boolean bool2 = true;
    TabLayout localTabLayout = (TabLayout)a.get();
    if (localTabLayout != null)
    {
      bool1 = bool2;
      if (c != 1) {
        if ((c != 2) || (b != 1)) {
          break label62;
        }
      }
    }
    label62:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localTabLayout.a(paramInt1, paramFloat, bool1);
      return;
    }
  }
  
  public void b(int paramInt)
  {
    TabLayout localTabLayout = (TabLayout)a.get();
    TabLayout.c localc;
    if (localTabLayout != null)
    {
      localc = localTabLayout.a(paramInt);
      if (c != 0) {
        break label39;
      }
    }
    label39:
    for (boolean bool = true;; bool = false)
    {
      localTabLayout.b(localc, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */