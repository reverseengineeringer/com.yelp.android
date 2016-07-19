package android.support.v4.view;

import android.view.View;

class az$b$a
  implements bd
{
  az a;
  
  az$b$a(az paramaz)
  {
    a = paramaz;
  }
  
  public void a(View paramView)
  {
    if (az.c(a) >= 0) {
      ai.a(paramView, 2, null);
    }
    if (az.a(a) != null) {
      az.a(a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof bd)) {}
    for (localObject = (bd)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((bd)localObject).a(paramView);
      }
      return;
    }
  }
  
  public void b(View paramView)
  {
    if (az.c(a) >= 0)
    {
      ai.a(paramView, az.c(a), null);
      az.a(a, -1);
    }
    if (az.b(a) != null) {
      az.b(a).run();
    }
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof bd)) {}
    for (localObject = (bd)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((bd)localObject).b(paramView);
      }
      return;
    }
  }
  
  public void c(View paramView)
  {
    Object localObject = paramView.getTag(2113929216);
    if ((localObject instanceof bd)) {}
    for (localObject = (bd)localObject;; localObject = null)
    {
      if (localObject != null) {
        ((bd)localObject).c(paramView);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.az.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */