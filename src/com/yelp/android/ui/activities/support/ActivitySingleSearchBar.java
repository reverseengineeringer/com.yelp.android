package com.yelp.android.ui.activities.support;

import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
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
    localView.setMinimumHeight(getResources().getDimensionPixelSize(2131361892));
    paramListView.addHeaderView(localView);
  }
  
  protected abstract FragmentType d();
  
  protected FragmentType e()
  {
    return a;
  }
  
  protected List<View> getViewsToHideOnDrawerSelected()
  {
    ArrayList localArrayList = new ArrayList(super.getViewsToHideOnDrawerSelected());
    localArrayList.add(findViewById(2131690886));
    localArrayList.add(findViewById(2131690311));
    return localArrayList;
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getLayoutInflater().inflate(2130903525, (ViewGroup)findViewById(2131690373));
    a = ((YelpListFragment)getSupportFragmentManager().a(2131689997));
    if (a == null)
    {
      a = d();
      getSupportFragmentManager().a().a(2131689997, a).a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.ActivitySingleSearchBar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */