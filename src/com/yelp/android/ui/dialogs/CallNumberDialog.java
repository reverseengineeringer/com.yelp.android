package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.TextUtils;

public class CallNumberDialog
  extends DialogFragment
{
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
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    return new AlertDialog.Builder(getActivity()).setMessage(2131166462).setPositiveButton(2131165455, new b(this)).setNegativeButton(2131165456, null).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.CallNumberDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */