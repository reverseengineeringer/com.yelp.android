package com.yelp.android.ui.activities.deals;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.PendingIntent;
import android.app.PendingIntent.CanceledException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.util.Pair;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiException;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.ay;
import com.yelp.android.appdata.webrequests.bz;
import com.yelp.android.appdata.webrequests.cf;
import com.yelp.android.appdata.webrequests.cf.a;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.serializable.PaymentMethod;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.android.serializable.YelpDealOption;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.account.CreditCardSelector;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b;
import com.yelp.android.ui.activities.support.b.c;
import com.yelp.android.ui.panels.ButtonWithIcon;
import com.yelp.android.ui.panels.PanelError.a;
import com.yelp.android.ui.util.AnalyticsSpan;
import com.yelp.android.ui.util.ar;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.widgets.QuantityDropDownView;
import com.yelp.android.ui.widgets.QuantityDropDownView.a;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.ErrorType;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.b.a;
import java.util.ArrayList;
import java.util.Collection;
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
  private cf g;
  private dc h;
  private bz i;
  private YelpBusiness j;
  private YelpDeal k;
  private YelpDealOption l;
  private ArrayList<PaymentMethod> m;
  private LinkedHashMap<GiftRecipient, d> n;
  private a o;
  private String p;
  private boolean q;
  private final c.a r = new c.a()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, Void paramAnonymousVoid)
    {
      if ((PurchaseDealsForm.i(PurchaseDealsForm.this) == null) || (!PurchaseDealsForm.i(PurchaseDealsForm.this).u()))
      {
        enableLoading();
        PurchaseDealsForm.a(PurchaseDealsForm.this, new dc(PurchaseDealsForm.j(PurchaseDealsForm.this)));
        PurchaseDealsForm.i(PurchaseDealsForm.this).f(new Void[0]);
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      PurchaseDealsForm.k(PurchaseDealsForm.this).setVisibility(8);
      paramAnonymousApiRequest = ErrorType.getTypeFromException(paramAnonymousYelpException);
      populateError(paramAnonymousApiRequest, new PanelError.a()
      {
        public void q_()
        {
          PurchaseDealsForm.l(PurchaseDealsForm.this);
        }
      });
    }
  };
  private final ApiRequest.b<ArrayList<PaymentMethod>> s = new ApiRequest.b()
  {
    public void a(ApiRequest<?, ?, ?> paramAnonymousApiRequest, ArrayList<PaymentMethod> paramAnonymousArrayList)
    {
      PurchaseDealsForm.k(PurchaseDealsForm.this).setVisibility(0);
      disableLoading();
      clearError();
      Iterator localIterator = paramAnonymousArrayList.iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        paramAnonymousApiRequest = (PaymentMethod)localIterator.next();
      } while (PurchaseDealsForm.m(PurchaseDealsForm.this).contains(paramAnonymousApiRequest));
      for (;;)
      {
        PurchaseDealsForm.a(PurchaseDealsForm.this, paramAnonymousArrayList);
        if (paramAnonymousApiRequest != null)
        {
          PurchaseDealsForm.m(PurchaseDealsForm.this).remove(paramAnonymousApiRequest);
          PurchaseDealsForm.m(PurchaseDealsForm.this).add(0, paramAnonymousApiRequest);
          PurchaseDealsForm.a(PurchaseDealsForm.this, paramAnonymousApiRequest);
        }
        return;
        paramAnonymousApiRequest = null;
      }
    }
    
    public void onError(ApiRequest<?, ?, ?> paramAnonymousApiRequest, YelpException paramAnonymousYelpException)
    {
      PurchaseDealsForm.k(PurchaseDealsForm.this).setVisibility(8);
      paramAnonymousApiRequest = ErrorType.getTypeFromException(paramAnonymousYelpException);
      populateError(paramAnonymousApiRequest, new PanelError.a()
      {
        public void q_()
        {
          PurchaseDealsForm.l(PurchaseDealsForm.this);
        }
      });
    }
  };
  
  public static final Intent a(Context paramContext, YelpBusiness paramYelpBusiness, YelpDeal paramYelpDeal, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, PurchaseDealsForm.class);
    localIntent.putExtra("BUSINESS.xtra", paramYelpBusiness);
    localIntent.putExtra("DEAL.xtra", paramYelpDeal);
    localIntent.putExtra("OPTION.xtra", paramInt);
    return ActivityLogin.a(paramContext, 2131166111, localIntent);
  }
  
  private d a(int paramInt, GiftRecipient paramGiftRecipient)
  {
    if (paramGiftRecipient == null) {}
    for (d locald = new d(this);; locald = new d(this, paramGiftRecipient))
    {
      n.put(paramGiftRecipient, locald);
      locald.setQuantityListener(new a(this));
      locald.setQuantity(paramInt);
      locald.setPadding(d.getPaddingLeft(), d.getPaddingTop(), d.getPaddingRight(), d.getPaddingBottom());
      e.addView(locald, d.getLayoutParams());
      return locald;
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
        ((ArrayList)localObject).add(Pair.create(localEntry.getKey(), Integer.valueOf(((d)localEntry.getValue()).getQuantity())));
      }
    }
    localObject = new ay(i1, p, j, k, l, (ArrayList)localObject, (PaymentMethod)m.get(0), new d(this));
    ((ay)localObject).f(new Void[0]);
    getHelper().a((ApiRequest)localObject);
  }
  
  private void a(GiftRecipient paramGiftRecipient)
  {
    paramGiftRecipient = (d)n.remove(paramGiftRecipient);
    if (paramGiftRecipient != null)
    {
      paramGiftRecipient.setQuantity(0);
      int i1 = paramGiftRecipient.getQuantity();
      e.removeView(paramGiftRecipient);
      f.setQuantity(f.getQuantity() - i1);
    }
    if (n.size() <= 1)
    {
      paramGiftRecipient = (d)n.remove(null);
      e.removeView(paramGiftRecipient);
      f.setOnClickListener(null);
      f.setVisibility(8);
      f = ((CalculatedPriceView)findViewById(2131689921));
      f.setQuantityListener(new b(this));
      f.setQuantity(paramGiftRecipient.getQuantity());
      f.setVisibility(0);
      d.getTextView().setText(2131165965);
    }
  }
  
  private void a(GiftRecipient paramGiftRecipient, final PendingIntent paramPendingIntent, int paramInt)
  {
    if (n.isEmpty())
    {
      int i1 = f.getQuantity();
      f.setVisibility(8);
      a(i1, null);
      f.setQuantityListener(null);
      CalculatedPriceView localCalculatedPriceView = (CalculatedPriceView)findViewById(2131689924, 2131689923);
      localCalculatedPriceView.setVisibility(0);
      localCalculatedPriceView.setEnabled(false);
      localCalculatedPriceView.a(l.a(k.g()), k.g());
      localCalculatedPriceView.setQuantity(i1);
      d.getTextView().setText(2131165966);
      f = localCalculatedPriceView;
    }
    if ((d)n.get(paramGiftRecipient) == null) {
      a(paramInt, paramGiftRecipient).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          try
          {
            paramPendingIntent.send(-1);
            return;
          }
          catch (PendingIntent.CanceledException paramAnonymousView) {}
        }
      });
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
      localObject = (TextView)c.findViewById(2131689711);
      localWebImageView = (WebImageView)c.findViewById(2131689637);
      if (paramPaymentMethod != null) {
        break;
      }
      ((TextView)localObject).setText(2131165462);
      localWebImageView.setImageResource(2130838323);
      c.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          startActivityForResult(CreditCardSelector.a(PurchaseDealsForm.this), 1040);
        }
      });
      return;
    }
    ((TextView)localObject).setText(paramPaymentMethod.c());
    if (!ar.a(this, localWebImageView, paramPaymentMethod.a())) {
      localWebImageView.setImageUrl(paramPaymentMethod.b(), 2130837813);
    }
    c.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = CreditCardSelector.a(paramAnonymousView.getContext(), PurchaseDealsForm.m(PurchaseDealsForm.this));
        startActivityForResult(paramAnonymousView, 1040);
      }
    });
  }
  
  private void a(List<GiftRecipient> paramList, int[] paramArrayOfInt)
  {
    int i2 = 0;
    setContentView(2130903117);
    b = findViewById(2131689917);
    f = ((CalculatedPriceView)findViewById(2131689921));
    f.a(l.a(k.g()), k.g());
    f.setQuantityListener(new b(this));
    e = ((ViewGroup)findViewById(2131689920));
    d = ((ButtonWithIcon)findViewById(2131689922));
    c = findViewById(2131689925);
    f.setQuantity(paramArrayOfInt[0]);
    int i3 = paramList.size();
    int i1 = 0;
    while (i1 < i3)
    {
      localObject1 = (GiftRecipient)paramList.get(i1);
      if (localObject1 != null) {
        a((GiftRecipient)localObject1, createPendingResult(1039, AddGiftRecipient.a(this, (GiftRecipient)localObject1), 0), paramArrayOfInt[i1]);
      }
      i1 += 1;
    }
    paramList = (TextView)findViewById(2131689918);
    paramArrayOfInt = (TextView)findViewById(2131689919);
    paramList.setText(l.g());
    paramArrayOfInt.setText(k.u());
    findViewById(2131689697).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PurchaseDealsForm.d(PurchaseDealsForm.this);
      }
    });
    paramList = (TextView)findViewById(2131689926);
    paramArrayOfInt = StringUtils.a(this, 2131165580, new Object[0]);
    Object localObject1 = (StringUtils.b.a[])paramArrayOfInt.getSpans(0, paramArrayOfInt.length(), StringUtils.b.a.class);
    SpannableString localSpannableString = new SpannableString(paramArrayOfInt);
    i3 = localObject1.length;
    i1 = i2;
    while (i1 < i3)
    {
      Object localObject2 = localObject1[i1];
      i2 = paramArrayOfInt.getSpanStart(localObject2);
      int i4 = paramArrayOfInt.getSpanEnd(localObject2);
      int i5 = paramArrayOfInt.getSpanFlags(localObject2);
      localSpannableString.setSpan(new AnalyticsSpan(EventIri.OpenUrl, k.s()), i2, i4, i5);
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
    showLoadingDialog(g, new b.c(this));
  }
  
  private void c()
  {
    c localc = new c(this);
    if (g == null) {
      g = new cf(k, localc);
    }
    g.g(new Void[0]);
    g.a(localc);
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
    if ((i == null) || (!i.u()))
    {
      enableLoading();
      i = new bz("add_cc", r);
      i.f(new Void[0]);
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
      i3 = ((d)localEntry.getValue()).getQuantity();
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
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.a parama)
  {
    parama = new TreeMap();
    parama.put("deal_id", k.x());
    parama.put("deal_option_id", l.e());
    return parama;
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
          a(paramIntent, createPendingResult(1039, AddGiftRecipient.a(this, paramIntent), 0), 1);
          return;
        } while (paramInt2 != -1);
        startActivityForResult(paramIntent, 1038);
        return;
      } while (paramInt2 != -1);
      paramIntent = AddGiftRecipient.a(paramIntent);
      paramInt1 = ((d)n.get(second)).getQuantity();
      a((GiftRecipient)second);
    } while (!((Boolean)first).booleanValue());
    Object localObject = createPendingResult(1039, AddGiftRecipient.a(this, (GiftRecipient)second), 134217728);
    a((GiftRecipient)second, (PendingIntent)localObject, paramInt1);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j = ((YelpBusiness)getIntent().getParcelableExtra("BUSINESS.xtra"));
    k = ((YelpDeal)getIntent().getParcelableExtra("DEAL.xtra"));
    l = ((YelpDealOption)k.y().get(getIntent().getIntExtra("OPTION.xtra", 0)));
    o = new a(k, l);
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
      return ar.a(this, 2131166847, 2131165967).setIcon(2130837646).create();
    case 302: 
    case 303: 
      if (paramInt == 302) {}
      for (paramInt = 2131230759;; paramInt = 2131230760)
      {
        int i1 = o.a();
        str2 = getString(2131166354);
        str1 = getResources().getQuantityString(paramInt, i1, new Object[] { Integer.valueOf(i1) });
        if (i1 == 0)
        {
          str2 = getString(2131166610);
          str1 = getString(2131166251);
        }
        ar.c(this, str2, str1).setIcon(2130837646).setPositiveButton(17039379, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            PurchaseDealsForm.a(PurchaseDealsForm.this).requestFocusFromTouch();
          }
        }).setIcon(2130837646).create();
      }
    case 304: 
      paramInt = o.a(((Integer)gsecond).intValue());
      str2 = getString(2131166354);
      str1 = getResources().getQuantityString(2131230761, paramInt, new Object[] { Integer.valueOf(paramInt) });
      if (paramInt == 0)
      {
        str2 = getString(2131166610);
        str1 = getString(2131166250);
      }
      return ar.c(this, str2, str1).setIcon(2130837646).create();
    case 305: 
      return ar.a(this, 2131166847, 2131166402).setIcon(2130837646).create();
    case 306: 
      return ar.a(this, 2131166354, 2131166871).setIcon(2130837646).create();
    case 309: 
      ar.c(this, getString(2131165847), a).setIcon(2130837646).setOnCancelListener(new DialogInterface.OnCancelListener()
      {
        public void onCancel(DialogInterface paramAnonymousDialogInterface)
        {
          a = null;
        }
      }).create();
    case 300: 
      ar.a(this, 2131166847, 2131166403).setIcon(2130837646).setPositiveButton(2131166399, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          PurchaseDealsForm.b(PurchaseDealsForm.this);
        }
      }).setNegativeButton(2131166235, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          paramAnonymousDialogInterface.dismiss();
        }
      }).create();
    case 307: 
      ar.c(this, getText(2131166847), a).setIcon(2130837646).setCancelable(false).setPositiveButton(2131166990, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          a = null;
          paramAnonymousDialogInterface = PurchaseDealsForm.this;
          Intent localIntent = ActivityDealDetail.a(paramAnonymousDialogInterface, PurchaseDealsForm.c(PurchaseDealsForm.this).x());
          localIntent.addFlags(67108864);
          paramAnonymousDialogInterface.startActivity(localIntent);
          paramAnonymousDialogInterface.finish();
        }
      }).create();
    }
    ar.c(this, getString(2131165847), a).setIcon(2130837646).setPositiveButton(2131165462, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        a = null;
        paramAnonymousDialogInterface = CreditCardSelector.a(PurchaseDealsForm.this);
        startActivityForResult(paramAnonymousDialogInterface, 1040);
      }
    }).setNegativeButton(2131166925, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        a = null;
      }
    }).create();
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (i != null)
    {
      i.a(null);
      i.a(true);
    }
    if (h != null)
    {
      h.a(null);
      h.a(true);
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
      arrayOfInt[i1] = ((d)localEntry.getValue()).getQuantity();
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
  
  private static class a
    extends PurchaseDealsForm.b
    implements QuantityDropDownView.a
  {
    public a(PurchaseDealsForm paramPurchaseDealsForm)
    {
      super();
    }
    
    public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
    {
      super.a(paramInt, paramQuantityDropDownView);
      paramQuantityDropDownView = PurchaseDealsForm.a(a);
      Iterator localIterator = PurchaseDealsForm.r(a).values().iterator();
      for (paramInt = 0; localIterator.hasNext(); paramInt = ((d)localIterator.next()).getQuantity() + paramInt) {}
      paramQuantityDropDownView.setQuantity(paramInt);
    }
  }
  
  private static class b
    implements QuantityDropDownView.a
  {
    protected final PurchaseDealsForm a;
    
    public b(PurchaseDealsForm paramPurchaseDealsForm)
    {
      a = paramPurchaseDealsForm;
    }
    
    public void a(int paramInt, QuantityDropDownView paramQuantityDropDownView)
    {
      paramQuantityDropDownView = PurchaseDealsForm.o(a);
      if (PurchaseDealsForm.p(a).a(((Integer)first).intValue() + ((Integer)second).intValue(), ((Integer)second).intValue()))
      {
        PurchaseDealsForm.q(a).setOnClickListener(new PurchaseDealsForm.b.1(this));
        return;
      }
      PurchaseDealsForm.q(a).setOnClickListener(new PurchaseDealsForm.b.2(this));
    }
  }
  
  private static class c
    implements ApiRequest.b<cf.a>
  {
    private PurchaseDealsForm a;
    
    public c(PurchaseDealsForm paramPurchaseDealsForm)
    {
      a = paramPurchaseDealsForm;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, cf.a parama)
    {
      a.hideLoadingDialog();
      PurchaseDealsForm.a(a, parama.a());
      if (parama.b().isEmpty())
      {
        a.startActivityForResult(CreditCardSelector.a(a), 1040);
        return;
      }
      PurchaseDealsForm.a(a, parama.b());
      PurchaseDealsForm.a(a, (PaymentMethod)parama.b().get(0));
      if (PurchaseDealsForm.n(a)) {
        PurchaseDealsForm.b(a);
      }
      a = null;
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      a.hideLoadingDialog();
      if (PurchaseDealsForm.a(a, paramYelpException)) {
        return;
      }
      as.a(paramYelpException.getMessage(a), 0);
      a.finish();
    }
  }
  
  private class d
    implements ApiRequest.b<YelpBusiness>
  {
    private final PurchaseDealsForm b;
    
    public d(PurchaseDealsForm paramPurchaseDealsForm)
    {
      b = paramPurchaseDealsForm;
    }
    
    public void a(ApiRequest<?, ?, ?> paramApiRequest, YelpBusiness paramYelpBusiness)
    {
      PurchaseDealsForm.a(PurchaseDealsForm.this, false);
      paramApiRequest = new TreeMap();
      paramApiRequest.put("deal_id", PurchaseDealsForm.c(b).x());
      paramApiRequest.put("deal_option_id", PurchaseDealsForm.g(b).e());
      paramApiRequest.put("quantity", String.valueOf(PurchaseDealsForm.a(b).getQuantity()));
      AppData.b().k().a(EventIri.DealPurchased, paramApiRequest);
      PurchaseDealsForm.h(PurchaseDealsForm.this);
      paramApiRequest = ActivityBusinessPage.b(b, paramYelpBusiness);
      paramApiRequest.putExtra("extra.deal_purchased", PurchaseDealsForm.c(b));
      paramApiRequest.addFlags(67108864);
      b.startActivity(paramApiRequest);
      b.finish();
    }
    
    public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
    {
      PurchaseDealsForm.a(PurchaseDealsForm.this, false);
      b.getHelper().h();
      if (PurchaseDealsForm.a(b, paramYelpException)) {
        return;
      }
      b.a = paramYelpException.getMessage(b);
      if (((paramYelpException instanceof ApiException)) && (((ApiException)paramYelpException).getResultCode() == 1202)) {
        b.showDialog(308);
      }
      for (;;)
      {
        PurchaseDealsForm.e(PurchaseDealsForm.this);
        PurchaseDealsForm.f(PurchaseDealsForm.this);
        return;
        b.showDialog(309);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.PurchaseDealsForm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */