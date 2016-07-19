package com.flipboard.bottomsheet.commons;

import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.cq.a.c;

class MenuSheetView$a$a
{
  final ImageView a;
  final TextView b;
  
  MenuSheetView$a$a(MenuSheetView.a parama, View paramView)
  {
    a = ((ImageView)paramView.findViewById(a.c.icon));
    b = ((TextView)paramView.findViewById(a.c.label));
  }
  
  public void a(MenuSheetView.b paramb)
  {
    a.setImageDrawable(paramb.b().getIcon());
    b.setText(paramb.b().getTitle());
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.MenuSheetView.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */