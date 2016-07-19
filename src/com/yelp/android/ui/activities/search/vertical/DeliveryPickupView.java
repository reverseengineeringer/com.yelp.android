package com.yelp.android.ui.activities.search.vertical;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.Space;
import com.yelp.android.serializable.PlatformDeliveryAddress;
import com.yelp.android.ui.widgets.SpannedTextView;

public class DeliveryPickupView
  extends LinearLayout
{
  private SpannedTextView a;
  private SpannedTextView b;
  private FrameLayout c;
  private UserEnterAddressView d;
  private DeliveryPickupView.a e;
  
  public DeliveryPickupView(Context paramContext)
  {
    super(paramContext);
    e();
  }
  
  public DeliveryPickupView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    e();
  }
  
  public DeliveryPickupView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e();
  }
  
  private void e()
  {
    inflate(getContext(), 2130903563, this);
    a = ((SpannedTextView)findViewById(2131690970));
    b = ((SpannedTextView)findViewById(2131690971));
    c = ((FrameLayout)findViewById(2131690973));
    Space localSpace = (Space)findViewById(2131690972);
    a.setOnClickListener(new DeliveryPickupView.3(this));
    b.setOnClickListener(new DeliveryPickupView.4(this, localSpace));
  }
  
  protected void a()
  {
    a.setChecked(true);
    b.setChecked(false);
    a.setTextAppearance(getContext(), 2131296526);
    b.setTextAppearance(getContext(), 2131296487);
    c.setVisibility(0);
  }
  
  protected void a(PlatformDeliveryAddress paramPlatformDeliveryAddress)
  {
    c.removeAllViews();
    View localView = LayoutInflater.from(getContext()).inflate(2130903477, c, true);
    ((UserAddressView)localView.findViewById(2131690053)).setAddress(paramPlatformDeliveryAddress);
    localView.setOnClickListener(new DeliveryPickupView.1(this));
  }
  
  protected void a(UserEnterAddressView.a parama)
  {
    if (d == null) {
      throw new IllegalStateException("We can't enable the ime search action on the enter address view if the enter address view has not been shown.");
    }
    d.a(parama);
  }
  
  protected void b()
  {
    a.setChecked(false);
    b.setChecked(true);
    a.setTextAppearance(getContext(), 2131296487);
    b.setTextAppearance(getContext(), 2131296526);
    c.setVisibility(8);
  }
  
  protected UserEnterAddressView c()
  {
    c.removeAllViews();
    d = new UserEnterAddressView(getContext());
    c.addView(d);
    return d;
  }
  
  protected void d()
  {
    c.removeAllViews();
    LayoutInflater.from(getContext()).inflate(2130903478, c, true).setOnClickListener(new DeliveryPickupView.2(this));
  }
  
  protected PlatformDeliveryAddress getEnteredAddress()
    throws UserEnterAddressView.ValidationException
  {
    if (d != null) {
      return d.getAddress();
    }
    return null;
  }
  
  protected void setController(DeliveryPickupView.a parama)
  {
    e = parama;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.vertical.DeliveryPickupView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */