package com.yelp.android.ui.activities.profile;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.util.AttributeSet;
import android.util.SparseIntArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.bumptech.glide.c;
import com.bumptech.glide.d;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.Features;
import com.yelp.android.appdata.ao;
import com.yelp.android.appdata.webrequests.UserLocalMediaRequest;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.b;
import com.yelp.android.serializable.FeatureSet.Feature;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.User.EliteYear;
import com.yelp.android.serializable.User.EliteYear.TYPE;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.ui.activities.compliments.SendCompliment;
import com.yelp.android.ui.activities.feed.SingleFeedFragmentActivity;
import com.yelp.android.ui.activities.friends.ActivityFriendList;
import com.yelp.android.ui.activities.friends.SendFriendRequestForm;
import com.yelp.android.ui.util.SlightlyLessBrokenLinearLayout;
import com.yelp.android.ui.util.by;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.dj;
import com.yelp.android.ui.widgets.LeftDrawableButton;
import com.yelp.android.ui.widgets.SpannableWidget;
import com.yelp.android.ui.widgets.SpannedTextView;
import com.yelp.android.ui.widgets.TwoTierButton;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.Collections;
import java.util.Date;
import java.util.List;

public class UserProfileView
  extends SlightlyLessBrokenLinearLayout
{
  private final int a;
  private final ColorStateList b;
  private final ColorStateList c;
  private final int d;
  private final Drawable e;
  private final Drawable f;
  private ViewGroup g;
  private TextView h;
  private LeftDrawableButton i;
  private LeftDrawableButton j;
  
  public UserProfileView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 2130772294);
  }
  
  public UserProfileView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet, paramInt);
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, b.UserProfileView, paramInt, paramInt);
    e = paramContext.getDrawable(6);
    f = paramContext.getDrawable(7);
    a = paramContext.getColor(4, -16777216);
    b = paramContext.getColorStateList(1);
    c = paramContext.getColorStateList(3);
    d = paramContext.getColor(2, 0);
    paramContext.recycle();
  }
  
  public static Spannable a(CharSequence paramCharSequence, int paramInt)
  {
    int k = 0;
    SpannableString localSpannableString = SpannableString.valueOf(paramCharSequence);
    StyleSpan[] arrayOfStyleSpan = (StyleSpan[])localSpannableString.getSpans(0, localSpannableString.length(), StyleSpan.class);
    paramCharSequence = arrayOfStyleSpan;
    if (arrayOfStyleSpan.length == 0)
    {
      localSpannableString.setSpan(new StyleSpan(1), 0, localSpannableString.length(), 33);
      paramCharSequence = (StyleSpan[])localSpannableString.getSpans(0, localSpannableString.length(), StyleSpan.class);
    }
    int m = paramCharSequence.length;
    while (k < m)
    {
      arrayOfStyleSpan = paramCharSequence[k];
      if (arrayOfStyleSpan.getStyle() == 1) {
        StringUtils.a(localSpannableString, arrayOfStyleSpan, new ForegroundColorSpan(paramInt));
      }
      k += 1;
    }
    return localSpannableString;
  }
  
  private final String a(int paramInt)
  {
    return getContext().getString(paramInt);
  }
  
  private String a(Date paramDate)
  {
    return String.valueOf(DateFormat.format(a(2131166077), paramDate));
  }
  
  private void a()
  {
    ((ImageView)findViewById(2131494084)).setImageDrawable(e);
  }
  
  private void a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    SparseIntArray localSparseIntArray = new SparseIntArray();
    localSparseIntArray.put(4, 2130903434);
    dj.a(this, paramContext, paramAttributeSet, paramInt, localSparseIntArray);
  }
  
  private void a(User paramUser, ViewGroup paramViewGroup)
  {
    List localList = paramUser.getYearsElite();
    Collections.sort(localList, Collections.reverseOrder());
    int m = localList.size();
    LinearLayout.LayoutParams localLayoutParams = cp.b();
    int k = ao.m;
    rightMargin = k;
    leftMargin = k;
    if (m > 3)
    {
      rightMargin = 0;
      leftMargin = -1;
    }
    k = 0;
    if (k < m)
    {
      User.EliteYear localEliteYear = (User.EliteYear)localList.get(k);
      Object localObject = getContext();
      User.EliteYear.TYPE localTYPE = type;
      if ((k != 0) && (m > 3)) {}
      for (boolean bool = true;; bool = false)
      {
        localObject = new EliteBadge((Context)localObject, null, localTYPE.getBadge(bool));
        paramViewGroup.addView((View)localObject, localLayoutParams);
        if (k >= 5) {
          break label164;
        }
        ((EliteBadge)localObject).setYear(year);
        k += 1;
        break;
      }
    }
    label164:
    paramUser = WhatsAnElite.a(getContext(), paramUser);
    paramViewGroup.setOnClickListener(new by(EventIri.ProfileEliteBanner, paramUser));
  }
  
  private void a(User paramUser, LeftDrawableButton paramLeftDrawableButton1, LeftDrawableButton paramLeftDrawableButton2)
  {
    if (paramUser.isFeatureDisabled(FeatureSet.Feature.ADD_FRIEND)) {
      paramLeftDrawableButton1.setVisibility(8);
    }
    if (paramUser.isFeatureDisabled(FeatureSet.Feature.SEND_COMPLIMENT)) {
      paramLeftDrawableButton2.setVisibility(8);
    }
  }
  
  private View.OnClickListener b(User paramUser)
  {
    paramUser = ActivityLogin.a(getContext(), 2131166040, SendFriendRequestForm.a(getContext(), paramUser));
    return new ab(this, EventIri.ProfileButtonAddFriend, paramUser);
  }
  
  private View.OnClickListener c(User paramUser)
  {
    paramUser = SendCompliment.a(getContext(), paramUser);
    paramUser = ActivityLogin.a(getContext(), 2131166038, paramUser);
    return new by(EventIri.ProfileButtonCompliment, paramUser);
  }
  
  private void c(User paramUser, boolean paramBoolean)
  {
    b(paramUser, paramBoolean);
    setUpHeaderButtons(paramUser);
    setUpUserNameAndQuote(paramUser);
    setUpEliteBanner(paramUser);
  }
  
  private View.OnClickListener d(User paramUser)
  {
    return new ac(this, paramUser);
  }
  
  private void setUpBasicUserInfo(User paramUser)
  {
    g = ((ViewGroup)findViewById(2131493472));
    Context localContext = getContext();
    Object localObject = a(g);
    ((TextView)localObject).setText(a(StringUtils.a(localContext, 2131166901, new Object[] { paramUser.getLocation() }), a));
    ((TextView)localObject).setEnabled(false);
    if (paramUser.getMemberSince() != null)
    {
      localObject = a(g);
      ((TextView)localObject).setId(2131492929);
      ((TextView)localObject).setEnabled(false);
      ((TextView)localObject).setText(a(StringUtils.a(localContext, 2131166902, new Object[] { a(paramUser.getMemberSince()) }), a));
    }
    if (paramUser.isFriend())
    {
      localObject = LayoutInflater.from(localContext).inflate(2130903352, g, false);
      g.addView((View)localObject);
      CompoundButton localCompoundButton = (CompoundButton)((View)localObject).findViewById(2131493923);
      localCompoundButton.setChecked(paramUser.isSendingNotifications());
      localCompoundButton.setOnCheckedChangeListener(new ae(paramUser));
      ((View)localObject).setOnClickListener(new ad(this, localCompoundButton));
      localObject = (SpannableWidget)localObject;
    }
    h = b(g);
    if (AppData.b().m().a(paramUser)) {
      h.setText(localContext.getString(2131166104));
    }
    for (;;)
    {
      h.setOnClickListener(new by(EventIri.ProfileMoreAboutButton, MoreAboutUser.a(localContext, paramUser)));
      paramUser = (SpannableWidget)h;
      if (paramUser != null) {
        paramUser.setRight(true);
      }
      return;
      h.setText(localContext.getString(2131166103, new Object[] { paramUser.getFirstName() }));
    }
  }
  
  private void setUpEliteBanner(User paramUser)
  {
    ViewGroup localViewGroup = (ViewGroup)findViewById(2131494086);
    localViewGroup.setBackgroundDrawable(f);
    if (f != null) {}
    for (int k = 0;; k = 8)
    {
      localViewGroup.setVisibility(k);
      if (paramUser.isEliteUser()) {
        a(paramUser, localViewGroup);
      }
      return;
    }
  }
  
  private void setUpHeaderButtons(User paramUser)
  {
    boolean bool2 = true;
    Object localObject = (TwoTierButton)findViewById(2131493898);
    ((TwoTierButton)localObject).setLabel(getResources().getQuantityString(2131623971, paramUser.getReviewCount()));
    ((TwoTierButton)localObject).setValue(String.valueOf(paramUser.getReviewCount()));
    ((TwoTierButton)localObject).setOnClickListener(new by(EventIri.ProfileButtonBar_Reviews, SingleFeedFragmentActivity.a(getContext(), paramUser, paramUser.getReviewCount(), SingleCurrentUserFeedEntryFragment.FeedFragmentType.Review)));
    label169:
    TwoTierButton localTwoTierButton;
    int k;
    int m;
    if (paramUser.getReviewCount() > 0)
    {
      bool1 = true;
      ((TwoTierButton)localObject).setEnabled(bool1);
      localObject = (TwoTierButton)findViewById(2131493998);
      ((TwoTierButton)localObject).setLabel(getResources().getQuantityString(2131623953, paramUser.getFriendCount()));
      ((TwoTierButton)localObject).setValue(String.valueOf(paramUser.getFriendCount()));
      ((TwoTierButton)localObject).setOnClickListener(new by(EventIri.ProfileButtonBar_Friends, ActivityFriendList.a(getContext(), paramUser)));
      if (paramUser.getFriendCount() <= 0) {
        break label293;
      }
      bool1 = true;
      ((TwoTierButton)localObject).setEnabled(bool1);
      localTwoTierButton = (TwoTierButton)findViewById(2131493895);
      k = paramUser.getVideoCount();
      m = paramUser.getPhotoCount();
      int n = k + m;
      if ((k <= 0) || (m <= 0)) {
        break label299;
      }
      localObject = a(2131166331);
      label220:
      localTwoTierButton.setLabel((CharSequence)localObject);
      localTwoTierButton.setValue(String.valueOf(n));
      localTwoTierButton.setOnClickListener(new by(EventIri.ProfileButtonBar_Photos, UserBizMediaGrid.a(getContext(), new UserLocalMediaRequest(paramUser), (String)localObject, paramUser)));
      if (n <= 0) {
        break label335;
      }
    }
    label293:
    label299:
    label335:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      localTwoTierButton.setEnabled(bool1);
      return;
      bool1 = false;
      break;
      bool1 = false;
      break label169;
      if (k > 0)
      {
        localObject = getResources().getQuantityString(2131623984, k);
        break label220;
      }
      localObject = getResources().getQuantityString(2131623966, m);
      break label220;
    }
  }
  
  private void setUpUserNameAndQuote(User paramUser)
  {
    TextView localTextView1 = (TextView)findViewById(2131494091);
    TextView localTextView2 = (TextView)findViewById(2131494092);
    localTextView1.setTextColor(b);
    localTextView2.setTextColor(c);
    if (d != 0)
    {
      localTextView1.setShadowLayer(1.0F, -0.25F, -1.0F, d);
      localTextView2.setShadowLayer(1.0F, -0.25F, -1.0F, d);
    }
    if (TextUtils.isEmpty(paramUser.getNickname())) {
      localTextView1.setText(paramUser.getName());
    }
    while (paramUser.getHeadline() != null)
    {
      localTextView2.setVisibility(0);
      localTextView2.setText(paramUser.getHeadline());
      return;
      localTextView1.setText(String.format("%s %s %s.", new Object[] { paramUser.getFirstName(), StringUtils.d(paramUser.getNickname()), paramUser.getLastInitial() }));
    }
    localTextView2.setVisibility(8);
  }
  
  public TextView a(ViewGroup paramViewGroup)
  {
    return a(paramViewGroup, 2130772327);
  }
  
  public SpannedTextView a(ViewGroup paramViewGroup, int paramInt)
  {
    SpannedTextView localSpannedTextView = new SpannedTextView(getContext(), null, paramInt);
    paramViewGroup.addView(localSpannedTextView);
    return localSpannedTextView;
  }
  
  public void a(User paramUser)
  {
    h.setOnClickListener(new by(EventIri.ProfileMoreAboutButton, MoreAboutUser.a(getContext(), paramUser)));
  }
  
  public void a(User paramUser, boolean paramBoolean)
  {
    c(paramUser, paramBoolean);
    a();
    setUpCommunityInteractionButtons(paramUser);
    setUpBasicUserInfo(paramUser);
  }
  
  public TextView b(ViewGroup paramViewGroup)
  {
    return a(paramViewGroup, 2130772328);
  }
  
  public void b(User paramUser, boolean paramBoolean)
  {
    WebImageView localWebImageView = (WebImageView)findViewById(2131494089);
    String str = paramUser.getUserPhotoUrl();
    h.c(getContext()).a(str).a(2130837659).a(localWebImageView);
    if ((!paramBoolean) || (paramUser.getUserPhotoCount() > 0)) {
      findViewById(2131494090).setVisibility(4);
    }
    if ((paramBoolean) || ((!TextUtils.isEmpty(str)) && (paramUser.getUserPhotoCount() > 0))) {
      localWebImageView.setOnClickListener(new aa(this, EventIri.ProfileUserPhotos, paramUser));
    }
  }
  
  public LeftDrawableButton getAddFriendButton()
  {
    return i;
  }
  
  ViewGroup getBasicInfo()
  {
    return g;
  }
  
  public int getBoldTitleColor()
  {
    return a;
  }
  
  public LeftDrawableButton getComplimentButton()
  {
    return j;
  }
  
  public void setUpCommunityInteractionButtons(User paramUser)
  {
    Object localObject = (ViewGroup)findViewById(2131494094);
    if (!AppData.b().m().a(paramUser))
    {
      i = ((LeftDrawableButton)findViewById(2131493858));
      j = ((LeftDrawableButton)findViewById(2131493057));
      localObject = (LeftDrawableButton)findViewById(2131494095);
      a(paramUser, i, j);
      i.setOnClickListener(b(paramUser));
      j.setOnClickListener(c(paramUser));
      ((LeftDrawableButton)localObject).setOnClickListener(d(paramUser));
      if ((paramUser.isFeatureDisabled(FeatureSet.Feature.SEND_MESSAGE)) || (!Features.messaging.isEnabled())) {
        ((LeftDrawableButton)localObject).setVisibility(8);
      }
      if (paramUser.isFriend())
      {
        i.setVisibility(8);
        j.setText(getResources().getString(2131165586));
      }
      while (!paramUser.isFriendRequestPending()) {
        return;
      }
      i.setClickable(false);
      i.setBackgroundResource(2130837709);
      i.setText(getResources().getString(2131165866));
      i.setTextColor(getResources().getColor(2131361834));
      i.setImage(2130837576);
      return;
    }
    ((ViewGroup)localObject).setVisibility(8);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.UserProfileView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */