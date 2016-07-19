package android.support.v7.app;

import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

class c$a$3
  implements AdapterView.OnItemClickListener
{
  c$a$3(c.a parama, c paramc) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b.u.onClick(c.g(a), paramInt);
    if (!b.E) {
      c.g(a).dismiss();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.a.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */