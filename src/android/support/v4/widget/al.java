package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;

class al
  implements Drawable.Callback
{
  al(ai paramai) {}
  
  public void invalidateDrawable(Drawable paramDrawable)
  {
    a.invalidateSelf();
  }
  
  public void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    a.scheduleSelf(paramRunnable, paramLong);
  }
  
  public void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    a.unscheduleSelf(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */