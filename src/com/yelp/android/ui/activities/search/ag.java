package com.yelp.android.ui.activities.search;

import android.content.res.Resources;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.widget.EditText;
import android.widget.ImageView;
import com.yelp.android.ui.util.bj;
import java.util.ArrayList;

class ag
  implements TextWatcher
{
  ag(SearchOverlay paramSearchOverlay) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if (SearchOverlay.a(a).isFocused())
    {
      if (!TextUtils.isEmpty(paramCharSequence))
      {
        SearchOverlay.n(a).filter(SearchOverlay.a(a).getText().toString());
        SearchOverlay.p(a).setVisibility(0);
        return;
      }
      SearchOverlay.p(a).setVisibility(8);
      SearchOverlay.h(a).a(new ArrayList());
      SearchOverlay.h(a).notifyDataSetChanged();
      SearchOverlay.f(a).a(SearchOverlay.g(a));
      SearchOverlay.f(a).notifyDataSetChanged();
      SearchOverlay.e(a).a(SearchOverlay.d(a));
      SearchOverlay.e(a).notifyDataSetChanged();
      SearchOverlay.n(a).filter(SearchOverlay.a(a).getText().toString());
      return;
    }
    SearchOverlay.b(a).setCompoundDrawablesWithIntrinsicBounds(a.getResources().getDrawable(2130838350), null, null, null);
    SearchOverlay.a(a, paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */