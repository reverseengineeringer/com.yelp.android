package com.yelp.android.ui.activities.settings;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.animation.AlphaAnimation;
import android.view.inputmethod.InputMethodManager;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Checkable;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.ui.util.cw;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class PreferenceScreenFragment
  extends Fragment
  implements View.OnClickListener, ViewGroup.OnHierarchyChangeListener, TextView.OnEditorActionListener
{
  private CharSequence a;
  private an b;
  private SharedPreferences c;
  private ao d;
  private final Map<String, PreferenceView> e = new TreeMap();
  private final Map<String, List<PreferenceView>> f = new TreeMap();
  private final SparseArray<ao> g = new SparseArray();
  private View h;
  
  public static PreferenceScreenFragment a(int paramInt1, CharSequence paramCharSequence, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("screenref", paramInt1);
    localBundle.putCharSequence("title", paramCharSequence);
    localBundle.putInt("footer", paramInt2);
    paramCharSequence = new PreferenceScreenFragment();
    paramCharSequence.setArguments(localBundle);
    return paramCharSequence;
  }
  
  public void a()
  {
    Iterator localIterator = e.values().iterator();
    while (localIterator.hasNext()) {
      b((PreferenceView)localIterator.next());
    }
  }
  
  public void a(SparseArray<ao> paramSparseArray)
  {
    g.clear();
    int i = 0;
    int j = paramSparseArray.size();
    while (i < j)
    {
      int k = paramSparseArray.keyAt(i);
      g.put(k, paramSparseArray.get(k));
      i += 1;
    }
  }
  
  void a(PreferenceView paramPreferenceView)
  {
    String str = paramPreferenceView.getKey();
    Map localMap = f;
    Object localObject = str;
    if (TextUtils.isEmpty(str)) {
      localObject = "";
    }
    localObject = (List)localMap.get(localObject);
    if (localObject != null) {
      paramPreferenceView.post(new ai(this, (List)localObject));
    }
  }
  
  public void a(an paraman)
  {
    b = paraman;
  }
  
  public void a(String paramString)
  {
    paramString = (PreferenceView)e.get(paramString);
    if (paramString != null) {
      b(paramString);
    }
  }
  
  public View b()
  {
    return h;
  }
  
  public void b(PreferenceView paramPreferenceView)
  {
    ao localao = (ao)g.get(paramPreferenceView.getId());
    Object localObject = localao;
    if (localao == null) {
      localObject = d;
    }
    ((ao)localObject).a(paramPreferenceView);
    paramPreferenceView = paramPreferenceView.getKey();
    if ((!TextUtils.isEmpty(paramPreferenceView)) && (f.containsKey(paramPreferenceView)))
    {
      boolean bool = c.getBoolean(paramPreferenceView, false);
      paramPreferenceView = ((List)f.get(paramPreferenceView)).iterator();
      while (paramPreferenceView.hasNext())
      {
        localObject = (PreferenceView)paramPreferenceView.next();
        if (bool != ((PreferenceView)localObject).isClickable()) {}
        for (int i = 1;; i = 0)
        {
          localao = (ao)g.get(((PreferenceView)localObject).getId());
          if (localao != null) {
            localao.a((PreferenceView)localObject);
          }
          if (i == 0) {
            break;
          }
          if (!bool) {
            break label194;
          }
          cw.c((View)localObject, cw.a).setAnimationListener(new al((View)localObject));
          break;
        }
        label194:
        cw.b((View)localObject, cw.a).setAnimationListener(new am((View)localObject));
      }
    }
  }
  
  public void onChildViewAdded(View paramView1, View paramView2)
  {
    PreferenceView localPreferenceView;
    if ((paramView2 instanceof PreferenceView))
    {
      localPreferenceView = (PreferenceView)paramView2;
      if (TextUtils.isEmpty(localPreferenceView.getKey())) {
        break label142;
      }
      e.put(localPreferenceView.getKey(), localPreferenceView);
    }
    for (;;)
    {
      localPreferenceView.setOnClickListener(this);
      b.setOnEditorActionListener(this);
      b.setOnItemClickListener(new aj(this, localPreferenceView));
      if (localPreferenceView.getDependency() != 0)
      {
        String str = localPreferenceView.getContext().getString(localPreferenceView.getDependency());
        paramView2 = (List)f.get(str);
        paramView1 = paramView2;
        if (paramView2 == null)
        {
          paramView1 = new ArrayList();
          f.put(str, paramView1);
        }
        paramView1.add(localPreferenceView);
      }
      b(localPreferenceView);
      return;
      label142:
      e.put(localPreferenceView.toString(), localPreferenceView);
    }
  }
  
  public void onChildViewRemoved(View paramView1, View paramView2)
  {
    if ((paramView2 instanceof PreferenceView))
    {
      paramView1 = (PreferenceView)paramView2;
      f.remove(paramView1.getKey());
      if (paramView1.getDependency() != 0) {
        ((List)f.get(paramView1.getContext().getString(paramView1.getDependency()))).remove(paramView1);
      }
    }
  }
  
  public void onClick(View paramView)
  {
    PreferenceView localPreferenceView = (PreferenceView)paramView;
    if (localPreferenceView.getReference() != 0) {
      b.a(localPreferenceView.getReference(), localPreferenceView.getTitle());
    }
    if ((!TextUtils.isEmpty(localPreferenceView.getKey())) && ((paramView instanceof PreferenceToggleView))) {
      b.a(localPreferenceView.getKey(), ((Checkable)paramView).isChecked());
    }
    if ((!TextUtils.isEmpty(localPreferenceView.getKey())) && ((paramView instanceof LocationPreference))) {
      b.a(localPreferenceView.getKey(), null, false, null);
    }
    b.a(localPreferenceView);
    a(localPreferenceView);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    f.clear();
    e.clear();
    if (c == null) {}
    for (paramBundle = PreferenceManager.getDefaultSharedPreferences(paramViewGroup.getContext());; paramBundle = c)
    {
      c = paramBundle;
      d = new ak(c);
      paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903393, paramViewGroup, false);
      paramBundle = (ViewGroup)paramViewGroup.findViewById(2131493986);
      paramBundle.setOnHierarchyChangeListener(this);
      Bundle localBundle = getArguments();
      int i = localBundle.getInt("screenref");
      a = localBundle.getCharSequence("title");
      paramLayoutInflater.inflate(i, paramBundle);
      i = localBundle.getInt("footer");
      if (i != 0)
      {
        h = paramLayoutInflater.inflate(i, paramBundle, false);
        paramBundle.addView(h);
      }
      return paramViewGroup;
    }
  }
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    paramKeyEvent = (AutoCompleteTextView)paramTextView;
    if ((paramInt == 0) || (paramInt == 6) || (paramInt == 5))
    {
      ((InputMethodManager)paramTextView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramTextView.getWindowToken(), 0);
      paramTextView = (ArrayAdapter)paramKeyEvent.getAdapter();
      if ((paramTextView == null) || (paramTextView.getCount() <= 0)) {
        break label99;
      }
    }
    label99:
    for (paramTextView = (String)paramTextView.getItem(0);; paramTextView = null)
    {
      b.a(getString(2131165978), paramKeyEvent.getText().toString(), false, paramTextView);
      return true;
      return false;
    }
  }
  
  public void onResume()
  {
    super.onResume();
    a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.settings.PreferenceScreenFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */