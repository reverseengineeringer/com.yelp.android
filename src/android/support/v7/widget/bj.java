package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

class bj
  extends Observable<bk>
{
  public void a()
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((bk)mObservers.get(i)).a();
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */