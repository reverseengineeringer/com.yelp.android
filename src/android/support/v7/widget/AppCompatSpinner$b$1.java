package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;

class AppCompatSpinner$b$1
  implements AdapterView.OnItemClickListener
{
  AppCompatSpinner$b$1(AppCompatSpinner.b paramb, AppCompatSpinner paramAppCompatSpinner) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b.a.setSelection(paramInt);
    if (b.a.getOnItemClickListener() != null) {
      b.a.performItemClick(paramView, paramInt, AppCompatSpinner.b.a(b).getItemId(paramInt));
    }
    b.i();
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.AppCompatSpinner.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */