package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;

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
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a = paramOnCancelListener;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    b = paramOnDismissListener;
  }
  
  public void a(FragmentManager paramFragmentManager)
  {
    super.show(paramFragmentManager, "");
  }
  
  protected AlertDialog.Builder c(String paramString1, String paramString2)
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(getActivity());
    if (paramString1 != null) {
      localBuilder.setTitle(paramString1);
    }
    if (paramString2 != null) {
      localBuilder.setMessage(paramString2);
    }
    localBuilder.setOnCancelListener(a);
    return localBuilder;
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