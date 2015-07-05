package com.yelp.android.ui.dialogs;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.SystemClock;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.FragmentManager;
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
import com.yelp.android.appdata.webrequests.ee;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.OfferRedemption;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.cg;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.dd;
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
  private DialogInterface.OnClickListener m = new k(this);
  private m<Offer> n = new l(this);
  private final dd o = new n(this);
  
  public static CheckInOfferDialog a(Offer paramOffer, YelpBusiness paramYelpBusiness)
  {
    return a(paramOffer, paramYelpBusiness, true);
  }
  
  public static CheckInOfferDialog a(Offer paramOffer, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    CheckInOfferDialog localCheckInOfferDialog = new CheckInOfferDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("offer", paramOffer);
    localBundle.putString("business_name", paramYelpBusiness.getDisplayName());
    localBundle.putString("business_id", paramYelpBusiness.getId());
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
    paramTwoButtonDialog.a(new c(this));
    paramTwoButtonDialog.b(new d(this));
  }
  
  private void a(boolean paramBoolean)
  {
    if (a.getRedemption().getInstructionText() != null) {
      i.setText(a.getRedemption().getInstructionText());
    }
    if (paramBoolean)
    {
      if (d.getVisibility() == 0)
      {
        Animation localAnimation = AnimationUtils.loadAnimation(AppData.b(), 2130968596);
        localAnimation.setAnimationListener(o);
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
    String str = getString(2131166230, new Object[] { new SimpleDateFormat(getString(2131166376), Locale.US).format(a.getRedemption().getDateRedeemed()) });
    h.setText(str);
    h.setVisibility(0);
  }
  
  private void c()
  {
    ee localee = new ee(a.getId(), n);
    localee.execute(new Void[0]);
    ((YelpActivity)getActivity()).showLoadingDialog(localee, 2131166404);
    AppData.a(EventIri.CheckInOfferRedeem, "check_in_offer_id", a.getId());
  }
  
  private void d()
  {
    a(getActivity(), a, getArguments().getString("business_id"));
    cr.a(2131166229, 0);
    AppData.a(EventIri.CheckInOfferSave, "check_in_offer_id", a.getId());
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
    b = new cg(a.getRedemption().getSystemClockExpiration() - SystemClock.elapsedRealtime(), g);
    b.start();
  }
  
  private ViewIri g()
  {
    return ViewIri.CheckInOfferView;
  }
  
  private void h()
  {
    d.setOnClickListener(new e(this));
    e.setOnClickListener(new f(this));
    f.setOnClickListener(new g(this));
    j.setOnClickListener(new h(this));
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = (TwoButtonDialog)getChildFragmentManager().findFragmentByTag("dialog_retry_request");
    if (paramBundle != null) {
      a(paramBundle);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((Offer)getArguments().getParcelable("offer"));
    l = ((TwoButtonDialog)getChildFragmentManager().findFragmentByTag("dialog_discard_offer"));
    if (l != null) {
      l.a(m);
    }
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    OfferRedemption localOfferRedemption = a.getRedemption();
    if (a.getRedemption() == null) {
      throw new IllegalArgumentException("DialogCheckInOffer must be called with an offer that has a redemption associated with it");
    }
    ContextThemeWrapper localContextThemeWrapper = new ContextThemeWrapper(getActivity(), 2131689804);
    View localView = ((LayoutInflater)localContextThemeWrapper.getSystemService("layout_inflater")).inflate(2130903070, null, false);
    label188:
    int i1;
    if (localOfferRedemption.getTotalCheckIns() > 1)
    {
      paramBundle = StringUtils.a(AppData.b(), 2131623969, localOfferRedemption.getTotalCheckIns(), new Object[] { Boolean.valueOf(true), getArguments().getString("business_name") });
      ((TextView)localView.findViewById(2131493072)).setText(paramBundle);
      ((TextView)localView.findViewById(2131493075)).setText(localOfferRedemption.getDiscountText());
      ((TextView)localView.findViewById(2131493076)).setText(localOfferRedemption.getItemText());
      paramBundle = (TextView)localView.findViewById(2131493077);
      if (localOfferRedemption.getFinePrint() != null) {
        break label433;
      }
      paramBundle.setVisibility(8);
      c = ((ImageView)localView.findViewById(2131493078));
      i = ((TextView)localView.findViewById(2131493083));
      j = ((Button)localView.findViewById(2131493082));
      k = localView.findViewById(2131493079);
      k.setVisibility(8);
      g = ((TextView)k.findViewById(2131493080));
      h = ((TextView)localView.findViewById(2131493081));
      localView.findViewById(2131493074).bringToFront();
      c.bringToFront();
      d = ((TextView)localView.findViewById(2131493084));
      e = ((TextView)localView.findViewById(2131493085));
      f = ((TextView)localView.findViewById(2131493086));
      paramBundle = f;
      if (!getArguments().getBoolean("show_discard", false)) {
        break label445;
      }
      i1 = 0;
      label360:
      paramBundle.setVisibility(i1);
      h();
      if (!a.isUsed()) {
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
      paramBundle = getString(2131166407, new Object[] { getArguments().getString("business_name") });
      break;
      label433:
      paramBundle.setText(localOfferRedemption.getFinePrint());
      break label188;
      label445:
      i1 = 8;
      break label360;
      label451:
      if (a.isRedeemed()) {
        a(false);
      }
    }
  }
  
  public void onPause()
  {
    super.onPause();
    e();
  }
  
  public void onResume()
  {
    super.onResume();
    if ((!a.isUsed()) && (a.isRedeemed())) {
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