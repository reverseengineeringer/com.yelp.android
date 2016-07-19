package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.UpdatePrompt;

public class UpdatePromptDialogFragment
  extends YelpBaseDialogFragment
{
  public static UpdatePromptDialogFragment a(UpdatePrompt paramUpdatePrompt)
  {
    UpdatePromptDialogFragment localUpdatePromptDialogFragment = new UpdatePromptDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("update_prompt", paramUpdatePrompt);
    localUpdatePromptDialogFragment.setArguments(localBundle);
    return localUpdatePromptDialogFragment;
  }
  
  public a getIri()
  {
    return ViewIri.UpdatePrompt;
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    AppData.a(EventIri.UpdatePromptDismiss);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = LayoutInflater.from(getActivity()).inflate(2130903555, null);
    TextView localTextView = (TextView)paramBundle.findViewById(2131690952);
    localTextView.setText(((UpdatePrompt)getArguments().getParcelable("update_prompt")).b());
    localTextView.setMovementMethod(new ScrollingMovementMethod());
    ((TextView)paramBundle.findViewById(16908310)).setText(2131166233);
    paramBundle.findViewById(2131689972).setOnClickListener(new UpdatePromptDialogFragment.1(this));
    paramBundle.findViewById(2131690953).setOnClickListener(new UpdatePromptDialogFragment.2(this));
    return new AlertDialog.Builder(getActivity()).setView(paramBundle).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.UpdatePromptDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */