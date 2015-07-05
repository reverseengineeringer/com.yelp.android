package com.yelp.android.ui.dialogs;

import android.app.TimePickerDialog.OnTimeSetListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.ui.panels.PanelLoading;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.cq;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashSet;

public class y
  extends au<AttributeFilter>
{
  private HashSet<String> a = new HashSet();
  private Calendar b = Calendar.getInstance();
  private Boolean c = Boolean.valueOf(false);
  private int d;
  private int e;
  
  private void a(ac paramac)
  {
    DateFormat localDateFormat = SimpleDateFormat.getTimeInstance(3);
    ac.a(paramac).setText(localDateFormat.format(b.getTime()));
  }
  
  public void a(Calendar paramCalendar)
  {
    if (paramCalendar != null)
    {
      c = Boolean.valueOf(true);
      b = paramCalendar;
    }
  }
  
  public void a(HashSet<String> paramHashSet)
  {
    a = paramHashSet;
  }
  
  public HashSet<String> b()
  {
    return a;
  }
  
  public Calendar c()
  {
    if (c.booleanValue()) {
      return b;
    }
    return null;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ac localac;
    if ((paramView == null) || ((paramView instanceof PanelLoading)))
    {
      paramView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903209, paramViewGroup, false);
      localac = new ac((TextView)paramView.findViewById(2131493544), (ToggleButton)paramView.findViewById(2131493543), (Button)paramView.findViewById(2131493545), paramView.findViewById(2131493542));
      paramView.setTag(localac);
      localObject = cp.a(ac.b(localac));
      if (paramInt != getCount() - 1) {
        break label228;
      }
      ac.b(localac).setBackgroundResource(2130838373);
    }
    for (;;)
    {
      cp.a(ac.b(localac), (cq)localObject);
      localObject = (AttributeFilter)getItem(paramInt);
      z localz = new z(this, (AttributeFilter)localObject, localac);
      ac.b(localac).setOnClickListener(localz);
      ac.c(localac).setOnClickListener(localz);
      ac.d(localac).setText(((AttributeFilter)localObject).getLocalizedLabel());
      ac.c(localac).setChecked(a.contains(((AttributeFilter)localObject).getAlias()));
      if (((AttributeFilter)localObject).getAlias().equals("OPEN_NOW")) {
        break label241;
      }
      ac.a(localac).setVisibility(8);
      return paramView;
      localac = (ac)paramView.getTag();
      break;
      label228:
      ac.b(localac).setBackgroundResource(2130838374);
    }
    label241:
    ac.a(localac).setVisibility(0);
    Object localObject = new aa(this, localac, (AttributeFilter)localObject);
    ac.a(localac).setOnClickListener(new ab(this, paramViewGroup, (TimePickerDialog.OnTimeSetListener)localObject));
    if (c.booleanValue()) {
      ac.d(localac).setText(2131166259);
    }
    a(localac);
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */