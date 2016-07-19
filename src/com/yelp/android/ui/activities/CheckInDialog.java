package com.yelp.android.ui.activities;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.analytics.iris.a;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.ak;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.dialogs.YelpBaseDialogFragment;
import com.yelp.android.ui.util.al;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.u.a;
import com.yelp.android.ui.widgets.RoundedImageView;
import com.yelp.android.util.d;
import com.yelp.android.util.p;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

public class CheckInDialog
  extends YelpBaseDialogFragment
{
  private String a;
  private YelpBusiness b;
  private ak c;
  private ArrayList<ShareRequest.ShareType> d;
  private YelpCheckIn e;
  private boolean f;
  private CompoundButton g;
  private CompoundButton h;
  private CompoundButton i;
  private EditText j;
  private TextView k;
  private a l;
  private DialogInterface.OnDismissListener m;
  private final View.OnClickListener n = new CheckInDialog.7(this);
  private k.b<YelpCheckIn> o = new CheckInDialog.8(this);
  private b.e p = new CheckInDialog.9(this);
  
  public static CheckInDialog a(YelpBusiness paramYelpBusiness, String paramString)
  {
    CheckInDialog localCheckInDialog = new CheckInDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("business", paramYelpBusiness);
    localBundle.putString("comment_text", paramString);
    localCheckInDialog.setArguments(localBundle);
    return localCheckInDialog;
  }
  
  public ViewIri a()
  {
    return ViewIri.CheckIn;
  }
  
  public void a(DialogInterface.OnDismissListener paramOnDismissListener)
  {
    m = paramOnDismissListener;
  }
  
  public void a(a parama)
  {
    l = parama;
  }
  
  public String b()
  {
    return a;
  }
  
  public void c()
  {
    Editable localEditable = j.getText();
    String str = null;
    if (!TextUtils.isEmpty(localEditable)) {
      str = localEditable.toString();
    }
    c = new ak(b.aD(), str, o);
    c.a(new String[0]);
    d().showLoadingDialog(2131165633);
  }
  
  public Map<String, Object> getParametersForIri(a parama)
  {
    return Collections.singletonMap("business_id", b.aD());
  }
  
  public String getRequestIdForIri(a parama)
  {
    return b.n();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt1 == 1005) && (paramInt2 == -1))
    {
      d = new ArrayList(d.a(paramIntent.getIntArrayExtra("retry_shares"), ShareRequest.ShareType.values()));
      c();
    }
  }
  
  @SuppressLint({"InflateParams"})
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    super.onCreateDialog(paramBundle);
    View localView = LayoutInflater.from(getActivity()).inflate(2130903077, null);
    k = ((TextView)localView.findViewById(2131689751));
    g = ((CompoundButton)localView.findViewById(2131689752));
    h = ((CompoundButton)localView.findViewById(2131689754));
    i = ((CompoundButton)localView.findViewById(2131689753));
    j = ((EditText)localView.findViewById(2131689750));
    String str = getArguments().getString("comment_text", "");
    Object localObject = str;
    if (str == null) {
      localObject = "";
    }
    a = ((String)localObject);
    j.setText(a);
    j.setOnEditorActionListener(new CheckInDialog.1(this));
    localObject = new CheckInDialog.2(this, k, getResources().getInteger(2131492887), 0, 2131623980, 2131624190);
    j.addTextChangedListener((TextWatcher)localObject);
    j.setOnClickListener(new CheckInDialog.3(this));
    j.setSelection(a.length());
    i.setOnCheckedChangeListener(new CheckInDialog.4(this, (al)localObject));
    h.setOnCheckedChangeListener(new CheckInDialog.5(this));
    g.setOnCheckedChangeListener(new CheckInDialog.6(this));
    if (paramBundle != null)
    {
      a = paramBundle.getString("comment_text", "");
      j.setText(a);
      e = ((YelpCheckIn)paramBundle.getParcelable("check_in"));
      d = new ArrayList(d.a(paramBundle, "share_types", ShareRequest.ShareType.values()));
      f = paramBundle.getBoolean("have_sent_expanded_iri", false);
    }
    for (;;)
    {
      b = ((YelpBusiness)getArguments().getParcelable("business"));
      t.a(getContext()).a(b.au()).a(2130837691).a((RoundedImageView)localView.findViewById(2131689747));
      ((TextView)localView.findViewById(2131689748)).setText(b.z());
      ((TextView)localView.findViewById(2131689749)).setText(b.h());
      paramBundle = localView.findViewById(2131689755);
      paramBundle.setOnClickListener(n);
      paramBundle.requestFocus();
      p.a(getActivity(), AppData.b().q().p(), false, g, h, i);
      paramBundle = new Dialog(getActivity());
      paramBundle.requestWindowFeature(1);
      paramBundle.setContentView(localView);
      return paramBundle;
      d = new ArrayList();
    }
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (m != null) {
      m.onDismiss(paramDialogInterface);
    }
  }
  
  public void onPause()
  {
    super.onPause();
    a("check_in", c);
  }
  
  public void onResume()
  {
    super.onResume();
    c = ((ak)a("check_in", c, o));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putCharSequence("comment_text", a);
    paramBundle.putParcelable("check_in", e);
    paramBundle.putBoolean("have_sent_expanded_iri", f);
    d.a(paramBundle, "share_types", d);
  }
  
  public static abstract interface a
  {
    public abstract void a(YelpCheckIn paramYelpCheckIn);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.CheckInDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */