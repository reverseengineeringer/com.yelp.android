package android.support.v4.widget;

import android.database.DataSetObserver;

class l
  extends DataSetObserver
{
  private l(i parami) {}
  
  public void onChanged()
  {
    a.a = true;
    a.notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    a.a = false;
    a.notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */