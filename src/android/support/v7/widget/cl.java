package android.support.v7.widget;

import android.text.Editable;
import android.text.TextWatcher;

class cl
  implements TextWatcher
{
  cl(SearchView paramSearchView) {}
  
  public void afterTextChanged(Editable paramEditable) {}
  
  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3) {}
  
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    SearchView.a(a, paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */