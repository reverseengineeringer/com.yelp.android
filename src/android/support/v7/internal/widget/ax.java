package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;

class ax
  implements ListAdapter, SpinnerAdapter
{
  private SpinnerAdapter a;
  private ListAdapter b;
  
  public ax(SpinnerAdapter paramSpinnerAdapter)
  {
    a = paramSpinnerAdapter;
    if ((paramSpinnerAdapter instanceof ListAdapter)) {
      b = ((ListAdapter)paramSpinnerAdapter);
    }
  }
  
  public boolean areAllItemsEnabled()
  {
    ListAdapter localListAdapter = b;
    if (localListAdapter != null) {
      return localListAdapter.areAllItemsEnabled();
    }
    return true;
  }
  
  public int getCount()
  {
    if (a == null) {
      return 0;
    }
    return a.getCount();
  }
  
  public View getDropDownView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (a == null) {
      return null;
    }
    return a.getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public Object getItem(int paramInt)
  {
    if (a == null) {
      return null;
    }
    return a.getItem(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    if (a == null) {
      return -1L;
    }
    return a.getItemId(paramInt);
  }
  
  public int getItemViewType(int paramInt)
  {
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    return getDropDownView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 1;
  }
  
  public boolean hasStableIds()
  {
    return (a != null) && (a.hasStableIds());
  }
  
  public boolean isEmpty()
  {
    return getCount() == 0;
  }
  
  public boolean isEnabled(int paramInt)
  {
    ListAdapter localListAdapter = b;
    if (localListAdapter != null) {
      return localListAdapter.isEnabled(paramInt);
    }
    return true;
  }
  
  public void registerDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (a != null) {
      a.registerDataSetObserver(paramDataSetObserver);
    }
  }
  
  public void unregisterDataSetObserver(DataSetObserver paramDataSetObserver)
  {
    if (a != null) {
      a.unregisterDataSetObserver(paramDataSetObserver);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ax
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */