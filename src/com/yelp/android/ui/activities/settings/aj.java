package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AutoCompleteTextView;

class aj
  implements AdapterView.OnItemClickListener
{
  aj(PreferenceScreenFragment paramPreferenceScreenFragment, PreferenceView paramPreferenceView) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((InputMethodManager)paramView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(a.b.getWindowToken(), 0);
    a.b.clearFocus();
    PreferenceScreenFragment.a(b).a(b.getString(2131165978), a.b.getText().toString(), true, null);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */