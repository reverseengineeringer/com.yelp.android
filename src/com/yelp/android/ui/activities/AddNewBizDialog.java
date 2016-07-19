package com.yelp.android.ui.activities;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.dialogs.YelpBaseDialogFragment;

public class AddNewBizDialog
  extends YelpBaseDialogFragment
{
  private a a;
  
  public static AddNewBizDialog a()
  {
    AddNewBizDialog localAddNewBizDialog = new AddNewBizDialog();
    localAddNewBizDialog.setArguments(new Bundle());
    return localAddNewBizDialog;
  }
  
  public ViewIri b()
  {
    return ViewIri.CheckIn;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = ((a)paramActivity);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    super.onCreateDialog(paramBundle);
    paramBundle = View.inflate(getContext(), 2130903132, null);
    paramBundle.findViewById(2131689981).setOnClickListener(new AddNewBizDialog.1(this));
    paramBundle.findViewById(2131689982).setOnClickListener(new AddNewBizDialog.2(this));
    Dialog localDialog = new Dialog(getActivity());
    localDialog.requestWindowFeature(1);
    localDialog.setContentView(paramBundle);
    return localDialog;
  }
  
  public static abstract interface a
  {
    public abstract void a(Context paramContext);
    
    public abstract void b(Context paramContext);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.AddNewBizDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */