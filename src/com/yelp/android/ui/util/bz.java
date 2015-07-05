package com.yelp.android.ui.util;

import android.content.Context;
import android.location.Location;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.StyleSpan;
import android.text.style.TextAppearanceSpan;
import android.widget.Filter;
import android.widget.Filter.FilterResults;
import com.yelp.android.analytics.iris.IriSource;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fy;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.RichSearchSuggestion;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

public abstract class bz<T>
  extends Filter
  implements m<List<T>>
{
  private final ArrayList<CharSequence> a;
  private final ArrayList<CharSequence> b;
  private final ArrayList<CharSequence> c;
  private List<T> d;
  private fy<T> e;
  private final HashMap<cb, cd<T>> f;
  private boolean g;
  private final boolean h;
  private final boolean i;
  private final boolean j;
  private IriSource k;
  private Location l;
  private String m;
  private final cc<T> n;
  
  public bz(List<CharSequence> paramList, ArrayList<CharSequence> paramArrayList1, ArrayList<CharSequence> paramArrayList2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, cc<T> paramcc)
  {
    a = new ArrayList(paramList);
    paramList = new LinkedHashSet(paramList);
    paramList.addAll(paramArrayList1);
    b = new ArrayList(paramList);
    c = paramArrayList2;
    f = new HashMap();
    g = false;
    h = paramBoolean1;
    i = paramBoolean2;
    j = paramBoolean3;
    n = paramcc;
    d = Collections.emptyList();
  }
  
  private CharSequence a(CharSequence paramCharSequence)
  {
    Object localObject = paramCharSequence;
    if (c.contains(paramCharSequence)) {
      localObject = "";
    }
    return ((CharSequence)localObject).toString().replaceAll("\\s+", " ");
  }
  
  private List<T> a(List<T> paramList, CharSequence paramCharSequence)
  {
    ArrayList localArrayList = new ArrayList();
    TextAppearanceSpan localTextAppearanceSpan1 = new TextAppearanceSpan(AppData.b(), 2131689653);
    TextAppearanceSpan localTextAppearanceSpan2 = new TextAppearanceSpan(AppData.b(), 2131689785);
    StyleSpan localStyleSpan1 = new StyleSpan(1);
    StyleSpan localStyleSpan2 = new StyleSpan(1);
    String str = paramCharSequence.toString().toLowerCase(Locale.getDefault());
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = localIterator.next();
      if ((localObject instanceof CharSequence)) {
        paramList = SpannableString.valueOf((CharSequence)localObject);
      }
      for (;;)
      {
        if (c.contains(localObject))
        {
          paramList.setSpan(localTextAppearanceSpan1, 0, paramList.length(), 18);
          if ((localObject instanceof RichSearchSuggestion))
          {
            ((RichSearchSuggestion)localObject).setStyledTerm(paramList);
            localArrayList.add(localObject);
            break;
            paramList = SpannableString.valueOf(((RichSearchSuggestion)localObject).getTerm());
            continue;
          }
          localArrayList.add(paramList);
          break;
        }
      }
      paramList.setSpan(localTextAppearanceSpan2, 0, paramList.length(), 18);
      int i1 = paramList.toString().toLowerCase(Locale.getDefault()).indexOf(str, 0);
      if (i1 >= 0)
      {
        paramList.setSpan(localStyleSpan1, 0, i1, 18);
        paramList.setSpan(localStyleSpan2, i1 + paramCharSequence.length(), paramList.length(), 18);
        if ((localObject instanceof RichSearchSuggestion))
        {
          ((RichSearchSuggestion)localObject).setStyledTerm(paramList);
          localArrayList.add(localObject);
        }
        else
        {
          localArrayList.add(paramList);
        }
      }
      else
      {
        paramList.setSpan(localStyleSpan1, 0, paramList.length(), 18);
        if ((localObject instanceof RichSearchSuggestion))
        {
          ((RichSearchSuggestion)localObject).setStyledTerm(paramList);
          localArrayList.add(localObject);
        }
        else
        {
          localArrayList.add(paramList);
        }
      }
    }
    return localArrayList;
  }
  
  public static <T> void a(Context paramContext, bz<T> parambz, String paramString1, String paramString2, String paramString3, int paramInt)
  {
    HashMap localHashMap = new HashMap();
    if (paramString1 == null) {
      localHashMap.put("text", paramString2);
    }
    for (;;)
    {
      localHashMap.put("typed_text", paramString3);
      parambz.a(paramContext, localHashMap);
      return;
      localHashMap.put("suggestion_type", paramString1.toLowerCase(Locale.US));
      localHashMap.put("suggested_text", paramString2);
      localHashMap.put("suggestion_list_index", Integer.valueOf(paramInt));
      localHashMap.put("analytics_payload", parambz.f());
      localHashMap.put("source", parambz.b());
      localHashMap.put("request_id", parambz.e());
    }
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    if (a() != null)
    {
      HashMap localHashMap = new HashMap(4);
      localHashMap.put("typed_text", paramString1);
      localHashMap.put("request_id", paramString2);
      localHashMap.put("source", paramString3);
      localHashMap.put("analytics_payload", paramString4);
      AppData.a(a(), localHashMap);
    }
  }
  
  private String f()
  {
    if (e == null) {
      return null;
    }
    return e.b();
  }
  
  protected ViewIri a()
  {
    return null;
  }
  
  protected abstract fy<T> a(String paramString1, m<List<T>> paramm, Location paramLocation, String paramString2);
  
  protected abstract void a(Context paramContext, HashMap<String, Object> paramHashMap);
  
  public void a(Location paramLocation)
  {
    l = paramLocation;
  }
  
  public void a(IriSource paramIriSource)
  {
    k = paramIriSource;
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<T> paramList)
  {
    fy localfy = (fy)paramApiRequest;
    boolean bool;
    if (!paramList.isEmpty())
    {
      a(localfy.a(), localfy.getRequestId(), b(), localfy.b());
      paramApiRequest = new cd(paramList, localfy.getRequestId(), localfy.b(), null);
      HashMap localHashMap = f;
      String str = localfy.a();
      if ((!Double.isNaN(localfy.c())) && (!Double.isNaN(localfy.d())))
      {
        bool = true;
        localHashMap.put(new cb(str, bool, i, localfy.e(), localfy.f()), paramApiRequest);
        paramList = new ArrayList(paramList);
        paramApiRequest = paramList;
        if (d.size() > 0)
        {
          paramApiRequest = paramList;
          if (!g)
          {
            paramApiRequest = new LinkedHashSet(d);
            paramApiRequest.addAll(paramList);
            paramApiRequest = new ArrayList(paramApiRequest);
          }
        }
        d = paramApiRequest;
        n.a(a(paramApiRequest, localfy.a()));
      }
    }
    for (;;)
    {
      g = false;
      return;
      bool = false;
      break;
      if (g)
      {
        d = Collections.emptyList();
        n.a(d);
      }
    }
  }
  
  public void a(String paramString)
  {
    m = paramString;
  }
  
  protected String b()
  {
    if (j) {
      return c();
    }
    return "search";
  }
  
  protected String c()
  {
    if (k != null) {
      return k.getParameterValue();
    }
    return "contribution_search";
  }
  
  protected boolean d()
  {
    return j;
  }
  
  public String e()
  {
    if (e == null) {
      return null;
    }
    return e.getRequestId();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException) {}
  
  protected Filter.FilterResults performFiltering(CharSequence paramCharSequence)
  {
    ArrayList localArrayList = new ArrayList(a.size());
    paramCharSequence = a(paramCharSequence);
    if (!i) {
      localArrayList.addAll(c);
    }
    if (!TextUtils.isEmpty(paramCharSequence))
    {
      int i2 = b.size();
      paramCharSequence = paramCharSequence.toString().toLowerCase(Locale.getDefault()).trim();
      int i1 = 0;
      if (i1 < i2)
      {
        String str = ((CharSequence)b.get(i1)).toString().trim();
        if (str.toLowerCase(Locale.getDefault()).startsWith(paramCharSequence))
        {
          if (!i) {
            break label141;
          }
          localArrayList.add(RichSearchSuggestion.instantiateCommonSuggestion(str.toString()));
        }
        for (;;)
        {
          i1 += 1;
          break;
          label141:
          localArrayList.add(str);
        }
      }
    }
    paramCharSequence = new Filter.FilterResults();
    count = localArrayList.size();
    values = localArrayList;
    return paramCharSequence;
  }
  
  protected void publishResults(CharSequence paramCharSequence, Filter.FilterResults paramFilterResults)
  {
    paramCharSequence = a(paramCharSequence);
    if ((count >= 0) && (values != null))
    {
      if (!h)
      {
        d = ((List)values);
        n.a(a((List)values, paramCharSequence));
        return;
      }
      g = false;
      Object localObject = paramCharSequence.toString();
      if (l != null) {}
      for (boolean bool = true;; bool = false)
      {
        cb localcb = new cb((String)localObject, bool, i, l, m);
        if (e != null) {
          e.cancel(true);
        }
        if (!f.containsKey(localcb)) {
          break;
        }
        localObject = new LinkedHashSet((List)values);
        ((LinkedHashSet)localObject).addAll(cd.a((cd)f.get(localcb)));
        count = ((LinkedHashSet)localObject).size();
        values = new ArrayList((Collection)localObject);
        d = ((List)values);
        n.a(a((List)values, paramCharSequence));
        a(paramCharSequence.toString(), cd.b((cd)f.get(localcb)), b(), cd.c((cd)f.get(localcb)));
        return;
      }
      if (i)
      {
        count = d.size();
        values = d;
        g = true;
      }
      d = ((List)values);
      n.a(a((List)values, paramCharSequence));
      if (l == null) {}
      for (paramCharSequence = fy.a;; paramCharSequence = l)
      {
        e = a((String)localObject, this, paramCharSequence, m);
        e.execute(new String[] { localObject });
        return;
      }
    }
    n.a();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */