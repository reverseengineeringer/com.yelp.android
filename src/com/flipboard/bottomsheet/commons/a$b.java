package com.flipboard.bottomsheet.commons;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.AsyncTask;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.cq.a.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

class a$b
  extends BaseAdapter
{
  final List<a.a> a;
  final LayoutInflater b;
  private PackageManager d;
  
  public a$b(Context paramContext, Intent paramIntent, List<a.a> paramList)
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
      if (a.b(paramContext).a(paramList)) {
        a.add(paramList);
      }
    }
    Collections.sort(a, a.c(paramContext));
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
      paramView = b.inflate(a.d.sheet_grid_item, paramViewGroup, false);
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
      a.setImageDrawable(c.getResources().getDrawable(com.yelp.android.cq.a.a.divider_gray));
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

/* Location:
 * Qualified Name:     com.flipboard.bottomsheet.commons.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */