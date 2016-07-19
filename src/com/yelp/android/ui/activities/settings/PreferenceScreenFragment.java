package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.ViewParent;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Checkable;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.appdata.ApiPreferences;
import com.yelp.android.appdata.AppData;
import com.yelp.android.cj.i;
import com.yelp.android.serializable.PreferenceSection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PreferenceScreenFragment
  extends Fragment
  implements View.OnClickListener, ViewGroup.OnHierarchyChangeListener, TextView.OnEditorActionListener
{
  private CharSequence a;
  private b b;
  private i c;
  private final Map<String, PreferenceView> d = new TreeMap();
  private Map<String, i> e = new HashMap();
  private View f;
  
  public static PreferenceScreenFragment a(int paramInt1, CharSequence paramCharSequence, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("layout", paramInt1);
    localBundle.putCharSequence("title", paramCharSequence);
    localBundle.putInt("footer", paramInt2);
    paramCharSequence = new PreferenceScreenFragment();
    paramCharSequence.setArguments(localBundle);
    return paramCharSequence;
  }
  
  public static PreferenceScreenFragment a(List<PreferenceSection> paramList, String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("preference_sections", new ArrayList(paramList));
    localBundle.putString("title", paramString);
    paramList = new PreferenceScreenFragment();
    paramList.setArguments(localBundle);
    return paramList;
  }
  
  public void a()
  {
    Iterator localIterator = d.values().iterator();
    while (localIterator.hasNext()) {
      a((PreferenceView)localIterator.next());
    }
  }
  
  public void a(b paramb)
  {
    b = paramb;
  }
  
  public void a(PreferenceView paramPreferenceView)
  {
    i locali2 = (i)e.get(paramPreferenceView.getKey());
    i locali1 = locali2;
    if (locali2 == null) {
      locali1 = c;
    }
    locali1.a(paramPreferenceView);
  }
  
  public void a(String paramString)
  {
    paramString = (PreferenceView)d.get(paramString);
    if (paramString != null) {
      a(paramString);
    }
  }
  
  public void a(Map<String, i> paramMap)
  {
    e = paramMap;
  }
  
  public View b()
  {
    return f;
  }
  
  public void onChildViewAdded(View paramView1, View paramView2)
  {
    if ((paramView2 instanceof PreferenceView))
    {
      paramView1 = (PreferenceView)paramView2;
      if (TextUtils.isEmpty(paramView1.getKey())) {
        break label72;
      }
      d.put(paramView1.getKey(), paramView1);
    }
    for (;;)
    {
      paramView1.setOnClickListener(this);
      b.setOnEditorActionListener(this);
      b.setOnItemClickListener(new PreferenceScreenFragment.1(this, paramView1));
      a(paramView1);
      return;
      label72:
      d.put(paramView1.toString(), paramView1);
    }
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2) {}
  
  public void onClick(View paramView)
  {
    PreferenceView localPreferenceView = (PreferenceView)paramView;
    String str = localPreferenceView.getKey();
    Object localObject = AppData.b().o();
    if (!TextUtils.isEmpty(str))
    {
      if (str.equals(getString(2131166975))) {
        b.a(((ApiPreferences)localObject).e(), getString(2131166407));
      }
      if (str.equals(getString(2131166965))) {
        b.a(((ApiPreferences)localObject).d(), getString(2131165837));
      }
    }
    if (localPreferenceView.getReference() != 0) {
      b.a(localPreferenceView.getReference(), localPreferenceView.getTitle());
    }
    if ((paramView instanceof PreferenceToggleView))
    {
      localObject = b;
      if (!((Checkable)paramView).isChecked()) {
        break label237;
      }
    }
    label237:
    for (int i = 1;; i = 0)
    {
      ((b)localObject).a(str, i);
      if (((paramView instanceof PreferenceRadioView)) && (((Checkable)paramView).isChecked())) {
        b.a(str, ((PreferenceRadioView)paramView).getValue());
      }
      if ((!TextUtils.isEmpty(localPreferenceView.getKey())) && ((paramView instanceof LocationPreference))) {
        b.a(localPreferenceView.getKey(), null, false, null);
      }
      b.a(localPreferenceView);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d.clear();
    c = new PreferenceScreenFragment.a();
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903504, paramViewGroup, false);
    paramBundle = (ViewGroup)paramViewGroup.findViewById(2131690853);
    paramBundle.setOnHierarchyChangeListener(this);
    Bundle localBundle = getArguments();
    a = localBundle.getCharSequence("title");
    int i = localBundle.getInt("layout");
    if (i != 0)
    {
      paramLayoutInflater.inflate(i, paramBundle);
      i = localBundle.getInt("footer");
      if (i != 0)
      {
        f = paramLayoutInflater.inflate(i, paramBundle, false);
        paramBundle.addView(f);
      }
      return paramViewGroup;
    }
    paramLayoutInflater = localBundle.getParcelableArrayList("preference_sections");
    paramLayoutInflater = new a(getContext(), paramLayoutInflater).a().iterator();
    while (paramLayoutInflater.hasNext()) {
      paramBundle.addView((View)paramLayoutInflater.next());
    }
    paramBundle.setBackgroundColor(getResources().getColor(2131624261));
    return paramViewGroup;
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    AutoCompleteTextView localAutoCompleteTextView = (AutoCompleteTextView)paramTextView;
    if ((paramInt == 0) || (paramInt == 6) || (paramInt == 5))
    {
      ((InputMethodManager)paramTextView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      paramKeyEvent = (ArrayAdapter)localAutoCompleteTextView.getAdapter();
      if ((paramKeyEvent == null) || (paramKeyEvent.getCount() <= 0)) {
        break label172;
      }
    }
    label134:
    label172:
    for (paramKeyEvent = (String)paramKeyEvent.getItem(0);; paramKeyEvent = null)
    {
      ViewParent localViewParent = paramTextView.getParent();
      paramTextView = "";
      if ((localViewParent instanceof LocationPreference)) {
        if (((LocationPreference)localViewParent).getId() != 2131690866) {
          break label134;
        }
      }
      for (paramTextView = getString(2131166647);; paramTextView = getString(2131166386))
      {
        b.a(paramTextView, localAutoCompleteTextView.getText().toString(), false, paramKeyEvent);
        return true;
        if (((LocationPreference)localViewParent).getId() != 2131690865) {
          break;
        }
      }
      throw new IllegalStateException("Invalid parent location type");
      return false;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
  
  public static abstract interface b
  {
    public abstract void a(int paramInt, CharSequence paramCharSequence);
    
    public abstract void a(PreferenceView paramPreferenceView);
    
    public abstract void a(String paramString, int paramInt);
    
    public abstract void a(String paramString1, String paramString2, boolean paramBoolean, String paramString3);
    
    public abstract void a(List<PreferenceSection> paramList, String paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.PreferenceScreenFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */