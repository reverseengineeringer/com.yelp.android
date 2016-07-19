package com.yelp.android.ui.activities.user.claimaccount;

import android.os.Bundle;
import android.text.Spannable;
import android.text.TextUtils;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.m;
import com.yelp.android.serializable.ClaimPlatformAccountViewModel;
import com.yelp.android.serializable.PlatformConfirmation;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.util.av;
import com.yelp.android.ui.widgets.FloatLabelLayout;
import com.yelp.android.util.StringUtils;

public class ActivityClaimGuestAccount
  extends YelpActivity
{
  private a.a a;
  private a b;
  private final a.c c = new a.c()
  {
    public void a()
    {
      ActivityClaimGuestAccount.a.c(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setVisibility(0);
      ActivityClaimGuestAccount.a.d(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setVisibility(0);
      ActivityClaimGuestAccount.a.e(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setVisibility(0);
    }
    
    public void a(CharSequence paramAnonymousCharSequence1, CharSequence paramAnonymousCharSequence2, CharSequence paramAnonymousCharSequence3)
    {
      ActivityClaimGuestAccount.a.f(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setText(paramAnonymousCharSequence1);
      ActivityClaimGuestAccount.a.g(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setText(paramAnonymousCharSequence2);
      ActivityClaimGuestAccount.a.a(ActivityClaimGuestAccount.a(ActivityClaimGuestAccount.this)).setText(paramAnonymousCharSequence3);
    }
  };
  private final View.OnFocusChangeListener d = new View.OnFocusChangeListener()
  {
    public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
    {
      ActivityClaimGuestAccount.b(ActivityClaimGuestAccount.this).d();
    }
  };
  
  private void a()
  {
    Spannable localSpannable1 = StringUtils.b(this, 2131166851, 2131166661);
    Spannable localSpannable2 = StringUtils.b(this, 2131166387, 2131166391);
    TextView localTextView = (TextView)findViewById(2131689789);
    localTextView.setText(TextUtils.expandTemplate(getText(2131165741), new CharSequence[] { localSpannable1, localSpannable2 }));
    StringUtils.a(localTextView);
  }
  
  private void a(PlatformConfirmation paramPlatformConfirmation)
  {
    ((TextView)findViewById(2131689776)).setText(paramPlatformConfirmation.d());
    ((TextView)findViewById(2131689777)).setText(paramPlatformConfirmation.c());
    ((TextView)findViewById(2131689778)).setText(paramPlatformConfirmation.a());
    ((Button)findViewById(2131689790)).setText(paramPlatformConfirmation.b());
  }
  
  public ViewIri getIri()
  {
    return null;
  }
  
  public void onBackPressed()
  {
    a.e();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903083);
    if (paramBundle == null) {}
    for (paramBundle = a.b.a(getIntent());; paramBundle = ClaimPlatformAccountViewModel.b(paramBundle))
    {
      a = getAppData().B().a(AppData.b().C(), c, paramBundle);
      setPresenter(a);
      a();
      a(paramBundle.b());
      if (!AppData.G()) {
        findViewById(2131689677).startAnimation(av.a(20000L));
      }
      b = new a(getWindow().getDecorView(), null);
      a.a(b).setOnFocusChangeListener(d);
      a.b(b).setOnFocusChangeListener(d);
      a.a();
      return;
    }
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    super.onCreateOptionsMenu(paramMenu);
    getMenuInflater().inflate(2131755045, paramMenu);
    return true;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default: 
      return super.onOptionsItemSelected(paramMenuItem);
    }
    a.e();
    return true;
  }
  
  private static class a
  {
    private final EditText a;
    private final EditText b;
    private final EditText c;
    private final EditText d;
    private final FloatLabelLayout e;
    private final FloatLabelLayout f;
    private final FloatLabelLayout g;
    
    private a(View paramView)
    {
      a = ((EditText)paramView.findViewById(2131689780));
      e = ((FloatLabelLayout)paramView.findViewById(2131689779));
      b = ((EditText)paramView.findViewById(2131689781));
      f = ((FloatLabelLayout)paramView.findViewById(2131689782));
      c = ((EditText)paramView.findViewById(2131689786));
      g = ((FloatLabelLayout)paramView.findViewById(2131689783));
      d = ((EditText)paramView.findViewById(2131689788));
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.user.claimaccount.ActivityClaimGuestAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */