package com.kahuna.sdk.inapp;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.widget.TextView;
import com.kahuna.sdk.h;
import com.kahuna.sdk.j;
import com.kahuna.sdk.w;
import com.kahuna.sdk.z.a;
import com.kahuna.sdk.z.b;
import java.util.List;
import java.util.Map;

class c$1
  implements Runnable
{
  c$1(c paramc, Activity paramActivity, RichInAppMessage paramRichInAppMessage) {}
  
  public void run()
  {
    LayoutInflater localLayoutInflater = a.getLayoutInflater();
    Object localObject3 = (d)b.d().get(0);
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
          c.a(c, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
          c.a(c, (View)localObject1, (d)localObject3);
          c.a(c, (View)localObject1, z.a.title, ((d)localObject3).e());
          c.a(c, (View)localObject1, z.a.message, ((d)localObject3).f());
          c.a(c, (View)localObject1, z.a.leftButton, (a)((d)localObject3).h().get("button1"));
          c.a(c, (View)localObject1, z.a.rightButton, (a)((d)localObject3).h().get("button2"));
          localObject2 = new Dialog(a, 16973837);
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
        c.a(c, a, false);
        c.a(c, (Dialog)localObject1);
        c.b(c).setCancelable(false);
        ((Dialog)localObject1).setOnDismissListener(new DialogInterface.OnDismissListener()
        {
          public void onDismiss(DialogInterface paramAnonymousDialogInterface)
          {
            c.a(c.e(), null);
          }
        });
        c.b(c).show();
        c.a(c.e(), a);
        if ((c.a(c) != null) || (!w.a(c.a(c).d())))
        {
          localObject1 = (d)c.a(c).d().get(0);
          localObject2 = new com.kahuna.sdk.d("k_iam_displayed");
          ((com.kahuna.sdk.d)localObject2).a("trackingId", c.a(c).a());
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
          c.a(c, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
          c.a(c, (View)localObject1, z.a.image2, (b)((d)localObject3).i().get("image2"));
          break;
          if (!"modal".equals(localObject1)) {
            break label709;
          }
          if (!c.c().contains(Integer.valueOf(i))) {
            break label1107;
          }
        } while (i != 1);
        localObject1 = localLayoutInflater.inflate(z.b.modal_1, null);
        c.a(c, (View)localObject1, (d)localObject3);
        c.a(c, (View)localObject1, z.a.title, ((d)localObject3).e());
        c.a(c, (View)localObject1, z.a.message, ((d)localObject3).f());
        c.a(c, (View)localObject1, z.a.image, (b)((d)localObject3).i().get("image1"));
        c.a(c, (View)localObject1, z.a.leftButton, (a)((d)localObject3).h().get("button1"));
        c.a(c, (View)localObject1, z.a.rightButton, (a)((d)localObject3).h().get("button2"));
        localObject2 = new AlertDialog.Builder(a);
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
      c.a(c, (View)localObject1, (d)localObject3);
      c.a(c, (View)localObject2, z.a.message, ((d)localObject3).f());
      c.a(c, (View)localObject2, z.a.image, (b)((d)localObject3).i().get("image1"));
      ((View)localObject1).setTag(((d)localObject3).h().get("button1"));
      ((View)localObject1).setBackgroundColor(((a)((d)localObject3).h().get("button1")).f());
      ((View)localObject1).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (a)paramAnonymousView.getTag();
          c.a(c, paramAnonymousView);
        }
      });
      localObject1 = (a)((d)localObject3).h().get("close_button");
      localObject3 = (TextView)((View)localObject2).findViewById(z.a.closeTextView);
      ((TextView)localObject3).setTextColor(((a)localObject1).e());
      ((TextView)localObject3).setBackgroundColor(Color.argb(0, 255, 255, 255));
      ((TextView)localObject3).setTag(localObject1);
      ((TextView)localObject3).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          paramAnonymousView = (a)paramAnonymousView.getTag();
          c.a(c, paramAnonymousView);
        }
      });
      localObject1 = new Dialog(a, 16973837);
      ((Dialog)localObject1).setContentView((View)localObject2);
      ((Dialog)localObject1).getWindow().setBackgroundDrawable(new ColorDrawable(0));
      continue;
      label977:
      localObject1 = new AlertDialog.Builder(a);
      if ((((d)localObject3).e() != null) && (!w.a(((d)localObject3).e().a()))) {
        ((AlertDialog.Builder)localObject1).setTitle(((d)localObject3).e().a());
      }
      ((AlertDialog.Builder)localObject1).setMessage(((d)localObject3).f().a());
      ((AlertDialog.Builder)localObject1).setPositiveButton(((a)((d)localObject3).h().get("button1")).b(), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          try
          {
            if (c.a(c) != null)
            {
              paramAnonymousDialogInterface = (a)((d)c.a(c).d().get(0)).h().get("button1");
              c.a(c, paramAnonymousDialogInterface);
            }
            c.a(c, a, true);
            return;
          }
          catch (Throwable paramAnonymousDialogInterface)
          {
            for (;;) {}
          }
        }
      });
      ((AlertDialog.Builder)localObject1).setNegativeButton(((a)((d)localObject3).h().get("button2")).b(), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          try
          {
            if (c.a(c) != null)
            {
              paramAnonymousDialogInterface = (a)((d)c.a(c).d().get(0)).h().get("button2");
              c.a(c, paramAnonymousDialogInterface);
            }
            c.a(c, a, true);
            return;
          }
          catch (Throwable paramAnonymousDialogInterface)
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
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.inapp.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */