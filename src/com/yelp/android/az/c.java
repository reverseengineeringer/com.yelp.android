package com.yelp.android.az;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.ui.util.cw;

public class c
{
  private final View a;
  private final TextView b;
  private final ImageView c;
  private Animation d;
  
  public c(View paramView, int paramInt1, int paramInt2, int paramInt3, View.OnClickListener paramOnClickListener)
  {
    a = paramView.findViewById(paramInt1);
    b = ((TextView)a.findViewById(2131493534));
    c = ((ImageView)a.findViewById(2131493533));
    b.setTextColor(paramView.getContext().getResources().getColorStateList(paramInt2));
    c.setImageResource(paramInt3);
    d = AnimationUtils.loadAnimation(paramView.getContext(), 2130968589);
    d.setDuration(cw.e);
    d.setFillAfter(true);
    a.setOnClickListener(new d(this, paramOnClickListener));
  }
  
  public void a(CharSequence paramCharSequence)
  {
    b.setText(paramCharSequence);
  }
  
  public void a(boolean paramBoolean)
  {
    a.setSelected(paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.az.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */