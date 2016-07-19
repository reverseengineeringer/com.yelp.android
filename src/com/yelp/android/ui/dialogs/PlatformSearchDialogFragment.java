package com.yelp.android.ui.dialogs;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import android.support.v4.app.l;
import android.support.v4.app.o;
import android.support.v7.app.d;
import android.support.v7.app.d.a;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.serializable.PlatformDisambiguatedAddress;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformRSSTermMap;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupView;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController;
import com.yelp.android.ui.activities.search.vertical.DeliveryPickupViewController.a;
import com.yelp.android.ui.util.ar;
import com.yelp.android.util.StringUtils;

public class PlatformSearchDialogFragment
  extends YelpBaseDialogFragment
{
  private a a;
  private DeliveryPickupViewController b;
  private final DeliveryPickupViewController.a c = new DeliveryPickupViewController.a()
  {
    public void a(PlatformFilter paramAnonymousPlatformFilter, String paramAnonymousString)
    {
      PlatformRSSTermMap localPlatformRSSTermMap;
      if (PlatformSearchDialogFragment.b(PlatformSearchDialogFragment.this) != null)
      {
        localPlatformRSSTermMap = (PlatformRSSTermMap)getArguments().getParcelable("search_term_map");
        if (!paramAnonymousPlatformFilter.a().equals("delivery")) {
          break label68;
        }
      }
      for (;;)
      {
        PlatformSearchDialogFragment.b(PlatformSearchDialogFragment.this).a(paramAnonymousPlatformFilter, localPlatformRSSTermMap.a(paramAnonymousPlatformFilter.a()), paramAnonymousString);
        dismiss();
        return;
        label68:
        paramAnonymousString = getArguments().getString("location_term");
      }
    }
  };
  
  public static PlatformSearchDialogFragment a(String paramString1, PlatformRSSTermMap paramPlatformRSSTermMap, String paramString2, PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress, String paramString3)
  {
    PlatformSearchDialogFragment localPlatformSearchDialogFragment = new PlatformSearchDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("title", paramString1);
    localBundle.putParcelable("search_term_map", paramPlatformRSSTermMap);
    localBundle.putString("location_term", paramString2);
    localBundle.putParcelable("address", paramPlatformDisambiguatedAddress);
    localBundle.putString("source", paramString3);
    localPlatformSearchDialogFragment.setArguments(localBundle);
    return localPlatformSearchDialogFragment;
  }
  
  public static PlatformSearchDialogFragment a(String paramString1, PlatformRSSTermMap paramPlatformRSSTermMap, String paramString2, PlatformDisambiguatedAddress paramPlatformDisambiguatedAddress, String paramString3, Integer paramInteger)
  {
    paramString1 = a(paramString1, paramPlatformRSSTermMap, paramString2, paramPlatformDisambiguatedAddress, paramString3);
    if (paramInteger != null) {
      paramString1.getArguments().putInt("toggle_position", paramInteger.intValue());
    }
    return paramString1;
  }
  
  public void a(a parama)
  {
    a = parama;
  }
  
  public void dismiss()
  {
    super.dismiss();
    if (getFragmentManager() != null) {
      getFragmentManager().a().a(b).a();
    }
  }
  
  public void onCancel(DialogInterface paramDialogInterface)
  {
    super.onCancel(paramDialogInterface);
    if (getArguments().getString("source").equals("nearby")) {
      AppData.a(EventIri.NearbyPlatformCancel);
    }
    do
    {
      return;
      if (getArguments().getString("source").equals("search_bar"))
      {
        AppData.a(EventIri.SearchBarPlatformCancel);
        return;
      }
    } while (!getArguments().getString("source").equals("promoted_filter"));
    AppData.a(EventIri.SearchPromotedFilterDeliveryCancel);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = ((DeliveryPickupViewController)getFragmentManager().a("delivery_pickup_controller"));
    PlatformDisambiguatedAddress localPlatformDisambiguatedAddress;
    if (b == null)
    {
      localPlatformDisambiguatedAddress = (PlatformDisambiguatedAddress)getArguments().getParcelable("address");
      if (!getArguments().containsKey("toggle_position")) {
        break label110;
      }
    }
    label110:
    for (paramBundle = Integer.valueOf(getArguments().getInt("toggle_position"));; paramBundle = null)
    {
      b = DeliveryPickupViewController.a("suggestion", localPlatformDisambiguatedAddress, true, paramBundle);
      getFragmentManager().a().a(b, "delivery_pickup_controller").a();
      b.a(c);
      return;
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new DeliveryPickupView(getActivity());
    b.a(paramBundle);
    paramBundle = e().a(paramBundle, n.a, n.b, n.a, 0).a(2131166496, null).b(2131166925, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface.cancel();
      }
    }).b();
    String str = getArguments().getString("title");
    if (!StringUtils.d(str)) {
      paramBundle.setTitle(str);
    }
    paramBundle.getWindow().setBackgroundDrawableResource(2130838972);
    return paramBundle;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (getFragmentManager() != null) {
      getFragmentManager().a().a(b).a();
    }
  }
  
  public void onStart()
  {
    super.onStart();
    ((d)getDialog()).a(-1).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        PlatformSearchDialogFragment.a(PlatformSearchDialogFragment.this).a();
      }
    });
    ar.a(getDialog());
  }
  
  public static abstract interface a
  {
    public abstract void a(PlatformFilter paramPlatformFilter, String paramString1, String paramString2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.PlatformSearchDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */