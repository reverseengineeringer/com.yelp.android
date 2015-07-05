package com.yelp.android.ui.dialogs;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.yelp.android.ui.activities.events.EventFragment;

class p
  implements View.OnClickListener
{
  p(CompleteRsvpDialog paramCompleteRsvpDialog) {}
  
  public void onClick(View paramView)
  {
    EventFragment localEventFragment = (EventFragment)a.getTargetFragment();
    if (CompleteRsvpDialog.a(a) != null) {}
    for (paramView = CompleteRsvpDialog.a(a).getText().toString().trim();; paramView = null)
    {
      localEventFragment.a(CompleteRsvpDialog.b(a), paramView, CompleteRsvpDialog.a(a, false));
      a.dismiss();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */