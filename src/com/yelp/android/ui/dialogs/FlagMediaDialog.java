package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class FlagMediaDialog
  extends UserFeedbackDialog
{
  private EditText b;
  
  public static FlagMediaDialog a(String paramString1, String paramString2)
  {
    FlagMediaDialog localFlagMediaDialog = new FlagMediaDialog();
    Bundle localBundle = new Bundle();
    localBundle.putString("key_hint", paramString1);
    localBundle.putString("key_title", paramString2);
    localFlagMediaDialog.setArguments(localBundle);
    return localFlagMediaDialog;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = getArguments().getString("key_hint");
    String str = getArguments().getString("key_title");
    b = ((EditText)View.inflate(getActivity(), 2130903234, null));
    b.setHint(paramBundle);
    return new AlertDialog.Builder(getActivity()).setTitle(str).setNegativeButton(2131165583, null).setPositiveButton(2131166542, null).setView(b).create();
  }
  
  public void onStart()
  {
    super.onStart();
    Button localButton = ((AlertDialog)getDialog()).getButton(-1);
    if (localButton != null) {
      localButton.setOnClickListener(new FlagMediaDialog.1(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagMediaDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */