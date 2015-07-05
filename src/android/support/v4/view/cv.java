package android.support.v4.view;

import android.view.View;

class cv
{
  public static void a(View paramView)
  {
    paramView.requestApplyInsets();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }
  
  public static void a(View paramView, bn parambn)
  {
    paramView.setOnApplyWindowInsetsListener(new cw(parambn));
  }
  
  public static void b(View paramView)
  {
    paramView.stopNestedScroll();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */