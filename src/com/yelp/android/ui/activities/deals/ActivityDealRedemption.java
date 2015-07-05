package com.yelp.android.ui.activities.deals;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
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
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bi;
import com.yelp.android.av.i;
import com.yelp.android.serializable.DealPurchase;
import com.yelp.android.serializable.DealPurchase.PurchaseStatus;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.ej;
import com.yelp.android.services.r;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cr;
import java.util.Date;
import java.util.List;
import java.util.TreeMap;

public class ActivityDealRedemption
  extends YelpActivity
  implements Animation.AnimationListener, i
{
  private static String f = "deal";
  private static String g = "purchase";
  ListView a;
  bi b;
  View c;
  View d;
  au<String> e = new l(this);
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
      return Html.fromHtml(getString(2131165678, new Object[] { getString(paramInt), str, paramString }));
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
    e.a(j.getDescription());
    DealPurchase.PurchaseStatus localPurchaseStatus = k.getStatus();
    ((TextView)findViewById(2131493157)).setText(k.getRedemptionCode());
    ((TextView)findViewById(2131493261)).setText(j.getDealTitleWithBizName(this));
    Object localObject1 = k.getCustomerName();
    Object localObject2 = k.getPurchasedByName();
    boolean bool;
    if (((String)localObject1).compareTo((String)localObject2) == 0)
    {
      bool = true;
      ((TextView)findViewById(2131493926)).setText(a(2131165673, (String)localObject1, bool));
      if (bool) {
        break label403;
      }
      ((TextView)findViewById(2131494002)).setText(a(2131166379, (String)localObject2, bool));
      label169:
      if (j.getDescription().size() <= 0) {
        break label437;
      }
      findViewById(2131494004).setVisibility(0);
      label194:
      TextView localTextView = (TextView)c.findViewById(2131493954);
      localObject2 = k.getTerms();
      localObject1 = localObject2;
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        localObject1 = j.getTerms();
      }
      localTextView.setText(Html.fromHtml((String)localObject1));
      localTextView.setMovementMethod(LinkMovementMethod.getInstance());
      if (DealPurchase.PurchaseStatus.REDEEMED != localPurchaseStatus) {
        break label451;
      }
      e();
    }
    for (int m = 2131166800;; m = 2131166400)
    {
      setTitle(getString(m));
      localObject1 = r.a(this, 2131166376, new Date(k.getExpirationTimeMillis()));
      if (DealPurchase.PurchaseStatus.USABLE_EXPIRED == k.getStatus())
      {
        localObject2 = (TextView)findViewById(2131493158);
        ((TextView)localObject2).setText(getString(2131165522, new Object[] { localObject1, j.getDisplayPrices().a }));
        ((TextView)localObject2).setVisibility(0);
      }
      if (DealPurchase.PurchaseStatus.USABLE_FULLPRICE != localPurchaseStatus) {
        break label462;
      }
      ((TextView)findViewById(2131494003)).setText(Html.fromHtml(getString(2131166371, new Object[] { localObject1 })));
      return;
      bool = false;
      break;
      label403:
      localObject1 = (LinearLayout)findViewById(2131494001);
      ((LinearLayout)localObject1).setWeightSum(2.0F);
      ((LinearLayout)localObject1).setOrientation(0);
      findViewById(2131494002).setVisibility(8);
      break label169;
      label437:
      findViewById(2131494004).setVisibility(8);
      break label194;
      label451:
      f();
    }
    label462:
    ((TextView)findViewById(2131494003)).setVisibility(8);
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
    h.setBackgroundDrawable(getResources().getDrawable(2130837719));
    h.setText(2131165521);
    h.setOnClickListener(new m(this));
  }
  
  private void f()
  {
    i.setVisibility(8);
    h.setBackgroundDrawable(getResources().getDrawable(2130837680));
    h.setText(2131166067);
    h.setOnClickListener(new n(this));
  }
  
  private TreeMap<String, Object> g()
  {
    TreeMap localTreeMap = new TreeMap();
    localTreeMap.put("deal_id", j.getId());
    localTreeMap.put("deal_purchase_id", k.getId());
    return localTreeMap;
  }
  
  public bi a()
  {
    return (bi)super.getLastCustomNonConfigurationInstance();
  }
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    getIntent().putExtra(f, j);
    k.setRedeemed();
    d();
    i.setVisibility(0);
    paramApiRequest = AnimationUtils.loadAnimation(this, 2130968597);
    paramApiRequest.setAnimationListener(this);
    setResult(-1, getIntent());
    i.startAnimation(paramApiRequest);
  }
  
  public bi b()
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
    setContentView(2130903080);
    setResult(0);
    i = ((ImageView)findViewById(2131493078));
    b = a();
    if (b != null) {
      b.setCallback(this);
    }
    d = LayoutInflater.from(this).inflate(2130903404, a, false);
    c = new FrameLayout(this);
    c.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    c = LayoutInflater.from(this).inflate(2130903371, a, false);
    c.setLayoutParams(new AbsListView.LayoutParams(-1, -2));
    a = ((ListView)findViewById(2131493143));
    a.addHeaderView(d, null, false);
    a.addFooterView(c, null, false);
    a.setAdapter(e);
    a.setDividerHeight(0);
    a.setItemsCanFocus(true);
    a.setClickable(false);
    h = ((Button)findViewById(2131493160));
    ((TextView)findViewById(2131494004)).setText(getString(2131166686, new Object[] { getString(2131165680) }));
    c();
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    if (paramInt == 300) {
      return new AlertDialog.Builder(this).setTitle(2131166068).setMessage(2131166399).setNegativeButton(2131165456, new k(this)).setPositiveButton(2131166070, new j(this)).create();
    }
    return super.onCreateDialog(paramInt);
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755031, paramMenu);
    Intent localIntent = ActivityBusinessPage.a(this, j.getCanonicalBusinessId());
    localIntent.addFlags(536870912);
    paramMenu.findItem(2131493833).setIntent(localIntent);
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    cr.a(paramYelpException.getMessage(this), 0);
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