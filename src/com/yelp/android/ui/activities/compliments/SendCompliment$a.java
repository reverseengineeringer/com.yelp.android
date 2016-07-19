package com.yelp.android.ui.activities.compliments;

import android.content.Context;
import android.view.View;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import com.yelp.android.serializable.Compliment.ComplimentType;

public final class SendCompliment$a
  implements CompoundButton.OnCheckedChangeListener
{
  private final EditText a;
  private final View b;
  
  public SendCompliment$a(EditText paramEditText, View paramView)
  {
    a = paramEditText;
    b = paramView;
  }
  
  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean) {}
    try
    {
      Compliment.ComplimentType localComplimentType = Compliment.ComplimentType.valueOf((String)paramCompoundButton.getTag());
      a.setTag(localComplimentType);
      Context localContext = a.getContext();
      paramCompoundButton = "";
      if (!localComplimentType.equals(Compliment.ComplimentType.NOTE)) {
        paramCompoundButton = localContext.getString(2131165882, new Object[] { localContext.getString(mDescription) });
      }
      a.setHint(paramCompoundButton);
      b.requestFocus();
      return;
    }
    catch (IllegalArgumentException paramCompoundButton) {}
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.compliments.SendCompliment.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */