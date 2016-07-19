package com.yelp.android.ui.activities.categorypicker;

import android.app.FragmentManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import com.yelp.android.appdata.n;
import com.yelp.android.co.a.c;
import com.yelp.android.co.a.f;
import com.yelp.android.co.a.h;
import com.yelp.android.serializable.BizCategory;
import com.yelp.android.ui.activities.support.YelpApiListFragment;
import java.util.ArrayList;

public abstract class CategoryPickerAbstractFragment<Category extends BizCategory>
  extends YelpApiListFragment
{
  protected a<Category> i;
  private ArrayList<Category> j;
  private View k;
  private b.a l;
  private c<Category> m;
  private final c.a n = new c.a()
  {
    public void a(Category paramAnonymousCategory)
    {
      CategoryPickerAbstractFragment.a(CategoryPickerAbstractFragment.this).A_();
      CategoryPickerAbstractFragment.b(CategoryPickerAbstractFragment.this).c(paramAnonymousCategory);
      CategoryPickerAbstractFragment.c(CategoryPickerAbstractFragment.this).remove(paramAnonymousCategory);
      CategoryPickerAbstractFragment.d(CategoryPickerAbstractFragment.this);
      if (CategoryPickerAbstractFragment.c(CategoryPickerAbstractFragment.this).isEmpty())
      {
        CategoryPickerAbstractFragment.e(CategoryPickerAbstractFragment.this).setVisibility(8);
        i.a(-1, true);
        getActivity().getFragmentManager().popBackStack();
      }
    }
  };
  private final View.OnClickListener o = new View.OnClickListener()
  {
    public void onClick(View paramAnonymousView)
    {
      CategoryPickerAbstractFragment.a(CategoryPickerAbstractFragment.this).a(CategoryPickerAbstractFragment.c(CategoryPickerAbstractFragment.this).size());
      i.a(-1, false);
    }
  };
  
  protected static <Category extends BizCategory> Bundle b(ArrayList<Category> paramArrayList)
  {
    Bundle localBundle = new Bundle();
    localBundle.putParcelableArrayList("args_categories", paramArrayList);
    return localBundle;
  }
  
  private void e()
  {
    ListView localListView = a();
    localListView.setDivider(null);
    localListView.setDividerHeight(n.e);
    localListView.setCacheColorHint(getResources().getColor(a.c.white));
    View localView1 = LayoutInflater.from(getActivity()).inflate(a.h.category_picker_fragment_footer, localListView, false);
    View localView2 = LayoutInflater.from(getActivity()).inflate(a.h.category_picker_header_text, localListView, false);
    k = localView1.findViewById(a.f.add_category);
    k.setOnClickListener(o);
    a(null);
    localListView.addFooterView(localView1);
    localListView.addHeaderView(localView2);
    a(m);
    f();
  }
  
  private void f()
  {
    View localView = k;
    if (j.size() < 3) {}
    for (int i1 = 0;; i1 = 8)
    {
      localView.setVisibility(i1);
      return;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    l.c();
    i.a(paramInt - 1, false);
  }
  
  protected abstract void a(ArrayList<Category> paramArrayList);
  
  protected abstract int c();
  
  public void c(ArrayList<Category> paramArrayList)
  {
    j = paramArrayList;
    m.a(paramArrayList);
  }
  
  protected abstract int d();
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    try
    {
      paramBundle = ((b.b)getActivity()).a();
      i = paramBundle;
      l = ((b.a)paramBundle);
      e();
      registerForContextMenu(a());
      return;
    }
    catch (ClassCastException paramBundle)
    {
      throw new ClassCastException("The corresponding activity must implement CategoryPickerHelperInterface and the helper must implement AddNewCategoryFragmentListener.");
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j = getArguments().getParcelableArrayList("args_categories");
    m = new c(n);
    m.a(j);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
    paramMenuInflater.inflate(c(), paramMenu);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == d())
    {
      l.d();
      a(j);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public static abstract interface a<Category extends BizCategory>
  {
    public abstract void a(int paramInt, boolean paramBoolean);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.categorypicker.CategoryPickerAbstractFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */