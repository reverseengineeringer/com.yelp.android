package com.yelp.android.ui.activities.businesspage;

import android.annotation.SuppressLint;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;

@SuppressLint({"ValidFragment"})
class bx
  extends DialogFragment
{
  public bx(BusinessPageFragment paramBusinessPageFragment) {}
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = a.getActivity();
    return new AlertDialog.Builder(paramBundle).setTitle(2131165512).setAdapter(BusinessPageFragment.v(a), new by(this, paramBundle)).create();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */