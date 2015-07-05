package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RadioGroup;

public class PrivacyPolicyDialog$SelectPrivacyLevelDialog
  extends DialogFragment
{
  private static String a = "privacy_level";
  private be b;
  
  public static SelectPrivacyLevelDialog a(int paramInt)
  {
    SelectPrivacyLevelDialog localSelectPrivacyLevelDialog = new SelectPrivacyLevelDialog();
    Bundle localBundle = new Bundle();
    localBundle.putInt(a, paramInt);
    localSelectPrivacyLevelDialog.setArguments(localBundle);
    return localSelectPrivacyLevelDialog;
  }
  
  public void a(be parambe)
  {
    b = parambe;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new AlertDialog.Builder(getActivity());
    paramBundle.setTitle(getString(2131165363));
    View localView = LayoutInflater.from(getActivity()).inflate(2130903189, null);
    RadioGroup localRadioGroup = (RadioGroup)localView.findViewById(2131493469);
    localRadioGroup.check(getArguments().getInt(a));
    localRadioGroup.setOnCheckedChangeListener(new bd(this));
    paramBundle.setView(localView);
    return paramBundle.create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.PrivacyPolicyDialog.SelectPrivacyLevelDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */