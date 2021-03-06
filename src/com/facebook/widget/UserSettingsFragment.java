package com.facebook.widget;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.facebook.Request;
import com.facebook.Session;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.android.R.color;
import com.facebook.android.R.dimen;
import com.facebook.android.R.drawable;
import com.facebook.android.R.id;
import com.facebook.android.R.layout;
import com.facebook.android.R.string;
import com.facebook.internal.ImageDownloader;
import com.facebook.internal.ImageRequest;
import com.facebook.internal.ImageRequest.Builder;
import com.facebook.internal.ImageResponse;
import com.facebook.model.GraphUser;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.List;

public class UserSettingsFragment
  extends FacebookFragment
{
  private static final String FIELDS = "fields";
  private static final String ID = "id";
  private static final String NAME = "name";
  private static final String PICTURE = "picture";
  private static final String REQUEST_FIELDS = TextUtils.join(",", new String[] { "id", "name", "picture" });
  private TextView connectedStateLabel;
  private LoginButton loginButton;
  private LoginButton.LoginButtonProperties loginButtonProperties = new LoginButton.LoginButtonProperties();
  private Session.StatusCallback sessionStatusCallback;
  private GraphUser user;
  private Session userInfoSession;
  private Drawable userProfilePic;
  private String userProfilePicID;
  
  private void fetchUserInfo()
  {
    Session localSession = getSession();
    if ((localSession != null) && (localSession.isOpened()))
    {
      if (localSession != userInfoSession)
      {
        Request localRequest = Request.newMeRequest(localSession, new UserSettingsFragment.1(this, localSession));
        Bundle localBundle = new Bundle();
        localBundle.putString("fields", REQUEST_FIELDS);
        localRequest.setParameters(localBundle);
        Request.executeBatchAsync(new Request[] { localRequest });
        userInfoSession = localSession;
      }
      return;
    }
    user = null;
  }
  
  private ImageRequest getImageRequest()
  {
    try
    {
      ImageRequest localImageRequest = new ImageRequest.Builder(getActivity(), ImageRequest.getProfilePictureUrl(user.getId(), getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_width), getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_height))).setCallerTag(this).setCallback(new UserSettingsFragment.2(this)).build();
      return localImageRequest;
    }
    catch (URISyntaxException localURISyntaxException) {}
    return null;
  }
  
  private void processImageResponse(String paramString, ImageResponse paramImageResponse)
  {
    if (paramImageResponse != null)
    {
      Object localObject = paramImageResponse.getBitmap();
      if (localObject != null)
      {
        localObject = new BitmapDrawable(getResources(), (Bitmap)localObject);
        ((BitmapDrawable)localObject).setBounds(0, 0, getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_width), getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_height));
        userProfilePic = ((Drawable)localObject);
        userProfilePicID = paramString;
        connectedStateLabel.setCompoundDrawables(null, (Drawable)localObject, null, null);
        connectedStateLabel.setTag(paramImageResponse.getRequest().getImageUri());
      }
    }
  }
  
  private void updateUI()
  {
    if (!isAdded()) {
      return;
    }
    if (isSessionOpen())
    {
      connectedStateLabel.setTextColor(getResources().getColor(R.color.com_facebook_usersettingsfragment_connected_text_color));
      connectedStateLabel.setShadowLayer(1.0F, 0.0F, -1.0F, getResources().getColor(R.color.com_facebook_usersettingsfragment_connected_shadow_color));
      if (user != null)
      {
        localObject = getImageRequest();
        if (localObject != null)
        {
          URI localURI = ((ImageRequest)localObject).getImageUri();
          if (!localURI.equals(connectedStateLabel.getTag()))
          {
            if (!user.getId().equals(userProfilePicID)) {
              break label146;
            }
            connectedStateLabel.setCompoundDrawables(null, userProfilePic, null, null);
            connectedStateLabel.setTag(localURI);
          }
        }
        for (;;)
        {
          connectedStateLabel.setText(user.getName());
          return;
          label146:
          ImageDownloader.downloadAsync((ImageRequest)localObject);
        }
      }
      connectedStateLabel.setText(getResources().getString(R.string.com_facebook_usersettingsfragment_logged_in));
      Object localObject = getResources().getDrawable(R.drawable.com_facebook_profile_default_icon);
      ((Drawable)localObject).setBounds(0, 0, getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_width), getResources().getDimensionPixelSize(R.dimen.com_facebook_usersettingsfragment_profile_picture_height));
      connectedStateLabel.setCompoundDrawables(null, (Drawable)localObject, null, null);
      return;
    }
    int i = getResources().getColor(R.color.com_facebook_usersettingsfragment_not_connected_text_color);
    connectedStateLabel.setTextColor(i);
    connectedStateLabel.setShadowLayer(0.0F, 0.0F, 0.0F, i);
    connectedStateLabel.setText(getResources().getString(R.string.com_facebook_usersettingsfragment_not_logged_in));
    connectedStateLabel.setCompoundDrawables(null, null, null, null);
    connectedStateLabel.setTag(null);
  }
  
  public void clearPermissions()
  {
    loginButtonProperties.clearPermissions();
  }
  
  public SessionDefaultAudience getDefaultAudience()
  {
    return loginButtonProperties.getDefaultAudience();
  }
  
  public SessionLoginBehavior getLoginBehavior()
  {
    return loginButtonProperties.getLoginBehavior();
  }
  
  public LoginButton.OnErrorListener getOnErrorListener()
  {
    return loginButtonProperties.getOnErrorListener();
  }
  
  List<String> getPermissions()
  {
    return loginButtonProperties.getPermissions();
  }
  
  public Session.StatusCallback getSessionStatusCallback()
  {
    return sessionStatusCallback;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(R.layout.com_facebook_usersettingsfragment, paramViewGroup, false);
    loginButton = ((LoginButton)paramLayoutInflater.findViewById(R.id.com_facebook_usersettingsfragment_login_button));
    loginButton.setProperties(loginButtonProperties);
    loginButton.setFragment(this);
    loginButton.setLoginLogoutEventName("fb_user_settings_vc_usage");
    paramViewGroup = getSession();
    if ((paramViewGroup != null) && (!paramViewGroup.equals(Session.getActiveSession()))) {
      loginButton.setSession(paramViewGroup);
    }
    connectedStateLabel = ((TextView)paramLayoutInflater.findViewById(R.id.com_facebook_usersettingsfragment_profile_name));
    if (paramLayoutInflater.getBackground() == null)
    {
      paramLayoutInflater.setBackgroundColor(getResources().getColor(R.color.com_facebook_blue));
      return paramLayoutInflater;
    }
    paramLayoutInflater.getBackground().setDither(true);
    return paramLayoutInflater;
  }
  
  public void onResume()
  {
    super.onResume();
    fetchUserInfo();
    updateUI();
  }
  
  protected void onSessionStateChange(SessionState paramSessionState, Exception paramException)
  {
    fetchUserInfo();
    updateUI();
    if (sessionStatusCallback != null) {
      sessionStatusCallback.call(getSession(), paramSessionState, paramException);
    }
  }
  
  public void setDefaultAudience(SessionDefaultAudience paramSessionDefaultAudience)
  {
    loginButtonProperties.setDefaultAudience(paramSessionDefaultAudience);
  }
  
  public void setLoginBehavior(SessionLoginBehavior paramSessionLoginBehavior)
  {
    loginButtonProperties.setLoginBehavior(paramSessionLoginBehavior);
  }
  
  public void setOnErrorListener(LoginButton.OnErrorListener paramOnErrorListener)
  {
    loginButtonProperties.setOnErrorListener(paramOnErrorListener);
  }
  
  public void setPublishPermissions(List<String> paramList)
  {
    loginButtonProperties.setPublishPermissions(paramList, getSession());
  }
  
  public void setPublishPermissions(String... paramVarArgs)
  {
    loginButtonProperties.setPublishPermissions(Arrays.asList(paramVarArgs), getSession());
  }
  
  public void setReadPermissions(List<String> paramList)
  {
    loginButtonProperties.setReadPermissions(paramList, getSession());
  }
  
  public void setReadPermissions(String... paramVarArgs)
  {
    loginButtonProperties.setReadPermissions(Arrays.asList(paramVarArgs), getSession());
  }
  
  public void setSession(Session paramSession)
  {
    super.setSession(paramSession);
    if (loginButton != null) {
      loginButton.setSession(paramSession);
    }
    fetchUserInfo();
    updateUI();
  }
  
  public void setSessionStatusCallback(Session.StatusCallback paramStatusCallback)
  {
    sessionStatusCallback = paramStatusCallback;
  }
}

/* Location:
 * Qualified Name:     com.facebook.widget.UserSettingsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */