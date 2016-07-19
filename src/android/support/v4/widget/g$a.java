package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

class g$a
  extends ContentObserver
{
  public g$a(g paramg)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.b();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */