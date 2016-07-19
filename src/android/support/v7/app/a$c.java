package android.support.v7.app;

import android.app.Activity;
import android.content.Context;
import com.yelp.android.k.c;

class a$c
  extends c
  implements a.d
{
  private final Activity a;
  
  public a$c(Activity paramActivity, Context paramContext)
  {
    super(paramContext);
    a = paramActivity;
  }
  
  public void a(float paramFloat)
  {
    if (paramFloat == 1.0F) {
      b(true);
    }
    for (;;)
    {
      d(paramFloat);
      return;
      if (paramFloat == 0.0F) {
        b(false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */