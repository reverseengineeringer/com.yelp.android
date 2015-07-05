package com.yelp.android.ui.activities.search;

import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;
import android.widget.EditText;
import java.util.ArrayList;

class al
  implements View.OnKeyListener
{
  al(SearchOverlay paramSearchOverlay) {}
  
  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchOverlay.c(a).contains(SearchOverlay.b(a).getText().toString()))
    {
      SearchOverlay.b(a).setHint("");
      SearchOverlay.b(a).setText("");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */