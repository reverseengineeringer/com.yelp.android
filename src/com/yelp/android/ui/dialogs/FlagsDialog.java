package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.yelp.android.appdata.AppData;
import java.util.Locale;

public class FlagsDialog
  extends DialogFragment
{
  private ao a;
  private Locale b;
  private ar c;
  private boolean d = false;
  private final AdapterView.OnItemClickListener e = new an(this);
  
  public static FlagsDialog a(Locale paramLocale)
  {
    FlagsDialog localFlagsDialog = new FlagsDialog();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("locale", paramLocale);
    localFlagsDialog.setArguments(localBundle);
    return localFlagsDialog;
  }
  
  public ao a()
  {
    if (a == null) {
      a = new ao();
    }
    return a;
  }
  
  public void a(ar paramar)
  {
    c = paramar;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(getActivity()).setSingleChoiceItems(a(), 0, null).setTitle(2131166535).setPositiveButton(2131166237, null).create();
    localAlertDialog.getListView().setItemChecked(0, false);
    localAlertDialog.getListView().setOnItemClickListener(e);
    if (b == null) {
      if (paramBundle == null) {
        break label102;
      }
    }
    label102:
    for (b = ((Locale)paramBundle.getSerializable("locale"));; b = ((Locale)getArguments().getSerializable("locale")))
    {
      a.a(AppData.b(), b);
      a.notifyDataSetChanged();
      return localAlertDialog;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    d = false;
    super.onDismiss(paramDialogInterface);
  }
  
  public void onPause()
  {
    super.onPause();
    a().a(AppData.b(), b);
    a().notifyDataSetChanged();
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putSerializable("locale", b);
  }
  
  public void show(FragmentManager paramFragmentManager, String paramString)
  {
    if (!d)
    {
      d = true;
      super.show(paramFragmentManager, paramString);
    }
    do
    {
      return;
      paramFragmentManager = paramFragmentManager.findFragmentByTag(paramString);
    } while ((paramFragmentManager == null) || (!(paramFragmentManager instanceof DialogFragment)));
    ((DialogFragment)paramFragmentManager).getDialog().show();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagsDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */