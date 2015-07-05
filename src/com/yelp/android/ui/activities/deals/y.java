package com.yelp.android.ui.activities.deals;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AutoCompleteTextView;
import android.widget.CheckBox;
import android.widget.EditText;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.ui.activities.account.g;
import com.yelp.android.ui.activities.account.h;
import com.yelp.android.ui.activities.account.i;

class y
  implements View.OnClickListener
{
  y(AddGiftRecipient paramAddGiftRecipient) {}
  
  public void onClick(View paramView)
  {
    String str1 = null;
    String str2 = String.valueOf(AddGiftRecipient.d(a).getText());
    String str3 = String.valueOf(AddGiftRecipient.c(a).getText());
    boolean bool = AddGiftRecipient.e(a).isChecked();
    if (bool) {}
    for (paramView = String.valueOf(AddGiftRecipient.a(a).getText());; paramView = null)
    {
      if (bool) {
        str1 = String.valueOf(AddGiftRecipient.f(a).getText());
      }
      int j = 0;
      localObject = new i();
      int i = j;
      if (bool)
      {
        i = j;
        if (!new h().a(AddGiftRecipient.a(a)))
        {
          AddGiftRecipient.a(a).setError(a.getText(2131166336));
          i = 1;
        }
      }
      if (!((g)localObject).a(AddGiftRecipient.c(a)))
      {
        AddGiftRecipient.c(a).setError(a.getText(2131165943));
        i = 1;
      }
      if (i == 0) {
        break;
      }
      return;
    }
    Object localObject = a.getIntent();
    GiftRecipient localGiftRecipient = (GiftRecipient)((Intent)localObject).getParcelableExtra(AddGiftRecipient.a());
    if (localGiftRecipient == null) {}
    for (paramView = new GiftRecipient(str3, str2, str1, paramView);; paramView = new GiftRecipient(localGiftRecipient, str3, str2, str1, paramView))
    {
      ((Intent)localObject).putExtra(AddGiftRecipient.b(), true);
      ((Intent)localObject).putExtra(AddGiftRecipient.a(), paramView);
      a.setResult(-1, (Intent)localObject);
      a.finish();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */