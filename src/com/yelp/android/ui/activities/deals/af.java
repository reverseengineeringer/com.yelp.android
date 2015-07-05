package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.widget.ListView;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.util.s;

public class af
{
  public static int e = 13377331;
  protected YelpDeal a;
  protected DealPurchase b;
  protected s c;
  protected ah d;
  
  protected af(YelpDeal paramYelpDeal, ah paramah)
  {
    a = paramYelpDeal;
    d = paramah;
  }
  
  public static AlertDialog a(Activity paramActivity, YelpDeal paramYelpDeal, boolean paramBoolean, ah paramah)
  {
    return new af(paramYelpDeal, paramah).a(paramActivity, paramBoolean);
  }
  
  private AlertDialog a(Activity paramActivity, boolean paramBoolean)
  {
    c = new s();
    c.a(a, paramBoolean);
    c.notifyDataSetChanged();
    Object localObject = new AlertDialog.Builder(paramActivity);
    ((AlertDialog.Builder)localObject).setTitle(2131165512);
    ((AlertDialog.Builder)localObject).setAdapter(c, new ag(this));
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).setOwnerActivity(paramActivity);
    return (AlertDialog)localObject;
  }
  
  public static void a(Dialog paramDialog, YelpDeal paramYelpDeal, boolean paramBoolean)
  {
    paramDialog = (s)((AlertDialog)paramDialog).getListView().getAdapter();
    paramDialog.a(paramYelpDeal, paramBoolean);
    paramDialog.notifyDataSetChanged();
  }
  
  public YelpDeal a()
  {
    return a;
  }
  
  public DealPurchase b()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.af
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */