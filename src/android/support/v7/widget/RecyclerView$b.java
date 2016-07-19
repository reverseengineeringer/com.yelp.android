package android.support.v7.widget;

import android.database.Observable;
import java.util.ArrayList;

class RecyclerView$b
  extends Observable<RecyclerView.c>
{
  public void a()
  {
    int i = mObservers.size() - 1;
    while (i >= 0)
    {
      ((RecyclerView.c)mObservers.get(i)).a();
      i -= 1;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.RecyclerView.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */