package com.yelp.android.ui.util;

import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.LayoutParams;
import android.widget.BaseAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.yelp.android.co.a.f;
import com.yelp.android.ui.activities.profile.e;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class aj
  extends BaseAdapter
  implements g, Iterable<g>
{
  a<b<?>> a = new a(null);
  private final ArrayList<b<?>> b = new ArrayList();
  private final SparseArray<b<?>> c = new SparseArray();
  private final Set<Integer> d = new HashSet();
  private boolean e = true;
  private boolean f = true;
  private boolean g;
  private final b h = new b(this);
  
  public a<b<?>> a(int paramInt, a<b<?>> parama)
  {
    int m = b.size();
    int i = 0;
    b localb;
    int j;
    for (;;)
    {
      if (i < m)
      {
        localb = (b)b.get(i);
        int k = ((g)a).getCount();
        if (k == 0)
        {
          i += 1;
        }
        else
        {
          j = k;
          if (g) {
            j = k + 1;
          }
          if ((paramInt == 0) && (g)) {
            return null;
          }
          if ((paramInt == j) && (h)) {
            return null;
          }
          if (paramInt < j)
          {
            if (!g) {
              break label158;
            }
            paramInt -= 1;
          }
        }
      }
    }
    label158:
    for (;;)
    {
      return parama.a(localb, paramInt);
      j = paramInt - j;
      paramInt = j;
      if (!h) {
        break;
      }
      paramInt = j - 1;
      break;
      return null;
    }
  }
  
  public b<?> a(int paramInt)
  {
    return (b)c.get(paramInt);
  }
  
  public void a()
  {
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext()) {
      nexti = false;
    }
  }
  
  public <Clearable extends BaseAdapter,  extends g> void a(int paramInt, Clearable paramClearable)
  {
    a(paramInt, c.a(paramClearable).b());
  }
  
  public void a(int paramInt, b<?> paramb)
  {
    boolean bool2 = true;
    b.add(paramb);
    if (d.contains(Integer.valueOf(paramInt))) {
      throw new IllegalArgumentException("Tried to add a section with id " + paramInt + " when one already exists");
    }
    d.add(Integer.valueOf(paramInt));
    c.put(paramInt, paramb);
    if ((e) && (a.areAllItemsEnabled()))
    {
      bool1 = true;
      e = bool1;
      if ((!f) || (!a.hasStableIds())) {
        break label153;
      }
    }
    label153:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      f = bool1;
      a.registerDataSetObserver(h);
      notifyDataSetChanged();
      return;
      bool1 = false;
      break;
    }
  }
  
  public <Clearable extends BaseAdapter,  extends g> void a(int paramInt, CharSequence paramCharSequence, Clearable paramClearable)
  {
    a(paramInt, c.a(paramCharSequence, paramClearable).b());
  }
  
  public void a(boolean paramBoolean)
  {
    g = paramBoolean;
    notifyDataSetChanged();
  }
  
  public boolean a(int... paramVarArgs)
  {
    int m = paramVarArgs.length;
    int i = 0;
    int n = 1;
    if (i < m)
    {
      int j = paramVarArgs[i];
      if (c.get(j) != null) {}
      int k;
      for (j = 1;; k = 0)
      {
        n &= j;
        i += 1;
        break;
      }
    }
    return n;
  }
  
  public boolean areAllItemsEnabled()
  {
    return e;
  }
  
  public void clear()
  {
    int j = c.size();
    int i = 0;
    while (i < j)
    {
      ((g)c.valueAt(i)).a).clear();
      i += 1;
    }
    d.clear();
    notifyDataSetInvalidated();
  }
  
  public int getCount()
  {
    int m = c.size();
    int k = 0;
    int i = 0;
    b localb;
    if (k < m)
    {
      localb = (b)c.valueAt(k);
      if ((!g) || (!i)) {}
    }
    for (;;)
    {
      k += 1;
      break;
      int j = ((g)a).getCount();
      if (j > 0)
      {
        i = j + i;
        j = i;
        if (g) {
          j = i + 1;
        }
        i = j;
        if (h)
        {
          i = j + 1;
          continue;
          return i;
        }
      }
    }
  }
  
  public Object getItem(int paramInt)
  {
    a locala = a(paramInt, a);
    Object localObject = null;
    if (locala != null) {
      localObject = a).a.getItem(b);
    }
    return localObject;
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public int getItemViewType(int paramInt)
  {
    int m = b.size();
    int k = 0;
    int j = -1;
    b localb;
    g localg;
    int n;
    int i;
    if (k < m)
    {
      localb = (b)b.get(k);
      localg = (g)a;
      n = localg.getCount();
      i = j;
      if (g) {
        i = j + 1;
      }
      if (n == 0)
      {
        i = localg.getViewTypeCount() + i;
        if (!h) {
          break label231;
        }
        j = i + 1;
        i = paramInt;
        paramInt = j;
      }
    }
    for (;;)
    {
      k += 1;
      j = paramInt;
      paramInt = i;
      break;
      j = paramInt;
      if (g) {
        j = paramInt - 1;
      }
      if (j == -1) {
        return i;
      }
      if ((h) && (j == n)) {
        return i + (localg.getViewTypeCount() + 1);
      }
      if (j < n)
      {
        paramInt = localg.getItemViewType(j);
        if (paramInt < 0) {
          return -1;
        }
        return paramInt + i + 1;
      }
      if (h) {
        i += 1;
      }
      for (paramInt = j - 1;; paramInt = j)
      {
        i += localg.getViewTypeCount();
        j = paramInt - n;
        paramInt = i;
        i = j;
        break;
        return -1;
      }
      label231:
      j = paramInt;
      paramInt = i;
      i = j;
    }
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    int m = b.size();
    int k = 0;
    int j = -1;
    b localb;
    Object localObject;
    int n;
    int i;
    if (k < m)
    {
      localb = (b)b.get(k);
      localObject = (g)a;
      n = ((g)localObject).getCount();
      i = j;
      if (g) {
        i = j + 1;
      }
      if (n == 0)
      {
        i = ((g)localObject).getViewTypeCount() + i;
        if (!h) {
          break label416;
        }
        j = i + 1;
        i = paramInt;
        paramInt = j;
      }
    }
    for (;;)
    {
      k += 1;
      j = paramInt;
      paramInt = i;
      break;
      j = paramInt;
      if (g) {
        j = paramInt - 1;
      }
      if (j == -1)
      {
        localObject = b.a(localb, paramView, paramViewGroup);
        paramViewGroup = ((View)localObject).getLayoutParams();
        paramView = paramViewGroup;
        if (paramViewGroup == null) {
          paramView = ar.a();
        }
        ((View)localObject).setLayoutParams(new AbsListView.LayoutParams(width, height, i));
        return (View)localObject;
      }
      if ((h) && (j == n))
      {
        paramInt = ((g)localObject).getViewTypeCount();
        localObject = localb.b();
        paramViewGroup = ((View)localObject).getLayoutParams();
        paramView = paramViewGroup;
        if (paramViewGroup == null) {
          paramView = ar.a();
        }
        ((View)localObject).setLayoutParams(new AbsListView.LayoutParams(width, height, i + (paramInt + 1)));
        return (View)localObject;
      }
      if (j < n)
      {
        paramView = ((g)localObject).getView(j, paramView, paramViewGroup);
        paramViewGroup = paramView.getLayoutParams();
        if ((paramViewGroup != null) && (!AbsListView.LayoutParams.class.isAssignableFrom(paramViewGroup.getClass())))
        {
          j = ((g)localObject).getItemViewType(j);
          paramInt = j;
          if (j >= 0) {
            paramInt = j + (i + 1);
          }
          paramView.setLayoutParams(new AbsListView.LayoutParams(width, height, paramInt));
        }
        return paramView;
      }
      if (h) {
        i += 1;
      }
      for (paramInt = j - 1;; paramInt = j)
      {
        i += ((g)localObject).getViewTypeCount();
        j = paramInt - n;
        paramInt = i;
        i = j;
        break;
        return null;
      }
      label416:
      j = paramInt;
      paramInt = i;
      i = j;
    }
  }
  
  public int getViewTypeCount()
  {
    int m = b.size();
    int k = 0;
    int j = 0;
    while (k < m)
    {
      b localb = (b)b.get(k);
      j += a.getViewTypeCount();
      int i = j;
      if (g) {
        i = j + 1;
      }
      j = i;
      if (h) {
        j = i + 1;
      }
      k += 1;
    }
    return Math.max(1, j);
  }
  
  public boolean hasStableIds()
  {
    return f;
  }
  
  public boolean isEmpty()
  {
    if (c.size() != 0)
    {
      int j = c.size();
      int i = 0;
      while (i < j)
      {
        if (!c.valueAt(i)).a.isEmpty()) {
          return false;
        }
        i += 1;
      }
    }
    return true;
  }
  
  public boolean isEnabled(int paramInt)
  {
    a locala = a(paramInt, a);
    if (locala != null) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      boolean bool2 = bool1;
      if (bool1) {
        bool2 = a).a.isEnabled(b);
      }
      return bool2;
    }
  }
  
  public Iterator<g> iterator()
  {
    new Iterator()
    {
      Iterator<aj.b<?>> a = aj.a(aj.this).iterator();
      
      public g a()
      {
        return (g)a.next()).a;
      }
      
      public boolean hasNext()
      {
        return a.hasNext();
      }
      
      public void remove()
      {
        a.remove();
      }
    };
  }
  
  private static class a<First>
  {
    public First a;
    public int b;
    
    public a<First> a(First paramFirst, int paramInt)
    {
      a = paramFirst;
      b = paramInt;
      return this;
    }
  }
  
  public static class b<Clearable extends BaseAdapter,  extends g>
  {
    public final Clearable a;
    public CharSequence b;
    public final int[] c;
    public final int d;
    public final View e;
    public final View f;
    public boolean g;
    public final boolean h;
    public boolean i = true;
    
    public b(Clearable paramClearable, CharSequence paramCharSequence, int[] paramArrayOfInt, int paramInt, View paramView1, View paramView2)
    {
      a = paramClearable;
      b = paramCharSequence;
      c = paramArrayOfInt;
      d = paramInt;
      e = paramView1;
      f = paramView2;
      if ((paramView1 != null) || (!TextUtils.isEmpty(paramCharSequence)))
      {
        bool1 = true;
        g = bool1;
        if (paramView2 == null) {
          break label88;
        }
      }
      label88:
      for (boolean bool1 = bool2;; bool1 = false)
      {
        h = bool1;
        return;
        bool1 = false;
        break;
      }
    }
    
    private View a(View paramView, ViewGroup paramViewGroup)
    {
      if (e != null)
      {
        paramViewGroup = e;
        return paramViewGroup;
      }
      if (paramView == null)
      {
        if (paramViewGroup == null) {
          throw new IllegalArgumentException("If convertView is null a parent must be supplied");
        }
        paramView = new TextView(paramViewGroup.getContext(), null, d);
      }
      for (;;)
      {
        TextView localTextView = (TextView)paramView;
        localTextView.setText(b);
        paramViewGroup = paramView;
        if (c == null) {
          break;
        }
        localTextView.setCompoundDrawablesWithIntrinsicBounds(c[0], c[1], c[2], c[3]);
        return paramView;
      }
    }
    
    public View a()
    {
      return e;
    }
    
    public void a(CharSequence paramCharSequence)
    {
      b = paramCharSequence;
      if ((e != null) || (!TextUtils.isEmpty(b))) {}
      for (boolean bool = true;; bool = false)
      {
        g = bool;
        return;
      }
    }
    
    public View b()
    {
      return f;
    }
    
    public String toString()
    {
      if (a != null) {
        return String.format("\nSection[types:%s, header:%s, footer:%s size:%s]", new Object[] { Integer.valueOf(a.getViewTypeCount()), Boolean.valueOf(g), Boolean.valueOf(h), Integer.valueOf(a.getCount()) });
      }
      return "Empty";
    }
  }
  
  public static final class c<Clearable extends BaseAdapter,  extends g>
  {
    private final Clearable a;
    private CharSequence b;
    private int[] c;
    private int d;
    private View e;
    private View f;
    private int g;
    private int h;
    private int i;
    
    private c(CharSequence paramCharSequence, Clearable paramClearable)
    {
      if (paramClearable == null) {
        throw new NullPointerException("Cannot pass a null adapter to the SectionedBuilder constructor.");
      }
      if (paramCharSequence == null) {
        throw new NullPointerException("Cannot pass a null title to the SectionBuilder constructor.");
      }
      b = paramCharSequence;
      a = paramClearable;
      d = 16843272;
    }
    
    public static <Clearable extends BaseAdapter,  extends g> c<Clearable> a(Clearable paramClearable)
    {
      return new c("", paramClearable);
    }
    
    public static <Clearable extends BaseAdapter,  extends g> c<Clearable> a(CharSequence paramCharSequence, Clearable paramClearable)
    {
      return new c(paramCharSequence, paramClearable);
    }
    
    private int[] c()
    {
      if (c == null)
      {
        int[] arrayOfInt = new int[4];
        c = arrayOfInt;
        return arrayOfInt;
      }
      return c;
    }
    
    public c<Clearable> a()
    {
      return b(a.f.content);
    }
    
    public c<Clearable> a(int paramInt)
    {
      d = paramInt;
      return this;
    }
    
    public c<Clearable> a(int paramInt1, int paramInt2, int paramInt3)
    {
      g = paramInt1;
      h = paramInt2;
      i = paramInt3;
      return this;
    }
    
    public c<Clearable> a(View paramView)
    {
      f = paramView;
      return this;
    }
    
    public c<Clearable> a(CharSequence paramCharSequence)
    {
      b = paramCharSequence;
      return this;
    }
    
    public aj.b<Clearable> b()
    {
      Object localObject = a;
      if (g != 0) {
        if ((localObject instanceof w)) {
          localObject = new e((w)localObject, g, h, i);
        }
      }
      for (;;)
      {
        return new aj.b((BaseAdapter)localObject, b, c, d, e, f);
        throw new IllegalStateException(String.format("Section cannot be configured to be Spannable if the base adapter is not a %s", new Object[] { w.class }));
      }
    }
    
    public c<Clearable> b(int paramInt)
    {
      return a(paramInt, 0, 0);
    }
    
    public c<Clearable> b(View paramView)
    {
      e = paramView;
      return this;
    }
    
    public c<Clearable> c(int paramInt)
    {
      c()[0] = paramInt;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */