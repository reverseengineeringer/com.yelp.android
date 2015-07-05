package com.yelp.android.ui.activities.compliments;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.yelp.android.appdata.webrequests.av;
import com.yelp.android.serializable.Compliment;
import com.yelp.android.serializable.Compliment.ComplimentState;

class c
  implements View.OnClickListener
{
  private final Mode b;
  
  public c(a parama, Mode paramMode)
  {
    b = paramMode;
  }
  
  public void onClick(View paramView)
  {
    paramView = (Button)paramView;
    paramView.setEnabled(false);
    Compliment localCompliment = (Compliment)paramView.getTag();
    localCompliment.setState(Compliment.ComplimentState.PENDING);
    paramView.setText(b.getLabelForState(localCompliment.getState()));
    paramView.setTag(localCompliment);
    b.makeActionRequest(new e(a.a(a), localCompliment, paramView, b), localCompliment).execute(new Void[0]);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */