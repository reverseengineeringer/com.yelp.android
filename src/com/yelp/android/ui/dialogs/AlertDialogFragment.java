package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;

public class AlertDialogFragment
  extends YelpAlertDialogFragment
{
  private DialogInterface.OnClickListener b;
  
  public static AlertDialogFragment a(String paramString1, String paramString2)
  {
    return a(paramString1, paramString2, null);
  }
  
  public static AlertDialogFragment a(String paramString1, String paramString2, String paramString3)
  {
    AlertDialogFragment localAlertDialogFragment = new AlertDialogFragment();
    paramString1 = b(paramString1, paramString2);
    if (paramString3 != null) {
      paramString1.putString("button_message", paramString3);
    }
    localAlertDialogFragment.setArguments(paramString1);
    return localAlertDialogFragment;
  }
  
  public void a(DialogInterface.OnClickListener paramOnClickListener)
  {
    b = paramOnClickListener;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = null;
    Bundle localBundle = getArguments();
    String str2;
    String str1;
    if (localBundle != null)
    {
      str2 = localBundle.getString("title");
      str1 = localBundle.getString("message");
      if (localBundle.getString("button_message") == null) {
        paramBundle = getString(17039370);
      }
    }
    for (;;)
    {
      return c(str2, str1).setPositiveButton(paramBundle, new a(this)).create();
      paramBundle = localBundle.getString("button_message");
      continue;
      str1 = null;
      str2 = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.AlertDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */