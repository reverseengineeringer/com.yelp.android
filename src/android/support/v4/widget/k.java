package android.support.v4.widget;

import android.database.ContentObserver;
import android.os.Handler;

class k
  extends ContentObserver
{
  public k(i parami)
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
 * Qualified Name:     android.support.v4.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */