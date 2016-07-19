package com.yelp.android.ui.activities.deals;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Pair;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.az;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDeal.a;
import com.yelp.android.services.f;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.w;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;

public class ActivityDealRedemption
  extends YelpActivity
  implements Animation.AnimationListener, c.a
{
  private static String f = "deal";
  private static String g = "purchase";
  ListView a;
  az b;
  View c;
  View d;
  w<String> e = new w()
  {
    public View getView(int paramAnonymousInt, View paramAnonymousView, ViewGroup paramAnonymousViewGroup)
    {
      View localView = paramAnonymousView;
      if (paramAnonymousView == null) {
        localView = LayoutInflater.from(ActivityDealRedemption.this).inflate(2130903386, paramAnonymousViewGroup, false);
      }
      ((TextView)localView.findViewById(2131689711)).setText((CharSequence)getItem(paramAnonymousInt));
      localView.setClickable(false);
      return localView;
    }
  };
  private Button h;
  private ImageView i;
  private YelpDeal j;
  private DealPurchase k;
  
  public static Intent a(Context paramContext, YelpDeal paramYelpDeal, DealPurchase paramDealPurchase)
  {
    paramContext = new Intent(paramContext, ActivityDealRedemption.class);
    paramContext.addFlags(131072);
    paramContext.putExtra(f, paramYelpDeal);
    paramContext.putExtra(g, paramDealPurchase);
    return paramContext;
  }
  
  private Spanned a(int paramInt, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (String str = "<br>";; str = " ") {
      return Html.fromHtml(getString(2131165753, new Object[] { getString(paramInt), str, paramString }));
    }
  }
  
  public static Pair<YelpDeal, DealPurchase> a(Intent paramIntent)
  {
    return Pair.create((YelpDeal)paramIntent.getParcelableExtra(f), (DealPurchase)paramIntent.getParcelableExtra(g));
  }
  
  private void c()
  {
    j = ((YelpDeal)getIntent().getParcelableExtra(f));
    k = ((DealPurchase)getIntent().getParcelableExtra(g));
    e.a(j.z());
    DealPurchase.PurchaseStatus localPurchaseStatus = k.c();
    ((TextView)findViewById(2131689828)).setText(k.k());
    ((TextView)findViewById(2131689918)).setText(j.a(this));
    Object localObject1 = k.a();
    Object localObject2 = k.b();
    boolean bool;
    if (((String)localObject1).compareTo((String)localObject2) == 0)
    {
      bool = true;
      ((TextView)findViewById(2131690766)).setText(a(2131165748, (String)localObject1, bool));
      if (bool) {
        break label403;
      }
      ((TextView)findViewById(2131690873)).setText(a(2131166404, (String)localObject2, bool));
      label169:
      if (j.z().size() <= 0) {
        break label437;
      }
      findViewById(2131690875).setVisibility(0);
      label194:
      TextView localTextView = (TextView)c.findViewById(2131690796);
      localObject2 = k.i();
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = j.t();
      }
      localTextView.setText(Html.fromHtml((String)localObject1));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      if (DealPurchase.PurchaseStatus.REDEEMED != localPurchaseStatus) {
        break label451;
      }
      e();
    }
    for (int m = 2131166764;; m = 2131166427)
    {
      setTitle(getString(m));
      localObject1 = f.a(this, 2131166401, new Date(k.e()));
      if (DealPurchase.PurchaseStatus.USABLE_EXPIRED == k.c())
      {
        localObject2 = (TextView)findViewById(2131689829);
        ((TextView)localObject2).setText(getString(2131165653, new Object[] { localObject1, j.i().a }));
        ((TextView)localObject2).setVisibility(0);
      }
      if (DealPurchase.PurchaseStatus.USABLE_FULLPRICE != localPurchaseStatus) {
        break label462;
      }
      ((TextView)findViewById(2131690874)).setText(Html.fromHtml(getString(2131166396, new Object[] { localObject1 })));
      return;
      bool = false;
      break;
      label403:
      localObject1 = (LinearLayout)findViewById(2131690872);
      ((LinearLayout)localObject1).setWeightSum(2.0F);
      ((LinearLayout)localObject1).setOrientation(0);
      findViewById(2131690873).setVisibility(8);
      break label169;
      label437:
      findViewById(2131690875).setVisibility(8);
      break label194;
      label451:
      f();
    }
    label462:
    ((TextView)findViewById(2131690874)).setVisibility(8);
  }
  
  private void d()
  {
    Intent localIntent = new Intent("com.yelp.android.deal_changed");
    localIntent.putExtra("extra.yelp_deal", j);
    localIntent.putExtra("extra.deal_purchased", k);
    sendBroadcast(localIntent);
  }
  
  private void e()
  {
    i.setVisibility(0);
    h.setBackgroundDrawable(getResources().getDrawable(2130837787));
    h.setText(2131165652);
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        finish();
      }
    });
  }
  
  private void f()
  {
    i.setVisibility(8);
    h.setBackgroundDrawable(getResources().getDrawable(2130837734));
    h.setText(2131166127);
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        AppData.b().k().a(EventIri.DealRedeem, ActivityDealRedemption.a(ActivityDealRedemption.this));
        showDialog(300);
      }
    });
  }
  
  private TreeMap<String, Object> g()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("deal_id", j.x());
    localTreeMap.put("deal_purchase_id", k.l());
    return localTreeMap;
  }
  
  public az a()
  {
    return (az)super.getLastCustomNonConfigurationInstance();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    getIntent().putExtra(f, j);
    k.d();
    d();
    i.setVisibility(0);
    paramApiRequest = AnimationUtils.loadAnimation(this, 2130968603);
    paramApiRequest.setAnimationListener(this);
    setResult(-1, getIntent());
    i.startAnimation(paramApiRequest);
  }
  
  public az b()
  {
    return b;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealRedemption;
  }
  
  public void onAnimationEnd(Animation paramAnimation)
  {
    e();
  }
  
  public void onAnimationRepeat(Animation paramAnimation) {}
  
  public void onAnimationStart(Animation paramAnimation) {}
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903090);
    setResult(0);
    i = ((ImageView)findViewById(2131689762));
    b = a();
    if (b != null) {
      b.a(this);
    }
    d = LayoutInflater.from(this).inflate(2130903513, a, false);
    c = new FrameLayout(this);
    c.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    c = LayoutInflater.from(this).inflate(2130903470, a, false);
    c.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    a = ((ListView)findViewById(2131689815));
    a.addHeaderView(d, null, false);
    a.addFooterView(c, null, false);
    a.setAdapter(e);
    a.setDividerHeight(0);
    a.setItemsCanFocus(true);
    a.setClickable(false);
    h = ((Button)findViewById(2131689831));
    ((TextView)findViewById(2131690875)).setText(getString(2131166662, new Object[] { getString(2131165755) }));
    c();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 300) {
      new AlertDialog.Builder(this).setTitle(2131166128).setMessage(2131166426).setNegativeButton(2131166925, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AppData.b().k().a(EventIri.DealRedeemCancelled, ActivityDealRedemption.a(ActivityDealRedemption.this));
        }
      }).setPositiveButton(2131166130, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          AppData.b().k().a(EventIri.DealRedeemConfirmed, ActivityDealRedemption.a(ActivityDealRedemption.this));
          b = new az(ActivityDealRedemption.b(ActivityDealRedemption.this).l(), ActivityDealRedemption.this);
          b.f(new Void[0]);
        }
      }).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755035, paramMenu);
    Intent localIntent = ActivityBusinessPage.b(this, j.r());
    localIntent.addFlags(536870912);
    paramMenu.findItem(2131690669).setIntent(localIntent);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    as.a(paramYelpException.getMessage(this), 0);
  }
  
  protected void onNewIntent(Intent paramIntent)
  {
    setIntent(paramIntent);
    c();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityDealRedemption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */