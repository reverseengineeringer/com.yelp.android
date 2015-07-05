package com.yelp.android.ui.activities.deals;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import android.view.Window;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.GiftRecipient;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.util.ContactsFetcher;
import com.yelp.android.util.ContactsFetcher.Contact;
import java.util.UUID;

public class AddGiftRecipient
  extends YelpActivity
{
  private static String i = "friend.xtra";
  private static String j = "valid.xtra";
  private AutoCompleteTextView a;
  private EditText b;
  private EditText c;
  private EditText d;
  private View e;
  private CheckBox f;
  private Button g;
  private View h;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, AddGiftRecipient.class);
  }
  
  public static Intent a(Context paramContext, GiftRecipient paramGiftRecipient)
  {
    paramContext = new Intent(paramContext, AddGiftRecipient.class);
    paramContext.putExtra(i, paramGiftRecipient);
    paramContext.setData(Uri.fromParts("data", "", paramGiftRecipient.getUUID().toString()));
    return paramContext;
  }
  
  public static Pair<Boolean, GiftRecipient> a(Intent paramIntent)
  {
    return Pair.create(Boolean.valueOf(paramIntent.getBooleanExtra(j, false)), paramIntent.getParcelableExtra(i));
  }
  
  private void a(GiftRecipient paramGiftRecipient)
  {
    getWindow().setSoftInputMode(1);
    setTitle(2131165736);
    g.setText(2131166488);
    h.setVisibility(0);
    b.setText(paramGiftRecipient.getFrom());
    a.setText(paramGiftRecipient.getName());
    if (!TextUtils.isEmpty(paramGiftRecipient.getEmail()))
    {
      d.setText(paramGiftRecipient.getEmail());
      c.setText(paramGiftRecipient.getMessage());
      f.setChecked(true);
    }
  }
  
  private void a(ContactsFetcher.Contact paramContact)
  {
    if (paramContact != null)
    {
      a.setText(paramContact.getName(this));
      paramContact = paramContact.getEmail(this);
      d.setText(paramContact);
      if ((!TextUtils.isEmpty(paramContact)) && (!f.isChecked())) {
        f.setChecked(true);
      }
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.DealAddGiftRecipient;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    switch (paramInt1)
    {
    }
    for (;;)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if (paramInt2 == -1) {
        a(ContactsFetcher.b().a(this, paramIntent));
      }
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903064);
    View localView = findViewById(2131493031);
    c = ((EditText)localView.findViewById(2131493033));
    paramBundle = c.getFilters();
    ai localai = new ai();
    if ((paramBundle == null) || (paramBundle.length == 0))
    {
      paramBundle = new InputFilter[1];
      paramBundle[0] = localai;
    }
    for (;;)
    {
      c.setFilters(paramBundle);
      d = ((EditText)localView.findViewById(2131493032));
      b = ((EditText)findViewById(2131493028));
      paramBundle = AppData.b().m();
      paramBundle = getString(2131166156, new Object[] { paramBundle.q(), paramBundle.r() });
      b.setText(paramBundle);
      a = ((AutoCompleteTextView)findViewById(2131493030));
      paramBundle = new aa(this);
      a.setAdapter(paramBundle);
      a.addTextChangedListener(new v(this, paramBundle));
      e = findViewById(2131493029);
      paramBundle = ContactsFetcher.b().a();
      e.setOnClickListener(new w(this, paramBundle));
      if (paramBundle == null) {
        e.setVisibility(8);
      }
      f = ((CheckBox)findViewById(2131492998));
      g = ((Button)findViewById(2131493034));
      paramBundle = new x(this, localView);
      paramBundle.onCheckedChanged(f, f.isChecked());
      f.setOnCheckedChangeListener(paramBundle);
      g.setOnClickListener(new y(this));
      h = findViewById(2131493035);
      h.setOnClickListener(new z(this));
      paramBundle = (GiftRecipient)getIntent().getParcelableExtra(i);
      if (paramBundle != null) {
        a(paramBundle);
      }
      return;
      int k = paramBundle.length;
      InputFilter[] arrayOfInputFilter = new InputFilter[k + 1];
      System.arraycopy(paramBundle, 0, arrayOfInputFilter, 0, k);
      arrayOfInputFilter[k] = localai;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.AddGiftRecipient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */