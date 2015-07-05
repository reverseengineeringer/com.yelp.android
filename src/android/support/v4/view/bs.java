package android.support.v4.view;

import android.database.DataSetObserver;

class bs
  extends DataSetObserver
  implements dt, du
{
  private int b;
  
  private bs(PagerTitleStrip paramPagerTitleStrip) {}
  
  public void a(int paramInt)
  {
    float f = 0.0F;
    if (b == 0)
    {
      a.a(a.a.getCurrentItem(), a.a.getAdapter());
      if (PagerTitleStrip.a(a) >= 0.0F) {
        f = PagerTitleStrip.a(a);
      }
      a.a(a.a.getCurrentItem(), f, true);
    }
  }
  
  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    paramInt2 = paramInt1;
    if (paramFloat > 0.5F) {
      paramInt2 = paramInt1 + 1;
    }
    a.a(paramInt2, paramFloat, false);
  }
  
  public void a(bo parambo1, bo parambo2)
  {
    a.a(parambo1, parambo2);
  }
  
  public void b(int paramInt)
  {
    b = paramInt;
  }
  
  public void onChanged()
  {
    float f = 0.0F;
    a.a(a.a.getCurrentItem(), a.a.getAdapter());
    if (PagerTitleStrip.a(a) >= 0.0F) {
      f = PagerTitleStrip.a(a);
    }
    a.a(a.a.getCurrentItem(), f, true);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */