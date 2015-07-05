package android.support.v4.content;

import android.database.ContentObserver;
import android.os.Handler;

public final class s
  extends ContentObserver
{
  public s(r paramr)
  {
    super(new Handler());
  }
  
  public boolean deliverSelfNotifications()
  {
    return true;
  }
  
  public void onChange(boolean paramBoolean)
  {
    a.onContentChanged();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */