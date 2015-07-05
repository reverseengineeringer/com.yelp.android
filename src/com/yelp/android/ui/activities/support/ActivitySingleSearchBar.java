package com.yelp.android.ui.activities.support;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.List;

public abstract class ActivitySingleSearchBar<FragmentType extends YelpListFragment>
  extends YelpActivity
{
  private FragmentType a;
  
  public void a(ListView paramListView)
  {
    View localView = new View(this);
    localView.setMinimumHeight(getResources().getDimensionPixelSize(2131427370));
    paramListView.addHeaderView(localView);
  }
  
  protected abstract FragmentType c();
  
  protected FragmentType e()
  {
    return a;
  }
  
  protected List<View> getViewsToHideOnDrawerSelected()
  {
    ArrayList localArrayList = new ArrayList(super.getViewsToHideOnDrawerSelected());
    localArrayList.add(findViewById(2131494015));
    localArrayList.add(findViewById(2131493600));
    return localArrayList;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getLayoutInflater().inflate(2130903412, (ViewGroup)findViewById(2131493629));
    a = ((YelpListFragment)getSupportFragmentManager().findFragmentById(2131493332));
    if (a == null)
    {
      a = c();
      getSupportFragmentManager().beginTransaction().add(2131493332, a).commit();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.ActivitySingleSearchBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */