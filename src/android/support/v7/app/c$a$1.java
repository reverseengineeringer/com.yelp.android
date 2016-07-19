package android.support.v7.app;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ListView;

class c$a$1
  extends ArrayAdapter<CharSequence>
{
  c$a$1(c.a parama, Context paramContext, int paramInt1, int paramInt2, CharSequence[] paramArrayOfCharSequence, ListView paramListView)
  {
    super(paramContext, paramInt1, paramInt2, paramArrayOfCharSequence);
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    paramView = super.getView(paramInt, paramView, paramViewGroup);
    if ((b.C != null) && (b.C[paramInt] != 0)) {
      a.setItemChecked(paramInt, true);
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */