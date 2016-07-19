package com.yelp.android.ui.dialogs;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v7.app.d.a;

public abstract class YelpAlertDialogFragment
  extends YelpBaseDialogFragment
{
  protected DialogInterface.OnCancelListener a;
  private DialogInterface.OnDismissListener b;
  
  public static Bundle b(String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    if (paramString1 != null) {
      localBundle.putString("title", paramString1);
    }
    if (paramString2 != null) {
      localBundle.putString("message", paramString2);
    }
    return localBundle;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    b = paramOnDismissListener;
  }
  
  public void a(l paraml)
  {
    super.show(paraml, "");
  }
  
  protected d.a c(String paramString1, String paramString2)
  {
    d.a locala = e();
    if (paramString1 != null) {
      locala.a(paramString1);
    }
    if (paramString2 != null) {
      locala.b(paramString2);
    }
    locala.a(a);
    return locala;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (b != null) {
      b.onDismiss(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.YelpAlertDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */