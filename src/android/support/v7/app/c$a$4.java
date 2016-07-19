package android.support.v7.app;

import android.content.DialogInterface.OnMultiChoiceClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

class c$a$4
  implements AdapterView.OnItemClickListener
{
  c$a$4(c.a parama, ListView paramListView, c paramc) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (c.C != null) {
      c.C[paramInt] = a.isItemChecked(paramInt);
    }
    c.G.onClick(c.g(b), paramInt, a.isItemChecked(paramInt));
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.a.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */