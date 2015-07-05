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
import com.yelp.android.ui.util.au;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Locale;

public final class ao
  extends au<ap>
{
  public ao()
  {
    a(b());
  }
  
  public static ArrayList<ap> b()
  {
    AppData localAppData = AppData.b();
    Locale localLocale = AppData.b().g().h();
    String[] arrayOfString = localAppData.getResources().getStringArray(2131230737);
    ArrayList localArrayList = new ArrayList(arrayOfString.length);
    int j = arrayOfString.length;
    int i = 0;
    while (i < j)
    {
      String str = arrayOfString[i];
      int k = localAppData.getResources().getIdentifier("flag_" + str, "drawable", localAppData.getPackageName());
      localArrayList.add(new ap(new Locale(localLocale.getLanguage(), str), k));
      i += 1;
    }
    return localArrayList;
  }
  
  public void a(Context paramContext, Locale paramLocale)
  {
    Collections.sort(a(), new aq(getResourcesgetConfigurationlocale, paramLocale));
    notifyDataSetChanged();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(17367058, paramViewGroup, false);
      paramView = (CheckedTextView)localView.findViewById(16908308);
      paramView.setCompoundDrawablePadding(paramViewGroup.getResources().getDimensionPixelSize(2131427379));
      localView.setTag(paramView);
    }
    paramView = (CheckedTextView)localView.getTag();
    paramViewGroup = (ap)getItem(paramInt);
    paramView.setCompoundDrawablesWithIntrinsicBounds(b, 0, 0, 0);
    paramView.setText(a.getDisplayCountry(a));
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */