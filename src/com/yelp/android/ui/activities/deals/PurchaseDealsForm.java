package com.yelp.android.ui.activities.deals;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.bh;
import com.yelp.android.appdata.webrequests.ch;
import com.yelp.android.appdata.webrequests.ea;
import com.yelp.android.av.i;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.account.CreditCardSelector;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.h;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.af;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;

public class PurchaseDealsForm
  extends YelpActivity
{
  public String a;
  private View b;
  private View c;
  private ButtonWithIcon d;
  private ViewGroup e;
  private CalculatedPriceView f;
  private com.yelp.android.appdata.webrequests.cp g;
  private ea h;
  private ch i;
  private YelpBusiness j;
  private YelpDeal k;
  private YelpDealOption l;
  private ArrayList<PaymentMethod> m;
  private LinkedHashMap<GiftRecipient, be> n;
  private ad o;
  private String p;
  private boolean q;
  private final i r = new ak(this);
  private final com.yelp.android.appdata.webrequests.m<ArrayList<PaymentMethod>> s = new am(this);
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, PurchaseDealsForm.class);
    localIntent.putExtra("BUSINESS.xtra", paramYelpBusiness);
    localIntent.putExtra("DEAL.xtra", paramYelpDeal);
    localIntent.putExtra("OPTION.xtra", paramInt);
    return ActivityLogin.a(paramContext, 2131166051, localIntent);
  }
  
  private be a(int paramInt, GiftRecipient paramGiftRecipient)
  {
    if (paramGiftRecipient == null) {}
    for (be localbe = new be(this);; localbe = new be(this, paramGiftRecipient))
    {
      n.put(paramGiftRecipient, localbe);
      localbe.setQuantityListener(new ay(this));
      localbe.setQuantity(paramInt);
      localbe.setPadding(d.getPaddingLeft(), d.getPaddingTop(), d.getPaddingRight(), d.getPaddingBottom());
      e.addView(localbe, d.getLayoutParams());
      return localbe;
    }
  }
  
  private void a()
  {
    q = true;
    if (!h()) {
      return;
    }
    int i1 = f.getQuantity();
    Object localObject = new ArrayList();
    Iterator localIterator = n.entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      if (localEntry.getKey() != null) {
        ((ArrayList)localObject).add(Pair.create(localEntry.getKey(), Integer.valueOf(((be)localEntry.getValue()).getQuantity())));
      }
    }
    localObject = new bh(i1, p, j, k, l, (ArrayList)localObject, (PaymentMethod)m.get(0), new bd(this, this));
    ((bh)localObject).execute(new Void[0]);
    getHelper().a((ApiRequest)localObject);
  }
  
  private void a(GiftRecipient paramGiftRecipient)
  {
    paramGiftRecipient = (be)n.remove(paramGiftRecipient);
    paramGiftRecipient.setQuantity(0);
    if (paramGiftRecipient != null)
    {
      int i1 = paramGiftRecipient.getQuantity();
      e.removeView(paramGiftRecipient);
      f.setQuantity(f.getQuantity() - i1);
    }
    if (n.size() <= 1)
    {
      paramGiftRecipient = (be)n.remove(null);
      e.removeView(paramGiftRecipient);
      f.setOnClickListener(null);
      f.setVisibility(8);
      f = ((CalculatedPriceView)findViewById(2131493264));
      f.setQuantityListener(new az(this));
      f.setQuantity(paramGiftRecipient.getQuantity());
      f.setVisibility(0);
      d.getTextView().setText(2131165888);
    }
  }
  
  private void a(GiftRecipient paramGiftRecipient, PendingIntent paramPendingIntent, int paramInt)
  {
    if (n.isEmpty())
    {
      int i1 = f.getQuantity();
      f.setVisibility(8);
      a(i1, null);
      f.setQuantityListener(null);
      CalculatedPriceView localCalculatedPriceView = (CalculatedPriceView)findViewById(2131493267, 2131493266);
      localCalculatedPriceView.setVisibility(0);
      localCalculatedPriceView.setEnabled(false);
      localCalculatedPriceView.a(l.getDecimalPrice(k.getCurrency()), k.getCurrency());
      localCalculatedPriceView.setQuantity(i1);
      d.getTextView().setText(2131165889);
      f = localCalculatedPriceView;
    }
    if ((be)n.get(paramGiftRecipient) == null) {
      a(paramInt, paramGiftRecipient).setOnClickListener(new ax(this, paramPendingIntent));
    }
  }
  
  private void a(PaymentMethod paramPaymentMethod)
  {
    Object localObject = c;
    if (m == null) {}
    WebImageView localWebImageView;
    for (int i1 = 8;; i1 = 0)
    {
      ((View)localObject).setVisibility(i1);
      localObject = (TextView)c.findViewById(2131493145);
      localWebImageView = (WebImageView)c.findViewById(2131492992);
      if (paramPaymentMethod != null) {
        break;
      }
      ((TextView)localObject).setText(2131165336);
      localWebImageView.setImageResource(2130838118);
      c.setOnClickListener(new ao(this));
      return;
    }
    ((TextView)localObject).setText(paramPaymentMethod.getDescription());
    if (!com.yelp.android.ui.util.cp.a(this, localWebImageView, paramPaymentMethod.getImagePath())) {
      localWebImageView.setImageUrl(paramPaymentMethod.getImageUrl(), 2130837736);
    }
    c.setOnClickListener(new ap(this));
  }
  
  private void a(List<GiftRecipient> paramList, int[] paramArrayOfInt)
  {
    int i2 = 0;
    setContentView(2130903106);
    b = findViewById(2131493260);
    f = ((CalculatedPriceView)findViewById(2131493264));
    f.a(l.getDecimalPrice(k.getCurrency()), k.getCurrency());
    f.setQuantityListener(new az(this));
    e = ((ViewGroup)findViewById(2131493263));
    d = ((ButtonWithIcon)findViewById(2131493265));
    c = findViewById(2131493268);
    f.setQuantity(paramArrayOfInt[0]);
    int i3 = paramList.size();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject1 = (GiftRecipient)paramList.get(i1);
      if (localObject1 != null) {
        a((GiftRecipient)localObject1, createPendingResult(1035, AddGiftRecipient.a(this, (GiftRecipient)localObject1), 0), paramArrayOfInt[i1]);
      }
      i1 += 1;
    }
    paramList = (TextView)findViewById(2131493261);
    paramArrayOfInt = (TextView)findViewById(2131493262);
    paramList.setText(l.getTitle());
    paramArrayOfInt.setText(k.getBusinessName());
    findViewById(2131493034).setOnClickListener(new aw(this));
    paramList = (TextView)findViewById(2131493269);
    paramArrayOfInt = StringUtils.a(this, 2131165454, new Object[0]);
    Object localObject1 = (af[])paramArrayOfInt.getSpans(0, paramArrayOfInt.length(), af.class);
    SpannableString localSpannableString = new SpannableString(paramArrayOfInt);
    i3 = localObject1.length;
    i1 = i2;
    while (i1 < i3)
    {
      Object localObject2 = localObject1[i1];
      i2 = paramArrayOfInt.getSpanStart(localObject2);
      int i4 = paramArrayOfInt.getSpanEnd(localObject2);
      int i5 = paramArrayOfInt.getSpanFlags(localObject2);
      localSpannableString.setSpan(new AnalyticsSpan(EventIri.OpenUrl, k.getTosUrl()), i2, i4, i5);
      i1 += 1;
    }
    paramList.setText(localSpannableString);
    paramList.setMovementMethod(LinkMovementMethod.getInstance());
  }
  
  private boolean a(YelpException paramYelpException)
  {
    if ((paramYelpException instanceof ApiException))
    {
      paramYelpException = (ApiException)paramYelpException;
      if (paramYelpException.getResultCode() == 1302)
      {
        a = paramYelpException.getMessage(this);
        showDialog(307);
        return true;
      }
    }
    return false;
  }
  
  private void b()
  {
    c();
    showLoadingDialog(g, new com.yelp.android.ui.activities.support.m(this));
  }
  
  private void c()
  {
    bc localbc = new bc(this);
    if (g == null) {
      g = new com.yelp.android.appdata.webrequests.cp(k, localbc);
    }
    g.executeRepeatable(new Void[0]);
    g.setCallback(localbc);
  }
  
  private void d()
  {
    Pair localPair = g();
    int i1 = ((Integer)second).intValue();
    int i2 = ((Integer)first).intValue();
    if (!o.b(i1))
    {
      showDialog(304);
      return;
    }
    if (!o.c(i2))
    {
      showDialog(303);
      return;
    }
    if (!o.d(i2 + i1))
    {
      showDialog(302);
      return;
    }
    i1 = ((Integer)first).intValue();
    if (((Integer)second).intValue() + i1 <= 0)
    {
      showDialog(306);
      return;
    }
    if (m.isEmpty())
    {
      showDialog(305);
      return;
    }
    showDialog(300);
  }
  
  private void e()
  {
    if ((i == null) || (!i.isFetching()))
    {
      enableLoading();
      i = new ch("add_cc", r);
      i.execute(new Void[0]);
    }
  }
  
  private void f()
  {
    Intent localIntent = new Intent("com.yelp.android.deal_changed");
    localIntent.putExtra("extra.yelp_deal", k);
    sendBroadcast(localIntent);
  }
  
  private Pair<Integer, Integer> g()
  {
    Iterator localIterator = n.entrySet().iterator();
    int i2 = 0;
    int i1 = -1;
    if (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      i3 = ((be)localEntry.getValue()).getQuantity();
      if (localEntry.getKey() == null) {
        i1 = i3;
      }
      for (;;)
      {
        break;
        i2 += i3;
      }
    }
    int i3 = i1;
    if (i1 < 0) {
      i3 = f.getQuantity();
    }
    return Pair.create(Integer.valueOf(i3), Integer.valueOf(i2));
  }
  
  private boolean h()
  {
    return p != null;
  }
  
  private void i()
  {
    p = null;
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealPurchase;
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    paramb = new TreeMap();
    paramb.put("deal_id", k.getId());
    paramb.put("deal_option_id", l.getId());
    return paramb;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    default: 
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              do
              {
                return;
              } while (paramInt2 != -1);
              localObject = CreditCardSelector.a(paramIntent);
              m = ((ArrayList)second);
              if (CreditCardSelector.b(paramIntent))
              {
                e();
                return;
              }
              a((PaymentMethod)first);
              return;
            } while (paramInt2 != -1);
            paramIntent = (GiftRecipient)asecond;
          } while (paramIntent == null);
          a(paramIntent, createPendingResult(1035, AddGiftRecipient.a(this, paramIntent), 0), 1);
          return;
        } while (paramInt2 != -1);
        startActivityForResult(paramIntent, 1034);
        return;
      } while (paramInt2 != -1);
      paramIntent = AddGiftRecipient.a(paramIntent);
      paramInt1 = ((be)n.get(second)).getQuantity();
      a((GiftRecipient)second);
    } while (!((Boolean)first).booleanValue());
    Object localObject = createPendingResult(1035, AddGiftRecipient.a(this, (GiftRecipient)second), 134217728);
    a((GiftRecipient)second, (PendingIntent)localObject, paramInt1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j = ((YelpBusiness)getIntent().getParcelableExtra("BUSINESS.xtra"));
    k = ((YelpDeal)getIntent().getParcelableExtra("DEAL.xtra"));
    l = ((YelpDealOption)k.getOptions().get(getIntent().getIntExtra("OPTION.xtra", 0)));
    o = new ad(k, l);
    n = new LinkedHashMap();
    Object localObject1 = Collections.emptyList();
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = 1;
    Object localObject2 = arrayOfInt;
    if (paramBundle != null)
    {
      localObject2 = paramBundle.getParcelableArrayList("GIFTS.xtra");
      localObject1 = localObject2;
      if (localObject2 == null) {
        localObject1 = Collections.emptyList();
      }
      if (((List)localObject1).isEmpty()) {
        break label202;
      }
      arrayOfInt = paramBundle.getIntArray("QUANTITY.xtra");
    }
    for (;;)
    {
      m = paramBundle.getParcelableArrayList("CARDS.xtra");
      p = paramBundle.getString("NONCE.xtra");
      a = paramBundle.getString("SaveErrorMessage");
      localObject2 = arrayOfInt;
      a((List)localObject1, (int[])localObject2);
      a(null);
      return;
      label202:
      arrayOfInt[0] = paramBundle.getInt("QUANTITY.xtra");
    }
  }
  
  protected Dialog onCreateDialog(int paramInt)
  {
    String str2;
    String str1;
    switch (paramInt)
    {
    default: 
      return super.onCreateDialog(paramInt);
    case 301: 
      return com.yelp.android.ui.util.cp.a(this, 2131166895, 2131165890).setIcon(2130837624).create();
    case 302: 
    case 303: 
      if (paramInt == 302) {}
      for (paramInt = 2131623972;; paramInt = 2131623973)
      {
        int i1 = o.a();
        str2 = getString(2131166334);
        str1 = getResources().getQuantityString(paramInt, i1, new Object[] { Integer.valueOf(i1) });
        if (i1 == 0)
        {
          str2 = getString(2131166601);
          str1 = getString(2131166197);
        }
        return com.yelp.android.ui.util.cp.c(this, str2, str1).setIcon(2130837624).setPositiveButton(17039379, new aj(this)).setIcon(2130837624).create();
      }
    case 304: 
      paramInt = o.a(((Integer)gsecond).intValue());
      str2 = getString(2131166334);
      str1 = getResources().getQuantityString(2131623974, paramInt, new Object[] { Integer.valueOf(paramInt) });
      if (paramInt == 0)
      {
        str2 = getString(2131166601);
        str1 = getString(2131166196);
      }
      return com.yelp.android.ui.util.cp.c(this, str2, str1).setIcon(2130837624).create();
    case 305: 
      return com.yelp.android.ui.util.cp.a(this, 2131166895, 2131166377).setIcon(2130837624).create();
    case 306: 
      return com.yelp.android.ui.util.cp.a(this, 2131166334, 2131166920).setIcon(2130837624).create();
    case 309: 
      return com.yelp.android.ui.util.cp.c(this, getString(2131165763), a).setIcon(2130837624).setOnCancelListener(new aq(this)).create();
    case 300: 
      return com.yelp.android.ui.util.cp.a(this, 2131166895, 2131166378).setIcon(2130837624).setPositiveButton(2131166374, new as(this)).setNegativeButton(2131166185, new ar(this)).create();
    case 307: 
      return com.yelp.android.ui.util.cp.c(this, getText(2131166895), a).setIcon(2130837624).setCancelable(false).setPositiveButton(2131166235, new at(this)).create();
    }
    return com.yelp.android.ui.util.cp.c(this, getString(2131165763), a).setIcon(2130837624).setPositiveButton(2131165336, new av(this)).setNegativeButton(2131165456, new au(this)).create();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (i != null)
    {
      i.setCallback(null);
      i.cancel(true);
    }
    if (h != null)
    {
      h.setCallback(null);
      h.cancel(true);
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    if (m == null) {
      b();
    }
    while (m.isEmpty()) {
      return;
    }
    a((PaymentMethod)m.get(0));
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("CARDS.xtra", m);
    ArrayList localArrayList = new ArrayList(n.size());
    int[] arrayOfInt = new int[n.size()];
    Iterator localIterator = n.entrySet().iterator();
    int i1 = 0;
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localArrayList.add(localEntry.getKey());
      arrayOfInt[i1] = ((be)localEntry.getValue()).getQuantity();
      i1 += 1;
    }
    if (!localArrayList.isEmpty())
    {
      paramBundle.putParcelableArrayList("GIFTS.xtra", localArrayList);
      paramBundle.putIntArray("QUANTITY.xtra", arrayOfInt);
    }
    for (;;)
    {
      if (!TextUtils.isEmpty(a)) {
        paramBundle.putString("SaveErrorMessage", a);
      }
      paramBundle.putString("NONCE.xtra", p);
      return;
      paramBundle.putInt("QUANTITY.xtra", f.getQuantity());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */