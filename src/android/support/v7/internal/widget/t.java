package android.support.v7.internal.widget;

import android.database.DataSetObserver;

class t
  extends DataSetObserver
{
  t(ActivityChooserView paramActivityChooserView) {}
  
  public void onChanged()
  {
    super.onChanged();
    ActivityChooserView.a(a).notifyDataSetChanged();
  }
  
  public void onInvalidated()
  {
    super.onInvalidated();
    ActivityChooserView.a(a).notifyDataSetInvalidated();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */