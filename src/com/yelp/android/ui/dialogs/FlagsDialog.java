package com.yelp.android.ui.dialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.l;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckedTextView;
import android.widget.ListView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;

public class FlagsDialog
  extends DialogFragment
{
  private a a;
  private Locale b;
  private b c;
  private boolean d = false;
  private final AdapterView.OnItemClickListener e = new AdapterView.OnItemClickListener()
  {
    public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
    {
      paramAnonymousAdapterView = (FlagsDialog.a.a)FlagsDialog.a(FlagsDialog.this).getItem(paramAnonymousInt);
      FlagsDialog.a(FlagsDialog.this, paramAnonymousAdapterView.b());
      FlagsDialog.b(FlagsDialog.this).a(paramAnonymousAdapterView);
    }
  };
  
  public static FlagsDialog a(Locale paramLocale)
  {
    FlagsDialog localFlagsDialog = new FlagsDialog();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("locale", paramLocale);
    localFlagsDialog.setArguments(localBundle);
    return localFlagsDialog;
  }
  
  public a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  public void a(b paramb)
  {
    c = paramb;
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    AlertDialog localAlertDialog = new AlertDialog.Builder(getActivity()).setSingleChoiceItems(a(), 0, null).setTitle(2131166534).setPositiveButton(2131166290, null).create();
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
  
  public void show(l paraml, String paramString)
  {
    if (!d)
    {
      d = true;
      super.show(paraml, paramString);
    }
    do
    {
      return;
      paraml = paraml.a(paramString);
    } while (!(paraml instanceof DialogFragment));
    ((DialogFragment)paraml).getDialog().show();
  }
  
  public static final class a
    extends w<a>
  {
    public a()
    {
      a(b());
    }
    
    public static ArrayList<a> b()
    {
      AppData localAppData = AppData.b();
      Locale localLocale = AppData.b().g().h();
      String[] arrayOfString = localAppData.getResources().getStringArray(2131558417);
      ArrayList localArrayList = new ArrayList(arrayOfString.length);
      int j = arrayOfString.length;
      int i = 0;
      while (i < j)
      {
        String str = arrayOfString[i];
        int k = localAppData.getResources().getIdentifier("flag_" + str, "drawable", localAppData.getPackageName());
        localArrayList.add(new a(new Locale(localLocale.getLanguage(), str), k));
        i += 1;
      }
      return localArrayList;
    }
    
    public void a(Context paramContext, Locale paramLocale)
    {
      Collections.sort(a(), new FlagsDialog.a.b(getResourcesgetConfigurationlocale, paramLocale));
      notifyDataSetChanged();
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView = paramView;
      if (paramView == null)
      {
        localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(17367058, paramViewGroup, false);
        paramView = (CheckedTextView)localView.findViewById(16908308);
        paramView.setCompoundDrawablePadding(paramViewGroup.getResources().getDimensionPixelSize(2131361908));
        localView.setTag(paramView);
      }
      paramView = (CheckedTextView)localView.getTag();
      paramViewGroup = (a)getItem(paramInt);
      paramView.setCompoundDrawablesWithIntrinsicBounds(b, 0, 0, 0);
      paramView.setText(a.getDisplayCountry(a));
      return localView;
    }
    
    public static class a
    {
      final Locale a;
      final int b;
      
      public a(Locale paramLocale, int paramInt)
      {
        a = paramLocale;
        b = paramInt;
      }
      
      public int a()
      {
        return b;
      }
      
      public Locale b()
      {
        return a;
      }
    }
  }
  
  public static abstract interface b
  {
    public abstract void a(FlagsDialog.a.a parama);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagsDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */