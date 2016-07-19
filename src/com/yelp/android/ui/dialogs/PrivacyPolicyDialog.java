package com.yelp.android.ui.dialogs;

import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.text.style.StyleSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.PrivacyPolicySaveRequest;
import com.yelp.android.appdata.webrequests.PrivacyPolicySaveRequest.PrivacyLevel;
import com.yelp.android.appdata.webrequests.core.c.a;
import com.yelp.android.serializable.PrivacyPolicy;

public class PrivacyPolicyDialog
  extends DialogFragment
{
  private int a = 2131690152;
  private PrivacyPolicy b;
  private TextView c;
  private TextView d;
  private TextView e;
  private YelpProgressDialogFragment f;
  private PrivacyPolicySaveRequest g;
  private final PrivacyPolicyDialog.SelectPrivacyLevelDialog.a h = new PrivacyPolicyDialog.5(this);
  private final c.a i = new PrivacyPolicyDialog.8(this);
  
  private SpannableString a()
  {
    Object localObject = getString(2131166389);
    String str = getString(2131166390);
    int j = ((String)localObject).indexOf("%1$s");
    int k = str.length() + j;
    localObject = new SpannableString(((String)localObject).replace("%1$s", str));
    ((SpannableString)localObject).setSpan(new PrivacyPolicyDialog.4(this), j, k, 33);
    ((SpannableString)localObject).setSpan(new StyleSpan(1), j, k, 33);
    return (SpannableString)localObject;
  }
  
  public static PrivacyPolicyDialog a(PrivacyPolicy paramPrivacyPolicy)
  {
    PrivacyPolicyDialog localPrivacyPolicyDialog = new PrivacyPolicyDialog();
    Bundle localBundle = new Bundle();
    localBundle.putParcelable("privacy_policy", paramPrivacyPolicy);
    localPrivacyPolicyDialog.setArguments(localBundle);
    return localPrivacyPolicyDialog;
  }
  
  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2131690151: 
      c.setText(getString(2131166205));
      d.setText(b.i());
      e.setText(getString(2131166629, new Object[] { b.g(), b.h() }));
      return;
    case 2131690152: 
      c.setText(getString(2131165772));
      d.setText(b.f());
      e.setText(getString(2131166629, new Object[] { b.d(), b.e() }));
      return;
    }
    c.setText(getString(2131165528));
    d.setText(b.c());
    e.setText(getString(2131166629, new Object[] { b.a(), b.b() }));
  }
  
  private void b()
  {
    PrivacyPolicySaveRequest.PrivacyLevel localPrivacyLevel;
    switch (a)
    {
    default: 
      localPrivacyLevel = PrivacyPolicySaveRequest.PrivacyLevel.DEMOGRAPHICS;
    }
    for (;;)
    {
      g = new PrivacyPolicySaveRequest(i, localPrivacyLevel);
      g.f(new Void[0]);
      f.show(getFragmentManager(), null);
      return;
      localPrivacyLevel = PrivacyPolicySaveRequest.PrivacyLevel.NAME_AND_PROFILE;
      continue;
      localPrivacyLevel = PrivacyPolicySaveRequest.PrivacyLevel.DEMOGRAPHICS;
      continue;
      localPrivacyLevel = PrivacyPolicySaveRequest.PrivacyLevel.BASIC_INFO;
    }
  }
  
  private void c()
  {
    if (g != null)
    {
      g.a(true);
      g.a(null);
    }
  }
  
  private void d()
  {
    TwoButtonDialog localTwoButtonDialog = TwoButtonDialog.a(2131166609, 2131165583, 2131166732);
    localTwoButtonDialog.a(new PrivacyPolicyDialog.6(this));
    localTwoButtonDialog.b(new PrivacyPolicyDialog.7(this));
    localTwoButtonDialog.show(getFragmentManager(), null);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = YelpProgressDialogFragment.a(0);
    f.a(new PrivacyPolicyDialog.1(this));
    setRetainInstance(true);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    b = ((PrivacyPolicy)getArguments().getParcelable("privacy_policy"));
    paramBundle = new AlertDialog.Builder(getActivity());
    View localView = LayoutInflater.from(getActivity()).inflate(2130903211, null);
    c = ((TextView)localView.findViewById(2131690145));
    d = ((TextView)localView.findViewById(2131690146));
    e = ((TextView)localView.findViewById(2131690147));
    TextView localTextView1 = (TextView)localView.findViewById(2131690143);
    TextView localTextView2 = (TextView)localView.findViewById(16908310);
    a(a);
    localTextView1.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView1.setText(a());
    localTextView2.setText(2131166393);
    localView.findViewById(2131690148).setOnClickListener(new PrivacyPolicyDialog.2(this));
    localView.findViewById(2131690149).setOnClickListener(new PrivacyPolicyDialog.3(this));
    paramBundle.setView(localView);
    return paramBundle.create();
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    c();
  }
  
  public void onDestroyView()
  {
    if ((getDialog() != null) && (getRetainInstance())) {
      getDialog().setDismissMessage(null);
    }
    super.onDestroyView();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.dialogs.PrivacyPolicyDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */