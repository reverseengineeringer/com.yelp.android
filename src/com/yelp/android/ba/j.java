package com.yelp.android.ba;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.TipFeedEntry;

public class j
{
  private final TextView a;
  
  public j(View paramView, int paramInt)
  {
    a = ((TextView)paramView.findViewById(2131493688));
  }
  
  public void a(TipFeedEntry paramTipFeedEntry, Context paramContext)
  {
    a.setText(paramTipFeedEntry.getTip().getText().replace('\n', ' ').replace('\t', ' '));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ba.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */