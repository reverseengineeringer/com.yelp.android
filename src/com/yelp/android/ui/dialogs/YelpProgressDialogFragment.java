package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.content.DialogInterface.OnCancelListener;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.co.a.h;
import com.yelp.android.co.a.j;

public class YelpProgressDialogFragment
  extends DialogFragment
{
  private DialogInterface.OnCancelListener a;
  
  public static YelpProgressDialogFragment a(int paramInt)
  {
    return a(0, paramInt);
  }
  
  public static YelpProgressDialogFragment a(int paramInt1, int paramInt2)
  {
    YelpProgressDialogFragment localYelpProgressDialogFragment = new YelpProgressDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putInt("loading_string_id", paramInt2);
    localBundle.putInt("title_string_id", paramInt1);
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
    paramBundle = new d(getContext());
    int i = getArguments().getInt("loading_string_id", 0);
    int j = getArguments().getInt("title_string_id", 0);
    if (j != 0) {
      paramBundle.a(j);
    }
    if (i == 0)
    {
      i = a.j.loading;
      View localView = LayoutInflater.from(getContext()).inflate(a.h.panel_loading_dialog, null, false);
      ((TextView)localView.findViewById(16908299)).setText(i);
      paramBundle.a(localView);
      if (a == null) {
        break label114;
      }
      paramBundle.a(a);
    }
    for (;;)
    {
      return paramBundle.a();
      break;
      label114:
      setCancelable(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.YelpProgressDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */