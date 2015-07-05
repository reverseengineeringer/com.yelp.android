package com.yelp.android.ui.activities;

import android.content.Context;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.Preference.OnPreferenceClickListener;
import android.preference.PreferenceGroup;
import android.text.TextUtils;
import android.util.AttributeSet;
import java.util.Iterator;
import java.util.LinkedList;

public class PreferenceRadioGroup
  extends PreferenceGroup
  implements Preference.OnPreferenceClickListener
{
  LinkedList<String> a = new LinkedList();
  
  public PreferenceRadioGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public PreferenceRadioGroup(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  public boolean isEnabled()
  {
    return false;
  }
  
  public boolean onPreferenceClick(Preference paramPreference)
  {
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (!TextUtils.equals(str, paramPreference.getKey())) {
        ((CheckBoxPreference)findPreference(str)).setChecked(false);
      }
    }
    persistString(paramPreference.getKey());
    return true;
  }
  
  protected boolean onPrepareAddPreference(Preference paramPreference)
  {
    boolean bool1;
    if ((paramPreference instanceof PreferenceRadioGroup)) {
      bool1 = false;
    }
    boolean bool2;
    do
    {
      do
      {
        return bool1;
        bool2 = super.onPrepareAddPreference(paramPreference);
        bool1 = bool2;
      } while (!bool2);
      bool1 = bool2;
    } while (!(paramPreference instanceof CheckBoxPreference));
    paramPreference.setOnPreferenceClickListener(this);
    a.add(paramPreference.getKey());
    return bool2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.PreferenceRadioGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */