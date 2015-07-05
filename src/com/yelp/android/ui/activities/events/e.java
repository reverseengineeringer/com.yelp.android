package com.yelp.android.ui.activities.events;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cn;
import com.yelp.android.ui.widgets.SpannedTextView;
import java.util.ArrayList;
import java.util.List;

public class e
  extends au<User>
{
  private EventAttendees a;
  
  public e(EventAttendees paramEventAttendees, Bundle paramBundle)
  {
    a = paramEventAttendees;
    if (paramBundle != null)
    {
      a(paramBundle.getParcelableArrayList("adapter_attendees_list"));
      return;
    }
    a(a.getAttendees());
  }
  
  private View a(int paramInt, ViewGroup paramViewGroup)
  {
    if (b(paramInt))
    {
      View localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903300, paramViewGroup, false);
      ((SpannedTextView)localView).setTextAppearance(paramViewGroup.getContext(), 2131689610);
      return localView;
    }
    paramViewGroup = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903381, paramViewGroup, false);
    paramViewGroup.setTag(new cn(paramViewGroup, false));
    return paramViewGroup;
  }
  
  private boolean b(int paramInt)
  {
    if (paramInt == 0) {
      return true;
    }
    int j = a.getSectionCounts()[0];
    int i = 1;
    for (;;)
    {
      if (i >= d()) {
        break label54;
      }
      if (paramInt == j + 1) {
        break;
      }
      j += a.getSectionCounts()[i] + 1;
      i += 1;
    }
    label54:
    return false;
  }
  
  private String c(int paramInt)
  {
    int i = 0;
    int j = 0;
    while (i < d())
    {
      j = a.getSectionCounts()[i] + j;
      if (paramInt <= j)
      {
        String str1 = (String)a.getSectionNames().get(i);
        String str2 = Integer.toString(a.getSectionCounts()[i]);
        return AppData.b().getString(2131165416, new Object[] { str1, str2 });
      }
      i += 1;
    }
    return null;
  }
  
  private int d()
  {
    return d(a().size());
  }
  
  private int d(int paramInt)
  {
    int i = 0;
    int j = 1;
    int k = 0;
    while (i < a.getSectionCounts().length)
    {
      k += a.getSectionCounts()[i];
      if (paramInt <= k + i) {
        break;
      }
      j += 1;
      i += 1;
    }
    return j;
  }
  
  public User a(int paramInt)
  {
    if (!b(paramInt)) {
      return (User)super.getItem(paramInt - d(paramInt));
    }
    return null;
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("adapter_attendees_list", new ArrayList(a()));
  }
  
  public List<String> b()
  {
    int i = a().size();
    int j = Math.min(20 + i, a.getAttendeeIds().size());
    ArrayList localArrayList = new ArrayList();
    while (i < j)
    {
      localArrayList.add(a.getAttendeeIds().get(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public boolean c()
  {
    return a().size() == a.getAttendeeIds().size();
  }
  
  public int getCount()
  {
    return super.getCount() + d();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (b(paramInt)) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null) {
      paramView = a(paramInt, paramViewGroup);
    }
    for (;;)
    {
      if (b(paramInt))
      {
        ((SpannedTextView)paramView).setText(c(paramInt));
        return paramView;
      }
      paramViewGroup = (cn)paramView.getTag();
      n.setVisibility(8);
      paramViewGroup.a(a(paramInt));
      return paramView;
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.events.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */