package com.yelp.android.ui.util;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageButton;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.yelp.android.serializable.User;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class cj
  extends au<User>
  implements Filterable, SectionIndexer
{
  cm a;
  private final int b;
  private Map<String, ContactsFetcher.Contact> c;
  private HashSet<String> d;
  private final SparseIntArray e;
  private final ArrayList<String> f;
  private boolean g = false;
  private List<User> h;
  private View.OnClickListener i;
  private final View.OnClickListener j = new ck(this);
  private final Filter k = new cl(this);
  
  public cj()
  {
    this(2130903381);
  }
  
  public cj(int paramInt)
  {
    this(new ArrayList(), paramInt);
  }
  
  public cj(ArrayList<User> paramArrayList, int paramInt)
  {
    b = paramInt;
    Object localObject = paramArrayList;
    if (paramArrayList == null) {
      localObject = new ArrayList();
    }
    c = Collections.emptyMap();
    e = new SparseIntArray();
    f = new ArrayList();
    a((List)localObject);
  }
  
  public static cj a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return new cj();
    }
    Object localObject = paramBundle.getParcelableArrayList("users");
    ArrayList localArrayList1 = paramBundle.getStringArrayList("uids");
    ArrayList localArrayList2 = paramBundle.getParcelableArrayList("contacts");
    paramBundle = new cj((ArrayList)localObject, paramBundle.getInt("layout_id"));
    localObject = new TreeMap();
    int m = 0;
    int n = localArrayList2.size();
    while (m < n)
    {
      ((Map)localObject).put(localArrayList1.get(m), localArrayList2.get(m));
      m += 1;
    }
    c = ((Map)localObject);
    return paramBundle;
  }
  
  public void a(View.OnClickListener paramOnClickListener)
  {
    i = paramOnClickListener;
  }
  
  public void a(User paramUser)
  {
    super.c(paramUser);
    b();
  }
  
  public void a(User paramUser, boolean paramBoolean)
  {
    a(paramUser);
    if (paramBoolean) {
      notifyDataSetChanged();
    }
  }
  
  public void a(Collection<? extends User> paramCollection)
  {
    super.a(paramCollection);
    b();
  }
  
  public void a(Collection<User> paramCollection, boolean paramBoolean)
  {
    a(paramCollection);
    if (paramBoolean) {
      notifyDataSetChanged();
    }
  }
  
  public void a(List<User> paramList)
  {
    super.a(paramList);
    b();
  }
  
  public void a(Map<String, ContactsFetcher.Contact> paramMap)
  {
    c = paramMap;
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void b()
  {
    Object localObject = null;
    f.clear();
    int n = getCount();
    int m = 0;
    if (m < n)
    {
      String str = String.valueOf(((User)getItem(m)).getFirstName().charAt(0)).toUpperCase(Locale.getDefault());
      if (TextUtils.equals((CharSequence)localObject, str)) {
        break label92;
      }
      e.put(f.size(), m);
      f.add(str);
      localObject = str;
    }
    label92:
    for (;;)
    {
      m += 1;
      break;
      return;
    }
  }
  
  public void b(Bundle paramBundle)
  {
    if (h == null) {
      h = a();
    }
    paramBundle.putParcelableArrayList("users", new ArrayList(h));
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    Iterator localIterator = c.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList1.add(localEntry.getKey());
      localArrayList2.add(localEntry.getValue());
    }
    paramBundle.putStringArrayList("uids", localArrayList1);
    paramBundle.putParcelableArrayList("contacts", localArrayList2);
    paramBundle.putInt("layout_id", b);
  }
  
  public void clear()
  {
    super.clear();
    c = Collections.emptyMap();
    notifyDataSetInvalidated();
  }
  
  public Filter getFilter()
  {
    return k;
  }
  
  public int getPositionForSection(int paramInt)
  {
    return e.get(paramInt);
  }
  
  public int getSectionForPosition(int paramInt)
  {
    if (paramInt >= getCount()) {
      return 0;
    }
    User localUser = (User)getItem(paramInt);
    return Collections.binarySearch(f, localUser.getFirstName().toUpperCase(Locale.getDefault()));
  }
  
  public Object[] getSections()
  {
    return f.toArray();
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(b, paramViewGroup, false);
      paramViewGroup = new cn(paramView, false);
      i = c;
      paramView.setTag(paramViewGroup);
      if (d != null)
      {
        m.setVisibility(0);
        m.setOnClickListener(j);
      }
      localView = paramView;
      if (o != null)
      {
        o.setClickable(true);
        o.setOnClickListener(i);
        localView = paramView;
      }
    }
    paramView = (User)getItem(paramInt);
    paramViewGroup = (cn)localView.getTag();
    if (g)
    {
      n.setVisibility(0);
      n.setText(paramView.getLocation());
    }
    for (;;)
    {
      if (d != null)
      {
        m.setChecked(d.contains(paramView.getId()));
        m.setTag(Integer.valueOf(paramInt));
      }
      if (o != null) {
        o.setTag(Integer.valueOf(paramInt));
      }
      paramViewGroup.a(paramView);
      return localView;
      n.setVisibility(8);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */