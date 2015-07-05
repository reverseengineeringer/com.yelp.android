package com.yelp.android.ui.activities.businesspage;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.support.v4.view.bo;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.yelp.android.appdata.ao;
import com.yelp.android.b;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.widgets.MessageAlertBox;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public final class t
  extends bo
{
  private final ArrayList<View> a = new ArrayList();
  
  private String a(Context paramContext, int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return null;
    case 0: 
      return paramContext.getString(2131166184);
    case 1: 
      return paramContext.getString(2131165655);
    }
    return paramContext.getString(2131165388);
  }
  
  public void a(Context paramContext)
  {
    paramContext = new MessageAlertBox(paramContext, null, 2130772091);
    a.add(paramContext);
  }
  
  public void a(Context paramContext, Intent paramIntent)
  {
    Object localObject = null;
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772089);
    paramContext = (Context)localObject;
    if (paramIntent != null) {
      paramContext = paramIntent.getStringExtra("confirmation_message");
    }
    localMessageAlertBox.setSubtitle(paramContext);
    a.add(localMessageAlertBox);
  }
  
  @TargetApi(18)
  public void a(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772092);
    Reservation localReservation = paramYelpBusiness.getReservation();
    localMessageAlertBox.setTitle(localReservation.getConfirmationTitle());
    localMessageAlertBox.setSubtitle(localReservation.getConfirmationSubtitle());
    localMessageAlertBox.setOnClickListener(new v(this, paramContext, paramYelpBusiness));
    a.add(localMessageAlertBox);
  }
  
  public void a(Context paramContext, YelpBusiness paramYelpBusiness, String paramString1, String paramString2, boolean paramBoolean)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772093);
    if (!TextUtils.isEmpty(paramString1))
    {
      localMessageAlertBox.setTitle(paramString1);
      localMessageAlertBox.setSubtitle(paramString2);
    }
    if ((paramYelpBusiness.getReservation() != null) || (paramBoolean)) {
      localMessageAlertBox.setOnClickListener(new u(this, paramContext, paramYelpBusiness));
    }
    a.add(localMessageAlertBox);
  }
  
  public void a(Context paramContext, String paramString)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772087);
    localMessageAlertBox.setSubtitle(paramContext.getString(2131165406, new Object[] { paramString }));
    a.add(localMessageAlertBox);
  }
  
  public void b(Context paramContext)
  {
    paramContext = new MessageAlertBox(paramContext, null, 2130772085);
    a.add(paramContext);
  }
  
  public void b(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    List localList = paramYelpBusiness.getCheckedInFriends();
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772090);
    int j = localList.size();
    Object localObject = (User)localList.get(0);
    if (j == 1)
    {
      localMessageAlertBox.setTitle(paramContext.getString(2131165858, new Object[] { ((User)localObject).getNameWithoutPeriod() }));
      localMessageAlertBox.setSubtitle(StringUtils.a(paramContext, StringUtils.Format.LONG, ((User)localObject).getCheckIn().getDateCreated()));
      localMessageAlertBox.a(((User)localObject).getUserPhotoUrl(), 2130837660);
    }
    for (;;)
    {
      localMessageAlertBox.setOnClickListener(new w(this, localList, paramContext, (User)localList.get(0), paramYelpBusiness));
      a.add(localMessageAlertBox);
      return;
      int i;
      if (TextUtils.isEmpty(((User)localObject).getUserPhotoUrl())) {
        i = 1;
      }
      for (;;)
      {
        if (i < localList.size())
        {
          if (!TextUtils.isEmpty(((User)localList.get(i)).getUserPhotoUrl()))
          {
            localList.add(0, localList.get(i));
            localList.remove(i + 1);
          }
        }
        else
        {
          localMessageAlertBox.setTitle(paramContext.getString(2131165868, new Object[] { Integer.valueOf(j) }));
          localMessageAlertBox.a(((User)localList.get(0)).getUserPhotoUrl(), 2130837660);
          localObject = new String[j];
          i = 0;
          while (i < j)
          {
            localObject[i] = ((User)localList.get(i)).getNameWithoutPeriod();
            i += 1;
          }
        }
        i += 1;
      }
      localMessageAlertBox.setSubtitle(TextUtils.join(", ", (Object[])localObject));
    }
  }
  
  public void b(Context paramContext, String paramString)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772088);
    localMessageAlertBox.setOnClickListener(new x(this, paramContext, paramString));
    a.add(localMessageAlertBox);
  }
  
  public void c(Context paramContext)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772094);
    localMessageAlertBox.setTitle(a(paramContext, new Random().nextInt(3)));
    localMessageAlertBox.setSubtitle(paramContext.getString(2131166824));
    a.add(localMessageAlertBox);
  }
  
  public void c(Context paramContext, String paramString)
  {
    MessageAlertBox localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772086);
    localMessageAlertBox.setOnClickListener(new y(this, paramContext, paramString));
    a.add(localMessageAlertBox);
  }
  
  public void d(Context paramContext, String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {}
    MessageAlertBox localMessageAlertBox;
    for (paramContext = new MessageAlertBox(paramContext, null, 2130772096);; paramContext = localMessageAlertBox)
    {
      a.add(paramContext);
      return;
      localMessageAlertBox = new MessageAlertBox(paramContext, null, 2130772095);
      localMessageAlertBox.setOnClickListener(new z(this, paramString, paramContext));
    }
  }
  
  public void destroyItem(ViewGroup paramViewGroup, int paramInt, Object paramObject)
  {
    paramViewGroup.removeView((View)paramObject);
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public float getPageWidth(int paramInt)
  {
    if (a.size() == 1) {
      return 1.0F;
    }
    return 0.9F;
  }
  
  public Object instantiateItem(ViewGroup paramViewGroup, int paramInt)
  {
    View localView = (View)a.get(paramInt);
    paramViewGroup.addView(localView, paramInt);
    return localView;
  }
  
  public boolean isViewFromObject(View paramView, Object paramObject)
  {
    return paramView == paramObject;
  }
  
  public void notifyDataSetChanged()
  {
    int i = 0;
    super.notifyDataSetChanged();
    int m = a.size();
    if (m == 0) {
      return;
    }
    Object localObject = ((View)a.get(0)).getContext().obtainStyledAttributes(null, b.GapSizes);
    int j = ((TypedArray)localObject).getDimensionPixelSize(1, ao.e);
    int k = j / 2;
    ((TypedArray)localObject).recycle();
    if (m == 1)
    {
      ((MessageAlertBox)a.get(0)).a(j, j);
      return;
    }
    label86:
    if (i < a.size())
    {
      localObject = (MessageAlertBox)a.get(i);
      if (i != 0) {
        break label128;
      }
      ((MessageAlertBox)localObject).a(j, k);
    }
    for (;;)
    {
      i += 1;
      break label86;
      break;
      label128:
      if (i == a.size() - 1) {
        ((MessageAlertBox)localObject).a(k, j);
      } else {
        ((MessageAlertBox)localObject).a(k, k);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */