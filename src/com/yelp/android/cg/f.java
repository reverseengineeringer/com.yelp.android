package com.yelp.android.cg;

import android.view.View;
import android.view.View.OnClickListener;

public abstract class f
{
  private View a;
  
  public f(View paramView)
  {
    a = paramView;
  }
  
  public void a(int paramInt)
  {
    a.setVisibility(paramInt);
  }
  
  public void b(View.OnClickListener paramOnClickListener)
  {
    a.setOnClickListener(paramOnClickListener);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cg.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */