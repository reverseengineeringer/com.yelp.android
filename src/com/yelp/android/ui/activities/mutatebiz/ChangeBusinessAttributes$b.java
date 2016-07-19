package com.yelp.android.ui.activities.mutatebiz;

import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;

class ChangeBusinessAttributes$b
  implements View.OnClickListener
{
  private final EditField.InputType b;
  private final int c;
  private final int d;
  private int e;
  private boolean f;
  private final String g;
  
  public ChangeBusinessAttributes$b(ChangeBusinessAttributes paramChangeBusinessAttributes, int paramInt1, int paramInt2, EditField.InputType paramInputType, String paramString)
  {
    b = paramInputType;
    d = paramInt1;
    c = paramInt2;
    f = true;
    g = paramString;
  }
  
  public ChangeBusinessAttributes$b(ChangeBusinessAttributes paramChangeBusinessAttributes, int paramInt, EditField.InputType paramInputType, String paramString)
  {
    this(paramChangeBusinessAttributes, paramInt, paramInt, paramInputType, paramString);
  }
  
  public void a(int paramInt)
  {
    e = paramInt;
  }
  
  public void onClick(View paramView)
  {
    Object localObject = ((d)paramView).getCharSequenceData();
    if (TextUtils.isEmpty((CharSequence)localObject)) {}
    for (int i = d;; i = c)
    {
      localObject = EditField.a(EditField.a(paramView.getContext(), i, (CharSequence)localObject, e, b, g), f);
      if (localObject != null) {
        a.startActivityForResult((Intent)localObject, ChangeBusinessAttributes.a(a, paramView));
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */