package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.widget.ListView;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.ui.util.k;

public class b
{
  public static int e = 13377331;
  protected YelpDeal a;
  protected DealPurchase b;
  protected k c;
  protected a d;
  
  protected b(YelpDeal paramYelpDeal, a parama)
  {
    a = paramYelpDeal;
    d = parama;
  }
  
  public static AlertDialog a(Activity paramActivity, YelpDeal paramYelpDeal, boolean paramBoolean, a parama)
  {
    return new b(paramYelpDeal, parama).a(paramActivity, paramBoolean);
  }
  
  private AlertDialog a(Activity paramActivity, boolean paramBoolean)
  {
    c = new k();
    c.a(a, paramBoolean);
    c.notifyDataSetChanged();
    Object localObject = new AlertDialog.Builder(paramActivity);
    ((AlertDialog.Builder)localObject).setTitle(2131165637);
    ((AlertDialog.Builder)localObject).setAdapter(c, new b.1(this));
    localObject = ((AlertDialog.Builder)localObject).create();
    ((AlertDialog)localObject).setOwnerActivity(paramActivity);
    return (AlertDialog)localObject;
  }
  
  public static void a(Dialog paramDialog, YelpDeal paramYelpDeal, boolean paramBoolean)
  {
    paramDialog = (k)((AlertDialog)paramDialog).getListView().getAdapter();
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
  
  public static abstract interface a
  {
    public abstract void a(b paramb);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */