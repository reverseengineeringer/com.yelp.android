package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import android.support.v4.view.ce;
import android.view.Window;

class t
  extends ac
  implements u
{
  private final Activity a;
  
  public t(Activity paramActivity, Context paramContext)
  {
    super(paramContext);
    a = paramActivity;
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      a(true);
    }
    for (;;)
    {
      super.b(paramFloat);
      return;
      if (paramFloat == 0.0F) {
        a(false);
      }
    }
  }
  
  boolean a()
  {
    return ce.h(a.getWindow().getDecorView()) == 1;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */