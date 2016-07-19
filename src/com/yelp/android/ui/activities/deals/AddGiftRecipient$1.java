package com.yelp.android.ui.activities.deals;

import android.text.Editable;
import android.text.Spanned;
import android.text.TextWatcher;
import android.widget.Filter;
import com.yelp.android.util.ContactsFetcher.Contact;

class AddGiftRecipient$1
  implements TextWatcher
{
  AddGiftRecipient$1(AddGiftRecipient paramAddGiftRecipient, AddGiftRecipient.a parama) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramCharSequence instanceof Spanned))
    {
      paramCharSequence = (Spanned)paramCharSequence;
      paramCharSequence = (ContactsFetcher.Contact[])paramCharSequence.getSpans(0, paramCharSequence.length(), ContactsFetcher.Contact.class);
      if (paramCharSequence.length > 0) {
        AddGiftRecipient.a(b, paramCharSequence[0]);
      }
      return;
    }
    a.getFilter().filter(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.AddGiftRecipient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */