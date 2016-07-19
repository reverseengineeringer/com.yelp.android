package com.yelp.android.ui.dialogs;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;

public final class FlagsDialog$a
  extends w<a>
{
  public FlagsDialog$a()
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

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.FlagsDialog.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */