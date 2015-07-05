package com.yelp.android.ui.activities.reservations;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.YelpException;

public class h
{
  private CharSequence a;
  private final int b;
  private final DialogInterface.OnClickListener c;
  
  public h(int paramInt)
  {
    this(paramInt, new i());
  }
  
  public h(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    b = paramInt;
    c = paramOnClickListener;
  }
  
  public AlertDialog a(Activity paramActivity)
  {
    return new AlertDialog.Builder(paramActivity).setMessage(a).setNeutralButton(2131166237, c).create();
  }
  
  public void a(Activity paramActivity, Dialog paramDialog)
  {
    if ((paramDialog instanceof AlertDialog)) {
      ((AlertDialog)paramDialog).setMessage(a);
    }
  }
  
  public final boolean a(Activity paramActivity, YelpException paramYelpException)
  {
    a = paramYelpException.getMessage(paramActivity);
    if (TextUtils.isEmpty(a)) {
      a = paramActivity.getText(2131165464);
    }
    paramActivity.showDialog(b);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reservations.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */