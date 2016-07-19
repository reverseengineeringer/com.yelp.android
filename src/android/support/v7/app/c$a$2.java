package android.support.v7.app;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ListView;

class c$a$2
  extends CursorAdapter
{
  private final int d;
  private final int e;
  
  c$a$2(c.a parama, Context paramContext, Cursor paramCursor, boolean paramBoolean, ListView paramListView, c paramc)
  {
    super(paramContext, paramCursor, paramBoolean);
    parama = getCursor();
    d = parama.getColumnIndexOrThrow(c.I);
    e = parama.getColumnIndexOrThrow(c.J);
  }
  
  public void bindView(View paramView, Context paramContext, Cursor paramCursor)
  {
    ((CheckedTextView)paramView.findViewById(16908308)).setText(paramCursor.getString(d));
    paramView = a;
    int i = paramCursor.getPosition();
    if (paramCursor.getInt(e) == 1) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.setItemChecked(i, bool);
      return;
    }
  }
  
  public View newView(Context paramContext, Cursor paramCursor, ViewGroup paramViewGroup)
  {
    return c.b.inflate(c.j(b), paramViewGroup, false);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.app.c.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */