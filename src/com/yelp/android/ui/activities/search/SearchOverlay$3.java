package com.yelp.android.ui.activities.search;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.yelp.android.ui.util.af;
import java.util.ArrayList;

class SearchOverlay$3
  implements TextWatcher
{
  SearchOverlay$3(SearchOverlay paramSearchOverlay) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (SearchOverlay.a(a).isFocused())
    {
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        SearchOverlay.l(a).filter(SearchOverlay.a(a).getText().toString());
        SearchOverlay.n(a).setVisibility(0);
        return;
      }
      SearchOverlay.n(a).setVisibility(8);
      SearchOverlay.f(a).a(new ArrayList());
      SearchOverlay.f(a).notifyDataSetChanged();
      SearchOverlay.d(a).a(SearchOverlay.e(a));
      SearchOverlay.d(a).notifyDataSetChanged();
      SearchOverlay.l(a).filter(SearchOverlay.a(a).getText().toString());
      return;
    }
    SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838686), null, null, null);
    SearchOverlay.a(a, paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.SearchOverlay.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */