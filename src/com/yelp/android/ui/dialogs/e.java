package com.yelp.android.ui.dialogs;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.os.Bundle;
import com.yelp.android.co.a.e;

public class e
  extends ProgressDialog
{
  public e(Context paramContext)
  {
    super(paramContext);
  }
  
  public static e a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean)
  {
    return a(paramContext, paramCharSequence1, paramCharSequence2, paramBoolean, false, null);
  }
  
  public static e a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, boolean paramBoolean1, boolean paramBoolean2, DialogInterface.OnCancelListener paramOnCancelListener)
  {
    paramContext = new e(paramContext);
    paramContext.setTitle(paramCharSequence1);
    paramContext.setMessage(paramCharSequence2);
    paramContext.setIndeterminate(paramBoolean1);
    paramContext.setCancelable(paramBoolean2);
    paramContext.setOnCancelListener(paramOnCancelListener);
    paramContext.show();
    return paramContext;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setIndeterminateDrawable(getContext().getResources().getDrawable(a.e.spinner_small));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */