package com.facebook.login;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.support.v4.app.Fragment;
import com.facebook.AccessToken;
import com.facebook.FacebookActivity;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookException;
import com.facebook.Profile;
import com.facebook.f;
import com.facebook.g;
import com.facebook.internal.CallbackManagerImpl;
import com.facebook.internal.CallbackManagerImpl.RequestCodeOffset;
import com.facebook.internal.CallbackManagerImpl.a;
import com.facebook.internal.v;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

public class c
{
  private static final Set<String> a = ;
  private static volatile c b;
  private LoginBehavior c = LoginBehavior.SSO_WITH_FALLBACK;
  private DefaultAudience d = DefaultAudience.FRIENDS;
  private LoginClient.Request e;
  private HashMap<String, String> f;
  private Context g;
  private b h;
  
  c()
  {
    v.b();
  }
  
  private Intent a(LoginClient.Request paramRequest)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(g.f(), FacebookActivity.class);
    localIntent.setAction(paramRequest.b().toString());
    localIntent.putExtras(LoginFragment.a(paramRequest));
    return localIntent;
  }
  
  public static c a()
  {
    if (b == null) {}
    try
    {
      if (b == null) {
        b = new c();
      }
      return b;
    }
    finally {}
  }
  
  static d a(LoginClient.Request paramRequest, AccessToken paramAccessToken)
  {
    Set localSet = paramRequest.a();
    HashSet localHashSet = new HashSet(paramAccessToken.d());
    if (paramRequest.f()) {
      localHashSet.retainAll(localSet);
    }
    paramRequest = new HashSet(localSet);
    paramRequest.removeAll(localHashSet);
    return new d(paramAccessToken, localHashSet, paramRequest);
  }
  
  private void a(AccessToken paramAccessToken, FacebookException paramFacebookException, boolean paramBoolean, f<d> paramf)
  {
    if (paramAccessToken != null)
    {
      AccessToken.a(paramAccessToken);
      Profile.b();
    }
    d locald;
    if (paramf != null)
    {
      if (paramAccessToken == null) {
        break label60;
      }
      locald = a(e, paramAccessToken);
      if ((!paramBoolean) && ((locald == null) || (locald.a().size() != 0))) {
        break label66;
      }
      paramf.a();
    }
    label60:
    label66:
    do
    {
      return;
      locald = null;
      break;
      if (paramFacebookException != null)
      {
        paramf.a(paramFacebookException);
        return;
      }
    } while (paramAccessToken == null);
    paramf.a(locald);
  }
  
  private void a(LoginClient.Result.Code paramCode, Map<String, String> paramMap, Exception paramException)
  {
    if (e == null)
    {
      d().b("fb_mobile_login_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.");
      return;
    }
    d().a(e.e(), f, paramCode, paramMap, paramException);
  }
  
  private void a(e parame, LoginClient.Request paramRequest)
    throws FacebookException
  {
    e = paramRequest;
    f = new HashMap();
    g = parame.a();
    e();
    CallbackManagerImpl.a(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.a()
    {
      public boolean a(int paramAnonymousInt, Intent paramAnonymousIntent)
      {
        return c.this.a(paramAnonymousInt, paramAnonymousIntent);
      }
    });
    boolean bool = b(parame, paramRequest);
    paramRequest = f;
    if (bool) {}
    for (parame = "1";; parame = "0")
    {
      paramRequest.put("try_login_activity", parame);
      if (bool) {
        break;
      }
      parame = new FacebookException("Log in attempt failed: FacebookActivity could not be started. Please make sure you added FacebookActivity to the AndroidManifest.");
      a(LoginClient.Result.Code.ERROR, null, parame);
      e = null;
      throw parame;
    }
  }
  
  private void a(Collection<String> paramCollection)
  {
    if (paramCollection == null) {}
    String str;
    do
    {
      return;
      while (!paramCollection.hasNext()) {
        paramCollection = paramCollection.iterator();
      }
      str = (String)paramCollection.next();
    } while (!a(str));
    throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] { str }));
  }
  
  private boolean a(Intent paramIntent)
  {
    return g.f().getPackageManager().resolveActivity(paramIntent, 0) != null;
  }
  
  static boolean a(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("publish")) || (paramString.startsWith("manage")) || (a.contains(paramString)));
  }
  
  private void b(Collection<String> paramCollection)
  {
    if (paramCollection == null) {}
    String str;
    do
    {
      return;
      while (!paramCollection.hasNext()) {
        paramCollection = paramCollection.iterator();
      }
      str = (String)paramCollection.next();
    } while (a(str));
    throw new FacebookException(String.format("Cannot pass a read permission (%s) to a request for publish authorization", new Object[] { str }));
  }
  
  private boolean b(e parame, LoginClient.Request paramRequest)
  {
    paramRequest = a(paramRequest);
    if (!a(paramRequest)) {
      return false;
    }
    try
    {
      parame.a(paramRequest, LoginClient.d());
      return true;
    }
    catch (ActivityNotFoundException parame) {}
    return false;
  }
  
  private LoginClient.Request c(Collection<String> paramCollection)
  {
    LoginBehavior localLoginBehavior = c;
    if (paramCollection != null)
    {
      paramCollection = new HashSet(paramCollection);
      paramCollection = new LoginClient.Request(localLoginBehavior, Collections.unmodifiableSet(paramCollection), d, g.h(), UUID.randomUUID().toString());
      if (AccessToken.a() == null) {
        break label70;
      }
    }
    label70:
    for (boolean bool = true;; bool = false)
    {
      paramCollection.a(bool);
      return paramCollection;
      paramCollection = new HashSet();
      break;
    }
  }
  
  private static Set<String> c()
  {
    return Collections.unmodifiableSet(new LoginManager.2());
  }
  
  private b d()
  {
    if ((h == null) || (!h.a().equals(e.d()))) {
      h = new b(g, e.d());
    }
    return h;
  }
  
  private void e()
  {
    d().a(e);
  }
  
  public c a(DefaultAudience paramDefaultAudience)
  {
    d = paramDefaultAudience;
    return this;
  }
  
  public c a(LoginBehavior paramLoginBehavior)
  {
    c = paramLoginBehavior;
    return this;
  }
  
  public void a(Activity paramActivity, Collection<String> paramCollection)
  {
    a(paramCollection);
    paramCollection = c(paramCollection);
    a(new a(paramActivity), paramCollection);
  }
  
  public void a(Fragment paramFragment, Collection<String> paramCollection)
  {
    a(paramCollection);
    paramCollection = c(paramCollection);
    a(new b(paramFragment), paramCollection);
  }
  
  public void a(com.facebook.d paramd, final f<d> paramf)
  {
    if (!(paramd instanceof CallbackManagerImpl)) {
      throw new FacebookException("Unexpected CallbackManager, please use the provided Factory.");
    }
    ((CallbackManagerImpl)paramd).b(CallbackManagerImpl.RequestCodeOffset.Login.toRequestCode(), new CallbackManagerImpl.a()
    {
      public boolean a(int paramAnonymousInt, Intent paramAnonymousIntent)
      {
        return a(paramAnonymousInt, paramAnonymousIntent, paramf);
      }
    });
  }
  
  boolean a(int paramInt, Intent paramIntent)
  {
    return a(paramInt, paramIntent, null);
  }
  
  boolean a(int paramInt, Intent paramIntent, f<d> paramf)
  {
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool1 = false;
    Object localObject4 = null;
    Object localObject3 = null;
    Object localObject2 = null;
    if (e == null) {
      return false;
    }
    Object localObject1 = LoginClient.Result.Code.ERROR;
    if (paramIntent != null)
    {
      localObject3 = (LoginClient.Result)paramIntent.getParcelableExtra("com.facebook.LoginFragment:Result");
      if (localObject3 == null) {
        break label255;
      }
      localObject4 = a;
      if (paramInt == -1) {
        if (a == LoginClient.Result.Code.SUCCESS)
        {
          paramIntent = b;
          localObject1 = localObject2;
          localObject2 = f;
          localObject3 = localObject1;
          localObject1 = localObject2;
          localObject2 = paramIntent;
          paramIntent = (Intent)localObject4;
        }
      }
    }
    for (;;)
    {
      localObject4 = localObject3;
      localObject3 = localObject1;
      localObject1 = paramIntent;
      paramIntent = (Intent)localObject4;
      for (;;)
      {
        localObject4 = paramIntent;
        if (paramIntent == null)
        {
          localObject4 = paramIntent;
          if (localObject2 == null)
          {
            localObject4 = paramIntent;
            if (!bool1) {
              localObject4 = new FacebookException("Unexpected call to LoginManager.onActivityResult");
            }
          }
        }
        a((LoginClient.Result.Code)localObject1, (Map)localObject3, (Exception)localObject4);
        a((AccessToken)localObject2, (FacebookException)localObject4, bool1, paramf);
        return true;
        localObject1 = new FacebookAuthorizationException(c);
        paramIntent = null;
        break;
        if (paramInt != 0) {
          break label246;
        }
        bool1 = true;
        paramIntent = null;
        localObject1 = localObject2;
        break;
        if (paramInt == 0)
        {
          localObject1 = LoginClient.Result.Code.CANCEL;
          bool1 = true;
          localObject2 = null;
          paramIntent = null;
        }
        else
        {
          localObject2 = null;
          paramIntent = null;
          bool1 = bool3;
        }
      }
      label246:
      paramIntent = null;
      localObject1 = localObject2;
      break;
      label255:
      paramIntent = (Intent)localObject1;
      localObject3 = null;
      localObject2 = null;
      bool1 = bool2;
      localObject1 = localObject4;
    }
  }
  
  public void b()
  {
    AccessToken.a(null);
    Profile.a(null);
  }
  
  public void b(Activity paramActivity, Collection<String> paramCollection)
  {
    b(paramCollection);
    paramCollection = c(paramCollection);
    a(new a(paramActivity), paramCollection);
  }
  
  public void b(Fragment paramFragment, Collection<String> paramCollection)
  {
    b(paramCollection);
    paramCollection = c(paramCollection);
    a(new b(paramFragment), paramCollection);
  }
  
  private static class a
    implements e
  {
    private final Activity a;
    
    a(Activity paramActivity)
    {
      v.a(paramActivity, "activity");
      a = paramActivity;
    }
    
    public Activity a()
    {
      return a;
    }
    
    public void a(Intent paramIntent, int paramInt)
    {
      a.startActivityForResult(paramIntent, paramInt);
    }
  }
  
  private static class b
    implements e
  {
    private final Fragment a;
    
    b(Fragment paramFragment)
    {
      v.a(paramFragment, "fragment");
      a = paramFragment;
    }
    
    public Activity a()
    {
      return a.getActivity();
    }
    
    public void a(Intent paramIntent, int paramInt)
    {
      a.startActivityForResult(paramIntent, paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */