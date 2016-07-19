package com.kahuna.sdk.inapp;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.kahuna.sdk.h;
import com.kahuna.sdk.j;
import com.kahuna.sdk.l;
import com.kahuna.sdk.w;
import com.kahuna.sdk.z.a;
import com.kahuna.sdk.z.b;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

public class c
{
  private static final List<String> a = Arrays.asList(new String[] { "system", "fullscreen", "modal", "slider" });
  private static final List<Integer> b = Arrays.asList(new Integer[] { Integer.valueOf(1), Integer.valueOf(2) });
  private static final List<Integer> c = Arrays.asList(new Integer[] { Integer.valueOf(1) });
  private static final List<Integer> d = Arrays.asList(new Integer[] { Integer.valueOf(1) });
  private static c e;
  private static Context g;
  private RichInAppMessage f;
  private Dialog h;
  private Activity i;
  private Activity j;
  
  public static void a(Activity paramActivity)
  {
    if (fi != null)
    {
      f().a(fi, false);
      fi = null;
    }
    if (ff != null) {
      a(ff, paramActivity);
    }
    fj = paramActivity;
  }
  
  private void a(final Activity paramActivity, final RichInAppMessage paramRichInAppMessage)
  {
    if (paramRichInAppMessage.e() <= 0)
    {
      if (ff == paramRichInAppMessage) {
        ff = null;
      }
      return;
    }
    paramRichInAppMessage.f();
    paramActivity.runOnUiThread(new Runnable()
    {
      public void run()
      {
        LayoutInflater localLayoutInflater = paramActivity.getLayoutInflater();
        Object localObject3 = (d)paramRichInAppMessage.d().get(0);
        Object localObject2 = ((d)localObject3).b().toLowerCase();
        int j = ((d)localObject3).c();
        int i = j;
        Object localObject1 = localObject2;
        if (!c.a((d)localObject3, (String)localObject2, j))
        {
          j = ((d)localObject3).d();
          i = j;
          localObject1 = localObject2;
          if (!c.a((d)localObject3, (String)localObject2, j))
          {
            localObject1 = "system";
            i = 1;
          }
        }
        if (c.a().contains(localObject1)) {
          if ("fullscreen".equals(localObject1))
          {
            if (!c.b().contains(Integer.valueOf(i))) {
              break label1107;
            }
            if (i == 1)
            {
              localObject1 = localLayoutInflater.inflate(z.b.fullscreen_1, null);
              c.a(c.this, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
              c.a(c.this, (View)localObject1, (d)localObject3);
              c.a(c.this, (View)localObject1, z.a.title, ((d)localObject3).e());
              c.a(c.this, (View)localObject1, z.a.message, ((d)localObject3).f());
              c.a(c.this, (View)localObject1, z.a.leftButton, (a)((d)localObject3).h().get("button1"));
              c.a(c.this, (View)localObject1, z.a.rightButton, (a)((d)localObject3).h().get("button2"));
              localObject2 = new Dialog(paramActivity, 16973837);
              ((Dialog)localObject2).setContentView((View)localObject1);
              localObject1 = localObject2;
            }
          }
        }
        for (;;)
        {
          label281:
          if (localObject1 != null)
          {
            c.a(c.this, paramActivity, false);
            c.a(c.this, (Dialog)localObject1);
            c.b(c.this).setCancelable(false);
            ((Dialog)localObject1).setOnDismissListener(new DialogInterface.OnDismissListener()
            {
              public void onDismiss(DialogInterface paramAnonymous2DialogInterface)
              {
                c.a(c.e(), null);
              }
            });
            c.b(c.this).show();
            c.a(c.e(), paramActivity);
            if ((c.a(c.this) != null) || (!w.a(c.a(c.this).d())))
            {
              localObject1 = (d)c.a(c.this).d().get(0);
              localObject2 = new com.kahuna.sdk.d("k_iam_displayed");
              ((com.kahuna.sdk.d)localObject2).a("trackingId", c.a(c.this).a());
              ((com.kahuna.sdk.d)localObject2).a("templateId", ((d)localObject1).a());
              j.i().a(((com.kahuna.sdk.d)localObject2).a());
            }
          }
          label709:
          do
          {
            do
            {
              do
              {
                return;
              } while (i != 2);
              localObject1 = localLayoutInflater.inflate(z.b.fullscreen_2, null);
              c.a(c.this, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
              c.a(c.this, (View)localObject1, z.a.image2, (b)((d)localObject3).i().get("image2"));
              break;
              if (!"modal".equals(localObject1)) {
                break label709;
              }
              if (!c.c().contains(Integer.valueOf(i))) {
                break label1107;
              }
            } while (i != 1);
            localObject1 = localLayoutInflater.inflate(z.b.modal_1, null);
            c.a(c.this, (View)localObject1, (d)localObject3);
            c.a(c.this, (View)localObject1, z.a.title, ((d)localObject3).e());
            c.a(c.this, (View)localObject1, z.a.message, ((d)localObject3).f());
            c.a(c.this, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
            c.a(c.this, (View)localObject1, z.a.leftButton, (a)((d)localObject3).h().get("button1"));
            c.a(c.this, (View)localObject1, z.a.rightButton, (a)((d)localObject3).h().get("button2"));
            localObject2 = new AlertDialog.Builder(paramActivity);
            ((AlertDialog.Builder)localObject2).setView((View)localObject1);
            localObject1 = ((AlertDialog.Builder)localObject2).create();
            break label281;
            if (!"slider".equals(localObject1)) {
              break label977;
            }
            if (!c.d().contains(Integer.valueOf(i))) {
              break label1107;
            }
          } while (i != 1);
          localObject2 = localLayoutInflater.inflate(z.b.slider_1, null);
          localObject1 = ((View)localObject2).findViewById(z.a.sliderLayout);
          c.a(c.this, (View)localObject1, (d)localObject3);
          c.a(c.this, (View)localObject2, z.a.message, ((d)localObject3).f());
          c.a(c.this, (View)localObject2, z.a.image, (b)((d)localObject3).i().get("image1"));
          ((View)localObject1).setTag(((d)localObject3).h().get("button1"));
          ((View)localObject1).setBackgroundColor(((a)((d)localObject3).h().get("button1")).f());
          ((View)localObject1).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              paramAnonymous2View = (a)paramAnonymous2View.getTag();
              c.a(c.this, paramAnonymous2View);
            }
          });
          localObject1 = (a)((d)localObject3).h().get("close_button");
          localObject3 = (TextView)((View)localObject2).findViewById(z.a.closeTextView);
          ((TextView)localObject3).setTextColor(((a)localObject1).e());
          ((TextView)localObject3).setBackgroundColor(Color.argb(0, 255, 255, 255));
          ((TextView)localObject3).setTag(localObject1);
          ((TextView)localObject3).setOnClickListener(new View.OnClickListener()
          {
            public void onClick(View paramAnonymous2View)
            {
              paramAnonymous2View = (a)paramAnonymous2View.getTag();
              c.a(c.this, paramAnonymous2View);
            }
          });
          localObject1 = new Dialog(paramActivity, 16973837);
          ((Dialog)localObject1).setContentView((View)localObject2);
          ((Dialog)localObject1).getWindow().setBackgroundDrawable(new ColorDrawable(0));
          continue;
          label977:
          localObject1 = new AlertDialog.Builder(paramActivity);
          if ((((d)localObject3).e() != null) && (!w.a(((d)localObject3).e().a()))) {
            ((AlertDialog.Builder)localObject1).setTitle(((d)localObject3).e().a());
          }
          ((AlertDialog.Builder)localObject1).setMessage(((d)localObject3).f().a());
          ((AlertDialog.Builder)localObject1).setPositiveButton(((a)((d)localObject3).h().get("button1")).b(), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              try
              {
                if (c.a(c.this) != null)
                {
                  paramAnonymous2DialogInterface = (a)((d)c.a(c.this).d().get(0)).h().get("button1");
                  c.a(c.this, paramAnonymous2DialogInterface);
                }
                c.a(c.this, a, true);
                return;
              }
              catch (Throwable paramAnonymous2DialogInterface)
              {
                for (;;) {}
              }
            }
          });
          ((AlertDialog.Builder)localObject1).setNegativeButton(((a)((d)localObject3).h().get("button2")).b(), new DialogInterface.OnClickListener()
          {
            public void onClick(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              try
              {
                if (c.a(c.this) != null)
                {
                  paramAnonymous2DialogInterface = (a)((d)c.a(c.this).d().get(0)).h().get("button2");
                  c.a(c.this, paramAnonymous2DialogInterface);
                }
                c.a(c.this, a, true);
                return;
              }
              catch (Throwable paramAnonymous2DialogInterface)
              {
                for (;;) {}
              }
            }
          });
          localObject1 = ((AlertDialog.Builder)localObject1).create();
          continue;
          label1107:
          localObject1 = null;
        }
      }
    });
  }
  
  private void a(Activity paramActivity, final boolean paramBoolean)
  {
    if (paramActivity != null) {
      paramActivity.runOnUiThread(new Runnable()
      {
        public void run()
        {
          if (c.b(c.this) != null) {}
          try
          {
            c.b(c.this).setOnDismissListener(null);
            c.b(c.this).dismiss();
            c.a(c.this, null);
            if (paramBoolean) {
              c.a(c.e(), null);
            }
            return;
          }
          catch (Throwable localThrowable)
          {
            for (;;)
            {
              if (l.u()) {
                Log.e("Kahuna", "Caught exception dismissing In App Message dialog: " + localThrowable.getMessage());
              }
            }
          }
        }
      });
    }
  }
  
  public static void a(Context paramContext)
  {
    g = paramContext;
  }
  
  private void a(View paramView, int paramInt, a parama)
  {
    paramView = (Button)paramView.findViewById(paramInt);
    if (parama != null)
    {
      paramView.setText(parama.b());
      paramView.setTextColor(parama.e());
      paramView.setBackgroundColor(parama.f());
      paramView.setTag(parama);
      paramView.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (a)paramAnonymousView.getTag();
          c.a(c.this, paramAnonymousView);
        }
      });
      return;
    }
    paramView.setVisibility(8);
  }
  
  private void a(View paramView, int paramInt, b paramb)
  {
    ((ImageView)paramView.findViewById(paramInt)).setImageBitmap(paramb.b());
  }
  
  private void a(View paramView, int paramInt, e parame)
  {
    paramView = (TextView)paramView.findViewById(paramInt);
    paramView.setText(parame.a());
    paramView.setTextColor(parame.b());
  }
  
  private void a(View paramView, d paramd)
  {
    paramView.setBackgroundColor(paramd.g());
  }
  
  private static void a(RichInAppMessage paramRichInAppMessage, Activity paramActivity)
  {
    if (paramRichInAppMessage != null)
    {
      if (paramRichInAppMessage.j() != RichInAppMessage.State.UNPREPARED) {
        break label35;
      }
      paramRichInAppMessage.g();
      new a(paramRichInAppMessage).execute(new String[0]);
    }
    label35:
    while ((paramRichInAppMessage.j() != RichInAppMessage.State.PREPARED) || (paramActivity == null)) {
      return;
    }
    f().a(paramActivity, paramRichInAppMessage);
  }
  
  private void a(a parama)
  {
    if (parama != null) {}
    try
    {
      Object localObject = parama.c();
      if ((!w.a((String)localObject)) && ("url".equals(localObject)))
      {
        localObject = parama.d();
        if (!w.a((String)localObject))
        {
          localObject = new Intent("android.intent.action.VIEW", Uri.parse((String)localObject));
          j.startActivity((Intent)localObject);
        }
      }
      if ((f != null) && (!w.a(f.d())))
      {
        localObject = (d)f.d().get(0);
        com.kahuna.sdk.d locald = new com.kahuna.sdk.d("k_iam_clicked");
        locald.a("trackingId", f.a());
        locald.a("templateId", ((d)localObject).a());
        locald.a("button", parama.a());
        j.i().a(locald.a());
      }
    }
    catch (Throwable parama)
    {
      for (;;)
      {
        if (l.u()) {
          Log.e("Kahuna", "Caught exception trying to open Url: " + parama.getMessage());
        }
      }
    }
    a(j, true);
  }
  
  public static void a(JSONObject paramJSONObject)
  {
    if (w.a(paramJSONObject)) {
      if (l.u()) {
        Log.w("Kahuna", "Aborting attempt to process empty or null in app message " + paramJSONObject);
      }
    }
    for (;;)
    {
      return;
      try
      {
        if (l.u()) {
          Log.d("Kahuna", "Processing received Rich In App Message: " + paramJSONObject);
        }
        if (!w.a(paramJSONObject))
        {
          paramJSONObject = RichInAppMessage.a(paramJSONObject);
          if ((w.a(paramJSONObject)) || (!a(paramJSONObject))) {
            break label177;
          }
          if (ff != null)
          {
            if (!l.u()) {
              continue;
            }
            Log.d("Kahuna", "Already processing another in app message, ignoring recently received one.");
          }
        }
      }
      catch (Exception paramJSONObject)
      {
        paramJSONObject.printStackTrace();
        Log.e("Kahuna", "Caught exception in handle InAppMessage Response handler: " + paramJSONObject);
        return;
      }
    }
    ff = paramJSONObject;
    a(paramJSONObject, fj);
    return;
    label177:
    if (l.u()) {
      Log.d("Kahuna", "Unable to display Rich In App Message with missing or malformed data.");
    }
    b(paramJSONObject, "Missing or Malformed data.");
  }
  
  private static boolean a(RichInAppMessage paramRichInAppMessage)
  {
    if ((paramRichInAppMessage == null) || (w.a(paramRichInAppMessage.d()))) {
      return false;
    }
    long l1 = System.currentTimeMillis() / 1000L;
    long l2 = paramRichInAppMessage.b();
    if ((l2 > 0L) && (l2 < l1))
    {
      if (l.u()) {
        Log.d("Kahuna", "Unable to display expired Rich In App Message.");
      }
      b(paramRichInAppMessage, "Message expired.");
      return false;
    }
    if ((paramRichInAppMessage.c() != null) && (!w.d(paramRichInAppMessage.c())))
    {
      b(paramRichInAppMessage, "Bad credentials.");
      return false;
    }
    Iterator localIterator = paramRichInAppMessage.d().iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if ((!b(locald, locald.b(), locald.c())) && (!b(locald, locald.b(), locald.d())) && (!b(locald, "system", 1)))
      {
        if (l.u()) {
          Log.d("Kahuna", "Unable to display Rich In App Message with missing or malformed data.");
        }
        b(paramRichInAppMessage, "Missing or Malformed data.");
        return false;
      }
    }
    return true;
  }
  
  public static void b(Activity paramActivity)
  {
    if (fi == paramActivity) {
      f().a(paramActivity, false);
    }
    if (fj == paramActivity) {
      fj = null;
    }
  }
  
  private static void b(RichInAppMessage paramRichInAppMessage, String paramString)
  {
    com.kahuna.sdk.d locald = new com.kahuna.sdk.d("k_iam_not_displayed");
    locald.a("reason", paramString);
    if (!w.a(paramRichInAppMessage))
    {
      locald.a("trackingId", paramRichInAppMessage.a());
      if (!w.a(paramRichInAppMessage.d())) {
        locald.a("templateId", ((d)paramRichInAppMessage.d().get(0)).a());
      }
    }
    j.i().a(locald.a());
  }
  
  private static boolean b(d paramd, String paramString, int paramInt)
  {
    if ((paramd == null) || (w.a(paramString)) || (!a.contains(paramString))) {
      return false;
    }
    if ("fullscreen".equals(paramString))
    {
      if (!b.contains(Integer.valueOf(paramInt))) {
        return false;
      }
      if ((w.a(paramd.e())) || (w.a(paramd.f())) || (w.a(paramd.i())) || (w.a(paramd.h()))) {
        return false;
      }
      if ((w.a((a)paramd.h().get("button1"))) || (w.a((a)paramd.h().get("button2")))) {
        return false;
      }
      switch (paramInt)
      {
      default: 
        return false;
      case 1: 
        if (!w.a((b)paramd.i().get("image1"))) {
          break;
        }
        return false;
      case 2: 
        if ((!w.a((b)paramd.i().get("image1"))) && (!w.a((b)paramd.i().get("image2")))) {
          break;
        }
        return false;
      }
    }
    else if ("modal".equals(paramString))
    {
      if (!c.contains(Integer.valueOf(paramInt))) {
        return false;
      }
      if ((w.a(paramd.e())) || (w.a(paramd.f())) || (w.a(paramd.i())) || (w.a(paramd.h()))) {
        return false;
      }
      if (w.a((b)paramd.i().get("image1"))) {
        return false;
      }
      switch (paramInt)
      {
      default: 
        return false;
      }
      if ((w.a((a)paramd.h().get("button1"))) || (w.a((a)paramd.h().get("button2")))) {
        return false;
      }
    }
    else if ("slider".equals(paramString))
    {
      if (!d.contains(Integer.valueOf(paramInt))) {
        return false;
      }
      if ((w.a(paramd.f())) || (w.a(paramd.i())) || (w.a(paramd.h()))) {
        return false;
      }
      if (w.a((b)paramd.i().get("image1"))) {
        return false;
      }
      if ((paramd.h().get("button1") == null) || (paramd.h().get("close_button") == null)) {
        return false;
      }
    }
    else
    {
      if ((w.a(paramd.f())) || (w.a(paramd.h()))) {
        return false;
      }
      if (w.a((a)paramd.h().get("button1"))) {
        return false;
      }
    }
    return true;
  }
  
  private static c f()
  {
    if (e == null) {
      e = new c();
    }
    return e;
  }
  
  private static class a
    extends AsyncTask<String, Void, Boolean>
  {
    private RichInAppMessage a;
    
    public a(RichInAppMessage paramRichInAppMessage)
    {
      a = paramRichInAppMessage;
    }
    
    protected Boolean a(String... paramVarArgs)
    {
      Iterator localIterator1 = a.d().iterator();
      boolean bool1 = true;
      boolean bool2 = bool1;
      label56:
      Object localObject5;
      int i;
      label98:
      Object localObject1;
      Object localObject6;
      Bitmap localBitmap;
      if (localIterator1.hasNext())
      {
        Iterator localIterator2 = ((d)localIterator1.next()).i().values().iterator();
        for (;;)
        {
          if (localIterator2.hasNext())
          {
            b localb = (b)localIterator2.next();
            if (localb.b() == null)
            {
              localObject5 = null;
              String str = localb.a();
              i = 3;
              if (i > 0)
              {
                if (l.u()) {
                  Log.d("Kahuna", "Starting attempt to download In App image: " + str + ". Remaining retries: " + i);
                }
                paramVarArgs = (String[])localObject5;
                localObject1 = localObject5;
                localObject6 = localObject5;
                for (;;)
                {
                  try
                  {
                    URL localURL = new URL(str);
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    if (l.u())
                    {
                      paramVarArgs = (String[])localObject5;
                      localObject1 = localObject5;
                      localObject6 = localObject5;
                      Log.d("Kahuna", "Beginning download of image url: " + localURL.toString());
                    }
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    localObject5 = localURL.openStream();
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    localBitmap = BitmapFactory.decodeStream((InputStream)localObject5);
                    paramVarArgs = (String[])localObject5;
                    localObject1 = localObject5;
                    localObject6 = localObject5;
                    if (l.u())
                    {
                      paramVarArgs = (String[])localObject5;
                      localObject1 = localObject5;
                      localObject6 = localObject5;
                      Log.d("Kahuna", "Image downloaded at url: " + localURL.toString());
                    }
                    if (localObject5 == null) {
                      break label681;
                    }
                  }
                  catch (Error localError)
                  {
                    localObject6 = paramVarArgs;
                    Log.e("Kahuna", "Error downloading In App Image: " + localError);
                    localObject6 = paramVarArgs;
                    Log.e("Kahuna", "Will not retry downloading image.");
                    j = 0;
                    bool2 = false;
                    localObject5 = paramVarArgs;
                    if (paramVarArgs == null) {
                      break label666;
                    }
                    try
                    {
                      paramVarArgs.close();
                      localObject2 = null;
                      i = 0;
                      bool1 = false;
                    }
                    catch (IOException localIOException1)
                    {
                      localIOException1.printStackTrace();
                      localObject3 = null;
                      i = 0;
                      bool1 = false;
                    }
                    continue;
                  }
                  catch (Exception paramVarArgs)
                  {
                    label332:
                    label344:
                    localObject6 = localObject3;
                    Log.e("Kahuna", "Exception downloading Push Background Image: " + paramVarArgs);
                    localObject5 = localObject3;
                    j = i;
                    bool2 = bool1;
                    if (localObject3 == null) {
                      break label666;
                    }
                    try
                    {
                      ((InputStream)localObject3).close();
                      localObject5 = null;
                      paramVarArgs = (String[])localObject3;
                      localObject3 = localObject5;
                    }
                    catch (IOException paramVarArgs)
                    {
                      paramVarArgs.printStackTrace();
                      localObject5 = null;
                      paramVarArgs = (String[])localObject3;
                      localObject3 = localObject5;
                    }
                    continue;
                  }
                  finally
                  {
                    if (localObject6 == null) {
                      continue;
                    }
                    try
                    {
                      ((InputStream)localObject6).close();
                      throw paramVarArgs;
                    }
                    catch (IOException localIOException2)
                    {
                      localIOException2.printStackTrace();
                      continue;
                    }
                    i -= 1;
                    localObject5 = paramVarArgs;
                  }
                  try
                  {
                    ((InputStream)localObject5).close();
                    localObject1 = localBitmap;
                    paramVarArgs = (String[])localObject5;
                  }
                  catch (IOException paramVarArgs)
                  {
                    paramVarArgs.printStackTrace();
                    localObject1 = localBitmap;
                    paramVarArgs = (String[])localObject5;
                  }
                }
                if (localObject1 != null)
                {
                  localb.a((Bitmap)localObject1);
                  if (i > 0) {
                    break label664;
                  }
                  bool1 = false;
                }
              }
            }
          }
        }
      }
      for (;;)
      {
        int j;
        if (!bool1)
        {
          bool2 = bool1;
          if (bool2) {
            break label657;
          }
          paramVarArgs = a.d().iterator();
          while (paramVarArgs.hasNext())
          {
            localObject1 = ((d)paramVarArgs.next()).i().values().iterator();
            while (((Iterator)localObject1).hasNext()) {
              ((b)((Iterator)localObject1).next()).a(null);
            }
          }
          Object localObject2;
          Object localObject3;
          break label98;
        }
        break;
        label657:
        return Boolean.valueOf(bool2);
        break label344;
        label664:
        break label56;
        label666:
        Object localObject4 = null;
        i = j;
        bool1 = bool2;
        paramVarArgs = (String[])localObject5;
        break label332;
        label681:
        localObject4 = localBitmap;
        paramVarArgs = (String[])localObject5;
        break label332;
      }
    }
    
    protected void a(Boolean paramBoolean)
    {
      if (paramBoolean == Boolean.TRUE)
      {
        a.h();
        if (c.c(c.e()) != null) {
          c.a(c.e(), c.c(c.e()), a);
        }
      }
      do
      {
        return;
        a.i();
        c.a(a, "Failed to download images.");
      } while (c.a(c.e()) != a);
      c.a(c.e(), null);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */