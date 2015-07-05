package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.yelp.android.appdata.n;

public class FlagContentDialog
  extends UserFeedbackDialog
{
  private EditText b;
  private Button c;
  
  public static FlagContentDialog a(String paramString1, String paramString2)
  {
    FlagContentDialog localFlagContentDialog = new FlagContentDialog();
    Bundle localBundle = new Bundle();
    localBundle.putString("args_message", paramString1);
    localBundle.putString("args_title", paramString2);
    localFlagContentDialog.setArguments(localBundle);
    return localFlagContentDialog;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = getArguments().getString("args_message");
    String str = getArguments().getString("args_title");
    View localView = LayoutInflater.from(getActivity()).inflate(2130903211, null);
    b = ((EditText)localView.findViewById(2131493546));
    b.setHint(paramBundle);
    paramBundle = new AlertDialog.Builder(getActivity()).setTitle(str).setView(localView).setPositiveButton(2131166542, new ak(this)).setNegativeButton(2131165456, null).create();
    if (n.b(11)) {
      paramBundle.setInverseBackgroundForced(true);
    }
    return paramBundle;
  }
  
  public void onStart()
  {
    super.onStart();
    if (c == null)
    {
      c = ((AlertDialog)getDialog()).getButton(-1);
      b.addTextChangedListener(new al(this));
      b.setText(b.getText());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagContentDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */