package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.TextUtils;

public class CallNumberDialog
  extends DialogFragment
{
  private DialogInterface.OnDismissListener a;
  
  public static CallNumberDialog a(String paramString)
  {
    CallNumberDialog localCallNumberDialog = new CallNumberDialog();
    Bundle localBundle = new Bundle();
    if (!TextUtils.isEmpty(paramString)) {
      localBundle.putString("phone.number", paramString);
    }
    localCallNumberDialog.setArguments(localBundle);
    return localCallNumberDialog;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a = paramOnDismissListener;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new AlertDialog.Builder(getActivity()).setMessage(2131166466).setPositiveButton(2131165581, new CallNumberDialog.1(this)).setNegativeButton(2131166925, null).create();
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (a != null) {
      a.onDismiss(paramDialogInterface);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.CallNumberDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */