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
import com.yelp.android.av.i;
import com.yelp.android.serializable.PrivacyPolicy;

public class PrivacyPolicyDialog
  extends DialogFragment
{
  private int a = 2131493471;
  private PrivacyPolicy b;
  private TextView c;
  private TextView d;
  private TextView e;
  private YelpProgressDialogFragment f;
  private PrivacyPolicySaveRequest g;
  private final be h = new az(this);
  private final i i = new bc(this);
  
  private SpannableString a()
  {
    Object localObject = getString(2131166363);
    String str = getString(2131166364);
    int j = ((String)localObject).indexOf("%1$s");
    int k = str.length() + j;
    localObject = new SpannableString(((String)localObject).replace("%1$s", str));
    ((SpannableString)localObject).setSpan(new ay(this), j, k, 33);
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
    case 2131493470: 
      c.setText(getString(2131166154));
      d.setText(b.getShareProfileStory());
      e.setText(getString(2131166615, new Object[] { b.getShareProfileTime(), b.getShareProfileSource() }));
      return;
    case 2131493471: 
      c.setText(getString(2131165694));
      d.setText(b.getShareDemographicsStory());
      e.setText(getString(2131166615, new Object[] { b.getShareDemographicsTime(), b.getShareDemographicsSource() }));
      return;
    }
    c.setText(getString(2131165393));
    d.setText(b.getShareBasicInfoStory());
    e.setText(getString(2131166615, new Object[] { b.getShareBasicInfoTime(), b.getShareBasicInfoSource() }));
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
      g.execute(new Void[0]);
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
      g.cancel(true);
      g.setCallback(null);
    }
  }
  
  private void d()
  {
    TwoButtonDialog localTwoButtonDialog = TwoButtonDialog.a(2131166600, 2131165457, 2131166752);
    localTwoButtonDialog.a(new ba(this));
    localTwoButtonDialog.b(new bb(this));
    localTwoButtonDialog.show(getFragmentManager(), null);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    f = YelpProgressDialogFragment.a(0);
    f.a(new av(this));
    setRetainInstance(true);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    b = ((PrivacyPolicy)getArguments().getParcelable("privacy_policy"));
    paramBundle = new AlertDialog.Builder(getActivity());
    View localView = LayoutInflater.from(getActivity()).inflate(2130903188, null);
    c = ((TextView)localView.findViewById(2131493464));
    d = ((TextView)localView.findViewById(2131493465));
    e = ((TextView)localView.findViewById(2131493466));
    TextView localTextView1 = (TextView)localView.findViewById(2131493462);
    TextView localTextView2 = (TextView)localView.findViewById(16908310);
    a(a);
    localTextView1.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView1.setText(a());
    localTextView2.setText(2131166367);
    localView.findViewById(2131493467).setOnClickListener(new aw(this));
    localView.findViewById(2131493468).setOnClickListener(new ax(this));
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