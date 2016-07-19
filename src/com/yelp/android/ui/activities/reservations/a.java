package com.yelp.android.ui.activities.reservations;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.YelpException;

public class a
{
  private CharSequence a;
  private final int b;
  private final DialogInterface.OnClickListener c;
  
  public a(int paramInt)
  {
    this(paramInt, new a.1());
  }
  
  public a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    b = paramInt;
    c = paramOnClickListener;
  }
  
  public AlertDialog a(Activity paramActivity)
  {
    return new AlertDialog.Builder(paramActivity).setMessage(a).setPositiveButton(2131166290, c).create();
  }
  
  public void a(Activity paramActivity, Dialog paramDialog, DialogInterface.OnClickListener paramOnClickListener)
  {
    if ((paramDialog instanceof AlertDialog))
    {
      paramDialog = (AlertDialog)paramDialog;
      paramDialog.setMessage(a);
      String str = paramActivity.getString(2131166290);
      paramActivity = paramOnClickListener;
      if (paramOnClickListener == null) {
        paramActivity = c;
      }
      paramDialog.setButton(-3, str, paramActivity);
    }
  }
  
  public final boolean a(Activity paramActivity, YelpException paramYelpException)
  {
    a = paramYelpException.getMessage(paramActivity);
    if (TextUtils.isEmpty(a)) {
      a = paramActivity.getText(2131165591);
    }
    paramActivity.showDialog(b);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */