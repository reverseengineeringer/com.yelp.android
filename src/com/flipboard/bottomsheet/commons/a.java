package com.flipboard.bottomsheet.commons;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

@SuppressLint({"ViewConstructor"})
public class a
  extends FrameLayout
{
  private int a = 100;
  private final Intent b;
  private final GridView c;
  private final List<a> d = new ArrayList();
  private b e;
  private c f = new d(null);
  private Comparator<a> g = new f(null);
  
  public a(Context paramContext, Intent paramIntent, String paramString, final e parame)
  {
    super(paramContext);
    b = paramIntent;
    inflate(paramContext, com.yelp.android.cq.a.d.grid_sheet_view, this);
    c = ((GridView)findViewById(com.yelp.android.cq.a.c.grid));
    ((TextView)findViewById(com.yelp.android.cq.a.c.title)).setText(paramString);
    c.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        parame.a(a.a(a.this).a(paramAnonymousInt));
      }
    });
    ai.h(this, b.a(getContext(), 16.0F));
  }
  
  public List<a> getMixins()
  {
    return d;
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    e = new b(getContext(), b, d);
    c.setAdapter(e);
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Iterator localIterator = e.a.iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if (a.a(locala) != null)
      {
        a.a(locala).cancel(true);
        a.a(locala, null);
      }
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    float f1 = getResourcesgetDisplayMetricsdensity;
    getResources().getDimensionPixelSize(com.yelp.android.cq.a.b.bottomsheet_default_sheet_width);
    c.setNumColumns((int)(i / (f1 * a)));
    super.onMeasure(paramInt1, paramInt2);
  }
  
  protected void onSizeChanged(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (Build.VERSION.SDK_INT >= 21) {
      setOutlineProvider(new b.a(paramInt1, paramInt2));
    }
  }
  
  public void setColumnWidthDp(int paramInt)
  {
    a = paramInt;
  }
  
  public void setFilter(c paramc)
  {
    f = paramc;
  }
  
  public void setMixins(List<a> paramList)
  {
    d.clear();
    d.addAll(paramList);
  }
  
  public void setSortMethod(Comparator<a> paramComparator)
  {
    g = paramComparator;
  }
  
  public static class a
  {
    public Drawable a;
    public final String b;
    public final ComponentName c;
    public final ResolveInfo d;
    private AsyncTask<Void, Void, Drawable> e;
    
    a(ResolveInfo paramResolveInfo, CharSequence paramCharSequence, ComponentName paramComponentName)
    {
      d = paramResolveInfo;
      b = paramCharSequence.toString();
      c = paramComponentName;
    }
    
    public Intent a(Intent paramIntent)
    {
      paramIntent = new Intent(paramIntent);
      paramIntent.setComponent(c);
      return paramIntent;
    }
  }
  
  private class b
    extends BaseAdapter
  {
    final List<a.a> a;
    final LayoutInflater b;
    private PackageManager d;
    
    public b(Intent paramIntent, List<a.a> paramList)
    {
      b = LayoutInflater.from(paramIntent);
      d = paramIntent.getPackageManager();
      paramIntent = d.queryIntentActivities(paramList, 0);
      Object localObject;
      a = new ArrayList(paramIntent.size() + ((List)localObject).size());
      a.addAll((Collection)localObject);
      paramIntent = paramIntent.iterator();
      while (paramIntent.hasNext())
      {
        paramList = (ResolveInfo)paramIntent.next();
        localObject = new ComponentName(activityInfo.packageName, activityInfo.name);
        paramList = new a.a(paramList, paramList.loadLabel(d), (ComponentName)localObject);
        if (a.b(a.this).a(paramList)) {
          a.add(paramList);
        }
      }
      Collections.sort(a, a.c(a.this));
    }
    
    public a.a a(int paramInt)
    {
      return (a.a)a.get(paramInt);
    }
    
    public int getCount()
    {
      return a.size();
    }
    
    public long getItemId(int paramInt)
    {
      return a.get(paramInt)).c.hashCode();
    }
    
    public View getView(int paramInt, View paramView, final ViewGroup paramViewGroup)
    {
      final a.a locala;
      if (paramView == null)
      {
        paramView = b.inflate(com.yelp.android.cq.a.d.sheet_grid_item, paramViewGroup, false);
        paramViewGroup = new a(paramView);
        paramView.setTag(paramViewGroup);
        locala = (a.a)a.get(paramInt);
        if (a.a.a(locala) != null)
        {
          a.a.a(locala).cancel(true);
          a.a.a(locala, null);
        }
        if (a == null) {
          break label117;
        }
        a.setImageDrawable(a);
      }
      for (;;)
      {
        b.setText(b);
        return paramView;
        paramViewGroup = (a)paramView.getTag();
        break;
        label117:
        a.setImageDrawable(getResources().getDrawable(com.yelp.android.cq.a.a.divider_gray));
        a.a.a(locala, new AsyncTask()
        {
          protected Drawable a(Void... paramAnonymousVarArgs)
          {
            return localad.loadIcon(a.b.a(a.b.this));
          }
          
          protected void a(Drawable paramAnonymousDrawable)
          {
            localaa = paramAnonymousDrawable;
            a.a.a(locala, null);
            paramViewGroupa.setImageDrawable(paramAnonymousDrawable);
          }
        });
        a.a.a(locala).execute(new Void[0]);
      }
    }
    
    class a
    {
      final ImageView a;
      final TextView b;
      
      a(View paramView)
      {
        a = ((ImageView)paramView.findViewById(com.yelp.android.cq.a.c.icon));
        b = ((TextView)paramView.findViewById(com.yelp.android.cq.a.c.label));
      }
    }
  }
  
  public static abstract interface c
  {
    public abstract boolean a(a.a parama);
  }
  
  private class d
    implements a.c
  {
    private d() {}
    
    public boolean a(a.a parama)
    {
      return true;
    }
  }
  
  public static abstract interface e
  {
    public abstract void a(a.a parama);
  }
  
  private class f
    implements Comparator<a.a>
  {
    private f() {}
    
    public int a(a.a parama1, a.a parama2)
    {
      return b.compareTo(b);
    }
  }
}

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */