package com.yelp.android.ui.util;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.Filter;
import android.widget.Filterable;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.SectionIndexer;
import android.widget.TextView;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Passport;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.widgets.WebImageView;
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

public class ap
  extends w<User>
  implements Filterable, SectionIndexer
{
  ap.a a;
  private final int b;
  private Map<String, ContactsFetcher.Contact> c;
  private HashSet<String> d;
  private final SparseIntArray e;
  private final ArrayList<String> f;
  private boolean g = false;
  private List<User> h;
  private View.OnClickListener i;
  private final View.OnClickListener j = new ap.1(this);
  private final Filter k = new ap.2(this);
  
  public ap()
  {
    this(2130903483);
  }
  
  public ap(int paramInt)
  {
    this(new ArrayList(), paramInt);
  }
  
  public ap(ArrayList<User> paramArrayList, int paramInt)
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
  
  public static ap a(Bundle paramBundle)
  {
    if (paramBundle == null) {
      return new ap();
    }
    Object localObject = paramBundle.getParcelableArrayList("users");
    ArrayList localArrayList1 = paramBundle.getStringArrayList("uids");
    ArrayList localArrayList2 = paramBundle.getParcelableArrayList("contacts");
    paramBundle = new ap((ArrayList)localObject, paramBundle.getInt("layout_id"));
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
    super.d(paramUser);
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
      String str = String.valueOf(((User)getItem(m)).Z().charAt(0)).toUpperCase(Locale.getDefault());
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
    return Collections.binarySearch(f, localUser.Z().toUpperCase(Locale.getDefault()));
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
      paramViewGroup = new b(paramView, false);
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
    paramViewGroup = (b)localView.getTag();
    if (g)
    {
      n.setVisibility(0);
      n.setText(paramView.Y());
    }
    for (;;)
    {
      if (d != null)
      {
        m.setChecked(d.contains(paramView.ae()));
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
  
  public static class b
  {
    private CharSequence a;
    public final WebImageView c;
    public final TextView d;
    public final TextView e;
    public final TextView f;
    public final TextView g;
    public final TextView h;
    public Map<String, ContactsFetcher.Contact> i;
    public ImageView j;
    public TextView k;
    public TextView l;
    public CompoundButton m;
    public TextView n;
    public ImageButton o;
    
    public b(View paramView, boolean paramBoolean)
    {
      c = ((WebImageView)paramView.findViewById(2131690074));
      d = ((TextView)paramView.findViewById(2131690076));
      f = ((TextView)paramView.findViewById(2131690064));
      g = ((TextView)paramView.findViewById(2131690746));
      m = ((CompoundButton)paramView.findViewById(16908308));
      n = ((TextView)paramView.findViewById(2131690748));
      h = ((TextView)paramView.findViewById(2131690747));
      o = ((ImageButton)paramView.findViewById(2131690697));
      e = ((TextView)paramView.findViewById(2131690556));
      if (paramBoolean)
      {
        j = ((ImageView)paramView.findViewById(2131690217));
        k = ((TextView)paramView.findViewById(2131690218));
        l = ((TextView)paramView.findViewById(2131690216));
      }
      a = paramView.getContext().getString(2131165825);
      a = DateFormat.format(a, User.j());
      i = Collections.emptyMap();
    }
    
    public void a(Context paramContext, CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString, boolean paramBoolean)
    {
      paramContext = paramContext.getResources();
      d.setText(paramCharSequence);
      if (e != null)
      {
        if (!paramBoolean) {
          break label189;
        }
        e.setText(a);
        e.setVisibility(0);
        e.setContentDescription(paramContext.getString(2131166601, new Object[] { paramCharSequence }));
      }
      for (;;)
      {
        f.setText(Integer.toString(paramInt1));
        f.setContentDescription(paramContext.getQuantityString(2131230736, paramInt1, new Object[] { Integer.valueOf(paramInt1) }));
        g.setText(Integer.toString(paramInt2));
        g.setContentDescription(paramContext.getQuantityString(2131230757, paramInt2, new Object[] { Integer.valueOf(paramInt2) }));
        h.setText(Integer.toString(paramInt5));
        h.setContentDescription(Passport.a(true, paramInt3, paramInt4, paramInt5, paramContext));
        c.reset();
        c.setImageUrl(paramString, 2130837702);
        return;
        label189:
        e.setVisibility(8);
      }
    }
    
    public void a(DisplayableAsUserBadge paramDisplayableAsUserBadge)
    {
      String str = null;
      Object localObject1 = paramDisplayableAsUserBadge.a();
      Context localContext = d.getContext();
      ContactsFetcher.Contact localContact = (ContactsFetcher.Contact)i.get(paramDisplayableAsUserBadge.i());
      if (localContact != null)
      {
        localObject2 = localContact.a(localContext);
        localObject1 = localObject2;
        if (TextUtils.equals((CharSequence)localObject2, localContact.c(localContext))) {
          localObject1 = paramDisplayableAsUserBadge.a();
        }
      }
      for (Object localObject2 = localContact.e(localContext);; localObject2 = null)
      {
        int i1 = paramDisplayableAsUserBadge.k_();
        int i2 = paramDisplayableAsUserBadge.j_();
        int i3 = paramDisplayableAsUserBadge.l_();
        int i4 = paramDisplayableAsUserBadge.m_();
        int i5 = paramDisplayableAsUserBadge.n_();
        if (localObject2 == null) {
          str = paramDisplayableAsUserBadge.c();
        }
        a(localContext, (CharSequence)localObject1, i1, i2, i3, i4, i5, str, paramDisplayableAsUserBadge.h());
        if (localObject2 != null) {
          c.setImageBitmap((Bitmap)localObject2, true);
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.ap
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */