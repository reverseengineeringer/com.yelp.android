package android.support.v4.content;

import android.database.ContentObserver;
import android.os.Handler;

public final class l$a
  extends ContentObserver
{
  public l$a(l paraml)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.B();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.l.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */