package android.support.v7.widget;

import android.content.res.Resources.Theme;
import android.database.DataSetObserver;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.SpinnerAdapter;
import android.widget.ThemedSpinnerAdapter;

class AppCompatSpinner$a
  implements ListAdapter, SpinnerAdapter
{
  private SpinnerAdapter a;
  private ListAdapter b;
  
  public AppCompatSpinner$a(SpinnerAdapter paramSpinnerAdapter, Resources.Theme paramTheme)
  {
    a = paramSpinnerAdapter;
    if ((paramSpinnerAdapter instanceof ListAdapter)) {
      b = ((ListAdapter)paramSpinnerAdapter);
    }
    if (paramTheme != null)
    {
      if ((!AppCompatSpinner.a()) || (!(paramSpinnerAdapter instanceof ThemedSpinnerAdapter))) {
        break label64;
      }
      paramSpinnerAdapter = (ThemedSpinnerAdapter)paramSpinnerAdapter;
      if (paramSpinnerAdapter.getDropDownViewTheme() != paramTheme) {
        paramSpinnerAdapter.setDropDownViewTheme(paramTheme);
      }
    }
    label64:
    do
    {
      do
      {
        return;
      } while (!(paramSpinnerAdapter instanceof m));
      paramSpinnerAdapter = (m)paramSpinnerAdapter;
    } while (paramSpinnerAdapter.a() != null);
    paramSpinnerAdapter.a(paramTheme);
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
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */