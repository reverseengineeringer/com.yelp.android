package com.yelp.android.ui.activities.categorypicker;

import android.app.Activity;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.Button;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.mutatebiz.ChangeBusinessAttributes;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.panels.s;
import com.yelp.android.ui.util.ScrollToLoadListView;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import java.util.ArrayList;

public class CategoryPickerFragment
  extends YelpListFragment
{
  private Button a;
  private View b;
  private View c;
  private e d;
  private s e;
  private ArrayList<Category> g;
  
  public static CategoryPickerFragment a(ArrayList<Category> paramArrayList)
  {
    CategoryPickerFragment localCategoryPickerFragment = new CategoryPickerFragment();
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("args_categories", paramArrayList);
    localCategoryPickerFragment.setArguments(localBundle);
    return localCategoryPickerFragment;
  }
  
  private void e()
  {
    b = LayoutInflater.from(getActivity()).inflate(2130903154, m(), false);
    c = LayoutInflater.from(getActivity()).inflate(2130903155, m(), false);
    a = ((Button)b.findViewById(2131493397));
    a.setOnClickListener(new d(this));
    m().addFooterView(b);
    m().addHeaderView(c);
    bs localbs = new bs();
    localbs.a(0, bw.a("", e).a(2131493392, 0, 0).a());
    a(localbs);
    f();
    m().f();
  }
  
  private void f()
  {
    if (g.size() < 3) {
      a.setVisibility(0);
    }
  }
  
  public void b(ArrayList<Category> paramArrayList)
  {
    g = paramArrayList;
    e.a(paramArrayList);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    e();
    registerForContextMenu(m());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    try
    {
      d = ((e)paramActivity);
      return;
    }
    catch (ClassCastException paramActivity)
    {
      throw new ClassCastException("The corresponding activity must implement the AddNewCategoryFragment interface.");
    }
  }
  
  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494131)
    {
      int i = getMenuInfoposition;
      int j = m().getHeaderViewsCount();
      paramMenuItem = (Category)e.getItem(i - j);
      e.b(paramMenuItem);
      f();
      return true;
    }
    return super.onContextItemSelected(paramMenuItem);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = getArguments().getParcelableArrayList("args_categories");
    e = new s();
    e.a(g);
    setHasOptionsMenu(true);
  }
  
  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    getActivity().getMenuInflater().inflate(2131755014, paramContextMenu);
    int i = position;
    int j = m().getHeaderViewsCount();
    paramView = (Category)e.getItem(i - j);
    paramContextMenu.setHeaderTitle(f.a(paramView.getName(), paramView.getParent()));
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(2131755019, paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 2131494141)
    {
      getActivity().setResult(-1, ChangeBusinessAttributes.a(g));
      getActivity().finish();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.CategoryPickerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */