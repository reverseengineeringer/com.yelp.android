package com.yelp.android.ui.dialogs;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.preference.DialogPreference;
import android.util.AttributeSet;

public class ConcreteDialogPreference
  extends DialogPreference
{
  DialogInterface.OnClickListener a;
  
  public ConcreteDialogPreference(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public ConcreteDialogPreference(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    super.onClick(paramDialogInterface, paramInt);
    if (a != null) {
      a.onClick(paramDialogInterface, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ConcreteDialogPreference
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */