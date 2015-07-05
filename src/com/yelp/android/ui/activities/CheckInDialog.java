package com.yelp.android.ui.activities;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.text.Editable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.b;
import com.yelp.android.appdata.RemoteConfigPreferences;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.ak;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.dialogs.TwoButtonDialog;
import com.yelp.android.ui.dialogs.YelpBaseDialogFragment;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.f;
import com.yelp.android.util.z;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

public class CheckInDialog
  extends YelpBaseDialogFragment
{
  private YelpBusiness a;
  private ak b;
  private LinkedList<ShareRequest.ShareType> c;
  private YelpCheckIn d;
  private CompoundButton e;
  private CompoundButton f;
  private CompoundButton g;
  private Button h;
  private EditText i;
  private TextView j;
  private ew k;
  private DialogInterface.OnDismissListener l;
  private final View.OnClickListener m = new es(this);
  private final View.OnClickListener n = new et(this);
  private j<YelpCheckIn> o = new eu(this);
  private o p = new ev(this);
  private final DialogInterface.OnClickListener q = new el(this);
  private final DialogInterface.OnClickListener r = new em(this);
  private final DialogInterface.OnCancelListener s = new en(this);
  
  public static CheckInDialog a(YelpBusiness paramYelpBusiness)
  {
    CheckInDialog localCheckInDialog = new CheckInDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("business", paramYelpBusiness);
    localCheckInDialog.setArguments(localBundle);
    return localCheckInDialog;
  }
  
  private boolean a(RemoteConfigPreferences paramRemoteConfigPreferences, List<ShareRequest.ShareType> paramList)
  {
    paramRemoteConfigPreferences = z.a(getActivity(), paramRemoteConfigPreferences, paramList, ActivityRetryCheckInShare.class);
    if (paramRemoteConfigPreferences != null)
    {
      startActivityForResult(paramRemoteConfigPreferences, 1002);
      return true;
    }
    return false;
  }
  
  public ViewIri a()
  {
    return ViewIri.CheckIn;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    l = paramOnDismissListener;
  }
  
  public void a(ew paramew)
  {
    k = paramew;
  }
  
  public void b()
  {
    Editable localEditable = i.getText();
    String str = null;
    if (!TextUtils.isEmpty(localEditable)) {
      str = localEditable.toString();
    }
    b = new ak(a.getId(), str, o);
    b.executeWithLocation(new String[0]);
    c().showLoadingDialog(2131165503);
  }
  
  public Map<String, Object> getParametersForIri(b paramb)
  {
    return Collections.singletonMap("business_id", a.getId());
  }
  
  public String getRequestIdForIri(b paramb)
  {
    return a.getYelpRequestId();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1002) && (paramInt2 == -1))
    {
      c = new LinkedList(f.a(paramIntent.getIntArrayExtra("yelp:retry_shares"), ShareRequest.ShareType.values()));
      b();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = (TwoButtonDialog)getChildFragmentManager().findFragmentByTag("get_notifications");
    if (paramBundle != null)
    {
      paramBundle.b(r);
      paramBundle.a(q);
      paramBundle.a(s);
    }
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    super.onCreateDialog(paramBundle);
    View localView = LayoutInflater.from(getActivity()).inflate(2130903069, null);
    j = ((TextView)localView.findViewById(2131493067));
    h = ((Button)localView.findViewById(2131493065));
    e = ((CompoundButton)localView.findViewById(2131493068));
    f = ((CompoundButton)localView.findViewById(2131493070));
    g = ((CompoundButton)localView.findViewById(2131493069));
    i = ((EditText)localView.findViewById(2131493066));
    h.setOnClickListener(n);
    i.setOnEditorActionListener(new ek(this));
    eo localeo = new eo(this, j, getResources().getInteger(2131558415), 0, 2131361808, 2131361970);
    i.addTextChangedListener(localeo);
    g.setOnCheckedChangeListener(new ep(this, localeo));
    f.setOnCheckedChangeListener(new eq(this));
    e.setOnCheckedChangeListener(new er(this));
    if (paramBundle != null)
    {
      i.setText(paramBundle.getCharSequence("comment_text"));
      d = ((YelpCheckIn)paramBundle.getParcelable("check_in"));
    }
    for (c = new LinkedList(f.a(paramBundle, "share_types", ShareRequest.ShareType.values()));; c = new LinkedList())
    {
      a = ((YelpBusiness)getArguments().getParcelable("business"));
      ((WebImageView)localView.findViewById(2131493062)).setImageUrl(a.getPhotoUrl());
      ((TextView)localView.findViewById(2131493063)).setText(a.getDisplayName());
      ((TextView)localView.findViewById(2131493064)).setText(a.getAddressForBusinessSearchResult());
      paramBundle = localView.findViewById(2131493071);
      paramBundle.setOnClickListener(m);
      paramBundle.requestFocus();
      z.a(null, getActivity().getPreferences(0), e, f, g);
      paramBundle = new Dialog(getActivity());
      paramBundle.requestWindowFeature(1);
      paramBundle.setContentView(localView);
      return paramBundle;
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (l != null) {
      l.onDismiss(paramDialogInterface);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("check_in", b);
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((ak)a("check_in", b, o));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("comment_text", i.getText());
    paramBundle.putParcelable("check_in", d);
    f.a(paramBundle, "share_types", c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.CheckInDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */