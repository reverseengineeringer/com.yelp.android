package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import com.yelp.android.bf.k;

public class YelpProgressDialogFragment
  extends DialogFragment
{
  private DialogInterface.OnCancelListener a;
  
  public static YelpProgressDialogFragment a(int paramInt)
  {
    YelpProgressDialogFragment localYelpProgressDialogFragment = new YelpProgressDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("loading_string_id", paramInt);
    localYelpProgressDialogFragment.setArguments(localBundle);
    return localYelpProgressDialogFragment;
  }
  
  public void a(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    a = paramOnCancelListener;
    if (getDialog() != null) {
      getDialog().setOnCancelListener(a);
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new bn(getActivity());
    paramBundle.setProgressStyle(0);
    int j = getArguments().getInt("loading_string_id");
    int i = j;
    if (j == 0) {
      i = k.loading;
    }
    paramBundle.setMessage(getString(i));
    paramBundle.setOnCancelListener(a);
    return paramBundle;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.YelpProgressDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */