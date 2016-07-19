package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.support.v7.app.d.a;
import android.view.View;

public class d
{
  private d.a a;
  
  @SuppressLint({"InflateParams"})
  public d(Context paramContext)
  {
    a = new d.a(paramContext);
  }
  
  public Dialog a()
  {
    return a.b();
  }
  
  public d a(int paramInt)
  {
    a.a(paramInt);
    return this;
  }
  
  public d a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.a(paramInt, paramOnClickListener);
    return this;
  }
  
  public d a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a.a(paramOnCancelListener);
    return this;
  }
  
  public d a(View paramView)
  {
    a.b(paramView);
    return this;
  }
  
  public d b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    a.b(paramInt, paramOnClickListener);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */