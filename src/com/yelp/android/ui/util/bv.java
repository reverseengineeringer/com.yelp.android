package com.yelp.android.ui.util;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

public class bv<Clearable extends BaseAdapter,  extends j>
{
  public final Clearable a;
  public CharSequence b;
  public final int[] c;
  public final int d;
  public final View e;
  public final View f;
  public boolean g;
  public final boolean h;
  public boolean i = true;
  
  public bv(Clearable paramClearable, CharSequence paramCharSequence, int[] paramArrayOfInt, int paramInt, View paramView1, View paramView2)
  {
    a = paramClearable;
    b = paramCharSequence;
    c = paramArrayOfInt;
    d = paramInt;
    e = paramView1;
    f = paramView2;
    if ((paramView1 != null) || (!TextUtils.isEmpty(paramCharSequence)))
    {
      bool1 = true;
      g = bool1;
      if (paramView2 == null) {
        break label88;
      }
    }
    label88:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      h = bool1;
      return;
      bool1 = false;
      break;
    }
  }
  
  public View a()
  {
    return f;
  }
  
  public View a(View paramView, ViewGroup paramViewGroup)
  {
    if (e != null)
    {
      paramViewGroup = e;
      return paramViewGroup;
    }
    if (paramView == null) {
      paramView = new TextView(paramViewGroup.getContext(), null, d);
    }
    for (;;)
    {
      TextView localTextView = (TextView)paramView;
      localTextView.setText(b);
      paramViewGroup = paramView;
      if (c == null) {
        break;
      }
      localTextView.setCompoundDrawablesWithIntrinsicBounds(c[0], c[1], c[2], c[3]);
      return paramView;
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    if ((e != null) || (!TextUtils.isEmpty(b))) {}
    for (boolean bool = true;; bool = false)
    {
      g = bool;
      return;
    }
  }
  
  public String toString()
  {
    if (a != null) {
      return String.format("\nSection[types:%s, header:%s, footer:%s size:%s]", new Object[] { Integer.valueOf(a.getViewTypeCount()), Boolean.valueOf(g), Boolean.valueOf(h), Integer.valueOf(a.getCount()) });
    }
    return "Empty";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */