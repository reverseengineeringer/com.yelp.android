package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.ViewIri;

public class AccountConfirmedDialog
  extends YelpBaseDialogFragment
{
  private DialogInterface.OnDismissListener a;
  private final View.OnClickListener b = new AccountConfirmedDialog.1(this);
  
  public static AccountConfirmedDialog a()
  {
    return new AccountConfirmedDialog();
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    a = paramOnDismissListener;
  }
  
  public ViewIri b()
  {
    return ViewIri.EmailConfirmed;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = LayoutInflater.from(getActivity()).inflate(2130903064, null);
    paramBundle.findViewById(2131689678).setOnClickListener(b);
    Dialog localDialog = new Dialog(getActivity());
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(paramBundle);
    return localDialog;
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
 * Qualified Name:     com.yelp.android.ui.dialogs.AccountConfirmedDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */