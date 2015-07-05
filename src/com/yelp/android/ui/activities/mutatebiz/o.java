package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;

class o
  implements View.OnClickListener
{
  private final EditField.InputType b;
  private final int c;
  private final int d;
  private int e;
  private boolean f;
  
  public o(ChangeBusinessAttributes paramChangeBusinessAttributes, int paramInt1, int paramInt2, EditField.InputType paramInputType)
  {
    b = paramInputType;
    d = paramInt1;
    c = paramInt2;
    f = true;
  }
  
  public o(ChangeBusinessAttributes paramChangeBusinessAttributes, int paramInt, EditField.InputType paramInputType)
  {
    this(paramChangeBusinessAttributes, paramInt, paramInt, paramInputType);
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void onClick(View paramView)
  {
    Object localObject = ((ah)paramView).getCharSequenceData();
    if (TextUtils.isEmpty((CharSequence)localObject)) {}
    for (int i = d;; i = c)
    {
      localObject = EditField.a(EditField.a(paramView.getContext(), i, (CharSequence)localObject, e, b), f);
      if (localObject != null) {
        a.startActivityForResult((Intent)localObject, ChangeBusinessAttributes.a(a, paramView));
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */