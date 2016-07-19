package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.SystemClock;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.l;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.dh;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.OfferRedemption;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.an;
import com.yelp.android.ui.util.as;
import com.yelp.android.ui.util.av.a;
import com.yelp.android.util.StringUtils;
import java.text.SimpleDateFormat;
import java.util.Locale;

public class CheckInOfferDialog
  extends DialogFragment
{
  private Offer a;
  private CountDownTimer b;
  private ImageView c;
  private TextView d;
  private TextView e;
  private TextView f;
  private TextView g;
  private TextView h;
  private TextView i;
  private Button j;
  private View k;
  private TwoButtonDialog l;
  private Animation m;
  private DialogInterface.OnClickListener n = new CheckInOfferDialog.8(this);
  private ApiRequest.b<Offer> o = new CheckInOfferDialog.9(this);
  private final av.a p = new CheckInOfferDialog.10(this);
  private final Runnable q = new CheckInOfferDialog.2(this);
  
  public static CheckInOfferDialog a(Offer paramOffer, YelpBusiness paramYelpBusiness)
  {
    return a(paramOffer, paramYelpBusiness, true);
  }
  
  public static CheckInOfferDialog a(Offer paramOffer, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    CheckInOfferDialog localCheckInOfferDialog = new CheckInOfferDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("offer", paramOffer);
    localBundle.putString("business_name", paramYelpBusiness.z());
    localBundle.putString("business_id", paramYelpBusiness.aD());
    localBundle.putBoolean("show_discard", paramBoolean);
    localCheckInOfferDialog.setArguments(localBundle);
    return localCheckInOfferDialog;
  }
  
  private void a()
  {
    d.setVisibility(8);
    e.setVisibility(8);
    f.setVisibility(8);
    i.setVisibility(0);
    j.setVisibility(0);
    k.setVisibility(0);
    f();
  }
  
  public static void a(Context paramContext, Offer paramOffer, String paramString)
  {
    Intent localIntent = new Intent("com.yelp.android.offer_redeemed");
    localIntent.putExtra("offer", paramOffer);
    localIntent.putExtra("business_id", paramString);
    paramContext.sendBroadcast(localIntent);
  }
  
  private void a(TwoButtonDialog paramTwoButtonDialog)
  {
    paramTwoButtonDialog.a(new CheckInOfferDialog.1(this));
    paramTwoButtonDialog.b(new CheckInOfferDialog.3(this));
  }
  
  private void a(boolean paramBoolean)
  {
    if (a.m().f() != null) {
      i.setText(a.m().f());
    }
    if (paramBoolean)
    {
      if (d.getVisibility() == 0)
      {
        Animation localAnimation = AnimationUtils.loadAnimation(AppData.b(), 2130968602);
        localAnimation.setAnimationListener(p);
        d.startAnimation(localAnimation);
        e.startAnimation(localAnimation);
      }
      return;
    }
    a();
  }
  
  private void b()
  {
    d.setVisibility(8);
    e.setVisibility(8);
    f.setVisibility(8);
    c.setVisibility(0);
    String str = getString(2131166285, new Object[] { new SimpleDateFormat(getString(2131166401), Locale.US).format(a.m().i()) });
    h.setText(str);
    h.setVisibility(0);
  }
  
  private void c()
  {
    dh localdh = new dh(a.i(), o);
    localdh.f(new Void[0]);
    ((YelpActivity)getActivity()).showLoadingDialog(localdh, 2131166431);
    AppData.a(EventIri.CheckInOfferRedeem, "check_in_offer_id", a.i());
  }
  
  private void d()
  {
    a(getActivity(), a, getArguments().getString("business_id"));
    as.a(2131166284, 0);
    AppData.a(EventIri.CheckInOfferSave, "check_in_offer_id", a.i());
    dismiss();
  }
  
  private void e()
  {
    if (b != null) {
      b.cancel();
    }
  }
  
  private void f()
  {
    e();
    b = new an(a.m().a() - SystemClock.elapsedRealtime(), g);
    b.start();
  }
  
  private ViewIri g()
  {
    return ViewIri.CheckInOfferView;
  }
  
  private void h()
  {
    d.setOnClickListener(new CheckInOfferDialog.4(this));
    e.setOnClickListener(new CheckInOfferDialog.5(this));
    f.setOnClickListener(new CheckInOfferDialog.6(this));
    j.setOnClickListener(new CheckInOfferDialog.7(this));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = (TwoButtonDialog)getChildFragmentManager().a("dialog_retry_request");
    if (paramBundle != null) {
      a(paramBundle);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((Offer)getArguments().getParcelable("offer"));
    l = ((TwoButtonDialog)getChildFragmentManager().a("dialog_discard_offer"));
    if (l != null) {
      l.a(n);
    }
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    OfferRedemption localOfferRedemption = a.m();
    if (a.m() == null) {
      throw new IllegalArgumentException("DialogCheckInOffer must be called with an offer that has a redemption associated with it");
    }
    ContextThemeWrapper localContextThemeWrapper = new ContextThemeWrapper(getActivity(), 2131296695);
    View localView = ((LayoutInflater)localContextThemeWrapper.getSystemService("layout_inflater")).inflate(2130903078, null, false);
    label188:
    int i1;
    if (localOfferRedemption.d() > 1)
    {
      paramBundle = StringUtils.a(AppData.b(), 2131230755, localOfferRedemption.d(), new Object[] { Boolean.valueOf(true), getArguments().getString("business_name") });
      ((TextView)localView.findViewById(2131689756)).setText(paramBundle);
      ((TextView)localView.findViewById(2131689759)).setText(localOfferRedemption.h());
      ((TextView)localView.findViewById(2131689760)).setText(localOfferRedemption.g());
      paramBundle = (TextView)localView.findViewById(2131689761);
      if (localOfferRedemption.e() != null) {
        break label433;
      }
      paramBundle.setVisibility(8);
      c = ((ImageView)localView.findViewById(2131689762));
      i = ((TextView)localView.findViewById(2131689767));
      j = ((Button)localView.findViewById(2131689766));
      k = localView.findViewById(2131689763);
      k.setVisibility(8);
      g = ((TextView)k.findViewById(2131689764));
      h = ((TextView)localView.findViewById(2131689765));
      localView.findViewById(2131689758).bringToFront();
      c.bringToFront();
      d = ((TextView)localView.findViewById(2131689768));
      e = ((TextView)localView.findViewById(2131689769));
      f = ((TextView)localView.findViewById(2131689770));
      paramBundle = f;
      if (!getArguments().getBoolean("show_discard", false)) {
        break label445;
      }
      i1 = 0;
      label360:
      paramBundle.setVisibility(i1);
      h();
      if (!a.e()) {
        break label451;
      }
      b();
    }
    for (;;)
    {
      paramBundle = new Dialog(localContextThemeWrapper);
      paramBundle.requestWindowFeature(1);
      paramBundle.setContentView(localView);
      return paramBundle;
      paramBundle = getString(2131166434, new Object[] { getArguments().getString("business_name") });
      break;
      label433:
      paramBundle.setText(localOfferRedemption.e());
      break label188;
      label445:
      i1 = 8;
      break label360;
      label451:
      if (a.d()) {
        a(false);
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    e();
    if (m != null)
    {
      c.clearAnimation();
      ((YelpActivity)getActivity()).getHandler().removeCallbacks(q);
      dismiss();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if ((!a.e()) && (a.d())) {
      f();
    }
    AppData.a(g());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.CheckInOfferDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */