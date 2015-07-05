package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Pair;
import android.widget.Button;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class SingleChoiceListDialogFragment
  extends ListDialogFragment
{
  private int b = -1;
  private String[] c;
  private Parcelable[] d;
  private String e;
  
  public static ListDialogFragment b(int paramInt, List<Pair<String, Parcelable>> paramList)
  {
    SingleChoiceListDialogFragment localSingleChoiceListDialogFragment = new SingleChoiceListDialogFragment();
    localSingleChoiceListDialogFragment.a(paramInt, paramList);
    return localSingleChoiceListDialogFragment;
  }
  
  public AlertDialog.Builder a(Bundle paramBundle, AlertDialog.Builder paramBuilder)
  {
    paramBundle = a();
    c = new String[paramBundle.size()];
    d = new Parcelable[paramBundle.size()];
    paramBundle = paramBundle.entrySet().iterator();
    int i = 0;
    while (paramBundle.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramBundle.next();
      c[i] = ((String)localEntry.getKey());
      d[i] = ((Parcelable)localEntry.getValue());
      i += 1;
    }
    paramBuilder.setSingleChoiceItems(c, -1, new bg(this));
    paramBuilder.setPositiveButton(17039379, null);
    paramBuilder.setNegativeButton(17039360, new bh(this));
    return paramBuilder;
  }
  
  public void a(String paramString)
  {
    e = paramString;
  }
  
  public void onStart()
  {
    super.onStart();
    AlertDialog localAlertDialog = (AlertDialog)getDialog();
    if (localAlertDialog != null) {
      localAlertDialog.getButton(-1).setOnClickListener(new bi(this));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.SingleChoiceListDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */