package com.yelp.android.debug;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.yelp.android.ui.activities.support.YelpFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FreezerFragmentDebugFragment
  extends YelpFragment
{
  private List<f<?, ?>> a = new ArrayList();
  private LinearLayout b;
  private int c;
  
  private static void a(List<f<?, ?>> paramList)
  {
    paramList = paramList.listIterator();
    while (paramList.hasNext()) {
      if (((f)paramList.next()).b()) {
        paramList.remove();
      }
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (paramBundle != null)
    {
      String[] arrayOfString = paramBundle.getStringArray("REQUEST_LABELS");
      int j = arrayOfString.length;
      int i = 0;
      if (i < j)
      {
        String str = arrayOfString[i];
        if (str.endsWith("MyCheckInsRequest")) {
          a.add(new f(this, getActivity(), str));
        }
        for (;;)
        {
          i += 1;
          break;
          a.add(new f(this, getActivity(), str));
        }
      }
      c = paramBundle.getInt("REQUEST_COUNTER", 0);
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.getContext();
    paramViewGroup = new Button(paramLayoutInflater);
    paramViewGroup.setText("Create Request");
    paramViewGroup.setOnClickListener(new e(this, paramLayoutInflater));
    b = new LinearLayout(paramLayoutInflater);
    b.setOrientation(1);
    b.addView(paramViewGroup);
    paramLayoutInflater = new ScrollView(paramLayoutInflater);
    paramLayoutInflater.addView(b);
    return paramLayoutInflater;
  }
  
  public void onPause()
  {
    super.onPause();
    a(a);
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((f)localIterator.next()).a(this);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((f)localIterator.next()).b(this);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    a(a);
    String[] arrayOfString = new String[a.size()];
    int i = 0;
    while (i < a.size())
    {
      arrayOfString[i] = ((f)a.get(i)).a();
      i += 1;
    }
    paramBundle.putStringArray("REQUEST_LABELS", arrayOfString);
    paramBundle.putInt("REQUEST_COUNTER", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.FreezerFragmentDebugFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */