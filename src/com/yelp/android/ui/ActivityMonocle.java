package com.yelp.android.ui;

import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.hardware.Camera;
import android.opengl.GLSurfaceView;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import android.util.Log;
import android.view.Menu;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.serializable.Category;
import com.yelp.android.ui.activities.support.YelpActivity;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.util.as;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

public class ActivityMonocle
  extends YelpActivity
  implements b.e
{
  static Dialog a;
  public a b;
  public ImageView c;
  public int d;
  private j e;
  private GLSurfaceView f;
  private ViewGroup g;
  private l h;
  private MonocleEngine i;
  private h j;
  private g k;
  private b l;
  private Camera m;
  
  private void c()
  {
    d();
    l = new b(null);
    l.execute(new Void[0]);
  }
  
  private void d()
  {
    e.a(null);
    e();
    if (m != null)
    {
      m.release();
      m = null;
    }
  }
  
  private void e()
  {
    if ((l != null) && (l.getStatus() == AsyncTask.Status.RUNNING)) {
      Log.w("Monocle", "Old camera retriever still resident, let's clean it up");
    }
    try
    {
      if (!l.cancel(true)) {
        l.get();
      }
      l = null;
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;)
      {
        Log.w("Monocle", "interrupted exception occurred", localInterruptedException);
      }
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;)
      {
        Log.w("Monocle", "excution exception occurred", localExecutionException);
      }
    }
    catch (CancellationException localCancellationException)
    {
      for (;;) {}
    }
  }
  
  public void a()
  {
    onProvidersRequired(this, false, 0);
  }
  
  public void a(boolean paramBoolean)
  {
    finish();
  }
  
  public void b()
  {
    j.b();
  }
  
  public ViewIri getIri()
  {
    return ViewIri.Monocle;
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 156	com/yelp/android/ui/activities/support/YelpActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: sipush 250
    //   9: iconst_1
    //   10: anewarray 158	com/yelp/android/appdata/PermissionGroup
    //   13: dup
    //   14: iconst_0
    //   15: getstatic 162	com/yelp/android/appdata/PermissionGroup:CAMERA	Lcom/yelp/android/appdata/PermissionGroup;
    //   18: aastore
    //   19: invokestatic 167	com/yelp/android/appdata/k:a	(Landroid/app/Activity;I[Lcom/yelp/android/appdata/PermissionGroup;)Z
    //   22: pop
    //   23: aload_0
    //   24: new 169	com/yelp/android/ui/MonocleEngine
    //   27: dup
    //   28: invokespecial 170	com/yelp/android/ui/MonocleEngine:<init>	()V
    //   31: putfield 172	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   34: aload_0
    //   35: getfield 172	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   38: invokevirtual 175	com/yelp/android/ui/MonocleEngine:ClearObjects	()V
    //   41: aload_0
    //   42: invokevirtual 179	com/yelp/android/ui/ActivityMonocle:getWindow	()Landroid/view/Window;
    //   45: sipush 1152
    //   48: sipush 1152
    //   51: invokevirtual 185	android/view/Window:setFlags	(II)V
    //   54: aload_0
    //   55: new 73	com/yelp/android/ui/j
    //   58: dup
    //   59: aload_0
    //   60: invokespecial 188	com/yelp/android/ui/j:<init>	(Landroid/content/Context;)V
    //   63: putfield 57	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/j;
    //   66: aload_0
    //   67: getfield 57	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/j;
    //   70: sipush 1001
    //   73: invokestatic 193	com/yelp/android/ui/m:b	(Landroid/view/SurfaceView;I)V
    //   76: aload_0
    //   77: new 195	com/yelp/android/ui/e
    //   80: dup
    //   81: aload_0
    //   82: invokespecial 196	com/yelp/android/ui/e:<init>	(Landroid/content/Context;)V
    //   85: putfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   88: aload_0
    //   89: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   92: bipush 8
    //   94: bipush 8
    //   96: bipush 8
    //   98: bipush 8
    //   100: bipush 16
    //   102: iconst_0
    //   103: invokevirtual 204	android/opengl/GLSurfaceView:setEGLConfigChooser	(IIIIII)V
    //   106: aload_0
    //   107: new 206	com/yelp/android/ui/g
    //   110: dup
    //   111: invokespecial 207	com/yelp/android/ui/g:<init>	()V
    //   114: putfield 209	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/g;
    //   117: aload_0
    //   118: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   121: aload_0
    //   122: getfield 209	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/g;
    //   125: invokevirtual 213	android/opengl/GLSurfaceView:setRenderer	(Landroid/opengl/GLSurfaceView$Renderer;)V
    //   128: aload_0
    //   129: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   132: invokevirtual 217	android/opengl/GLSurfaceView:getHolder	()Landroid/view/SurfaceHolder;
    //   135: bipush -3
    //   137: invokeinterface 223 2 0
    //   142: aload_0
    //   143: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   146: sipush 1004
    //   149: invokestatic 193	com/yelp/android/ui/m:b	(Landroid/view/SurfaceView;I)V
    //   152: aload_0
    //   153: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   156: ifnonnull +27 -> 183
    //   159: aload_0
    //   160: new 134	com/yelp/android/ui/h
    //   163: dup
    //   164: aload_0
    //   165: aload_0
    //   166: getfield 172	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   169: aload_0
    //   170: getfield 209	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/g;
    //   173: aload_0
    //   174: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   177: invokespecial 226	com/yelp/android/ui/h:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/MonocleEngine;Lcom/yelp/android/ui/g;Landroid/view/SurfaceView;)V
    //   180: putfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   183: invokestatic 231	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   186: invokevirtual 234	com/yelp/android/appdata/AppData:j	()Lcom/yelp/android/database/e;
    //   189: astore_3
    //   190: iconst_3
    //   191: anewarray 236	java/lang/String
    //   194: astore_2
    //   195: aload_2
    //   196: iconst_0
    //   197: aload_0
    //   198: ldc -19
    //   200: invokevirtual 241	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   203: aastore
    //   204: aload_2
    //   205: iconst_1
    //   206: aload_0
    //   207: ldc -14
    //   209: invokevirtual 241	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   212: aastore
    //   213: aload_2
    //   214: iconst_2
    //   215: aload_0
    //   216: ldc -13
    //   218: invokevirtual 241	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   221: aastore
    //   222: aload_3
    //   223: ldc -11
    //   225: invokevirtual 250	com/yelp/android/database/e:a	(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    //   228: astore_1
    //   229: aload_2
    //   230: iconst_0
    //   231: aaload
    //   232: invokestatic 256	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   235: ifeq +10 -> 245
    //   238: aload_2
    //   239: iconst_0
    //   240: aload_1
    //   241: invokevirtual 261	com/yelp/android/serializable/Category:a	()Ljava/lang/String;
    //   244: aastore
    //   245: aload_3
    //   246: ldc_w 263
    //   249: invokevirtual 250	com/yelp/android/database/e:a	(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    //   252: astore_3
    //   253: aload_2
    //   254: iconst_1
    //   255: aaload
    //   256: invokestatic 256	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   259: ifeq +10 -> 269
    //   262: aload_2
    //   263: iconst_1
    //   264: aload_3
    //   265: invokevirtual 261	com/yelp/android/serializable/Category:a	()Ljava/lang/String;
    //   268: aastore
    //   269: aload_0
    //   270: new 265	com/yelp/android/ui/a
    //   273: dup
    //   274: aload_0
    //   275: aload_2
    //   276: iconst_3
    //   277: anewarray 267	java/lang/Runnable
    //   280: dup
    //   281: iconst_0
    //   282: new 15	com/yelp/android/ui/ActivityMonocle$a
    //   285: dup
    //   286: aload_0
    //   287: aload_0
    //   288: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   291: aload_1
    //   292: invokespecial 270	com/yelp/android/ui/ActivityMonocle$a:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/h;Lcom/yelp/android/serializable/Category;)V
    //   295: aastore
    //   296: dup
    //   297: iconst_1
    //   298: new 15	com/yelp/android/ui/ActivityMonocle$a
    //   301: dup
    //   302: aload_0
    //   303: aload_0
    //   304: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   307: aload_3
    //   308: invokespecial 270	com/yelp/android/ui/ActivityMonocle$a:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/h;Lcom/yelp/android/serializable/Category;)V
    //   311: aastore
    //   312: dup
    //   313: iconst_2
    //   314: new 15	com/yelp/android/ui/ActivityMonocle$a
    //   317: dup
    //   318: aload_0
    //   319: aload_0
    //   320: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   323: aconst_null
    //   324: invokespecial 270	com/yelp/android/ui/ActivityMonocle$a:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/h;Lcom/yelp/android/serializable/Category;)V
    //   327: aastore
    //   328: invokespecial 273	com/yelp/android/ui/a:<init>	(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Runnable;)V
    //   331: putfield 275	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/a;
    //   334: aload_0
    //   335: new 277	android/widget/FrameLayout
    //   338: dup
    //   339: aload_0
    //   340: invokespecial 278	android/widget/FrameLayout:<init>	(Landroid/content/Context;)V
    //   343: putfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   346: aload_0
    //   347: aload_0
    //   348: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   351: invokevirtual 284	com/yelp/android/ui/ActivityMonocle:setContentView	(Landroid/view/View;)V
    //   354: aload_0
    //   355: new 286	android/widget/ImageView
    //   358: dup
    //   359: aload_0
    //   360: invokespecial 287	android/widget/ImageView:<init>	(Landroid/content/Context;)V
    //   363: putfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   366: aload_0
    //   367: getfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   370: ldc_w 290
    //   373: invokevirtual 293	android/widget/ImageView:setImageResource	(I)V
    //   376: aload_0
    //   377: getfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   380: iconst_1
    //   381: invokevirtual 296	android/widget/ImageView:setAdjustViewBounds	(Z)V
    //   384: new 298	android/widget/FrameLayout$LayoutParams
    //   387: dup
    //   388: bipush -2
    //   390: bipush -2
    //   392: invokespecial 300	android/widget/FrameLayout$LayoutParams:<init>	(II)V
    //   395: astore_2
    //   396: aload_2
    //   397: bipush 85
    //   399: putfield 303	android/widget/FrameLayout$LayoutParams:gravity	I
    //   402: aload_2
    //   403: bipush 12
    //   405: putfield 306	android/widget/FrameLayout$LayoutParams:rightMargin	I
    //   408: aload_2
    //   409: bipush 12
    //   411: putfield 309	android/widget/FrameLayout$LayoutParams:bottomMargin	I
    //   414: aload_0
    //   415: getfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   418: aload_2
    //   419: invokevirtual 313	android/widget/ImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   422: aload_0
    //   423: getfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   426: iconst_4
    //   427: invokevirtual 316	android/widget/ImageView:setVisibility	(I)V
    //   430: getstatic 322	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   433: astore_2
    //   434: ldc_w 324
    //   437: ldc_w 326
    //   440: iconst_1
    //   441: anewarray 328	java/lang/Class
    //   444: dup
    //   445: iconst_0
    //   446: aload_2
    //   447: aastore
    //   448: invokevirtual 332	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   451: pop
    //   452: aload_0
    //   453: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   456: aload_0
    //   457: getfield 57	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/j;
    //   460: iconst_0
    //   461: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   464: aload_0
    //   465: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   468: aload_0
    //   469: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   472: iconst_1
    //   473: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   476: new 298	android/widget/FrameLayout$LayoutParams
    //   479: dup
    //   480: iconst_m1
    //   481: bipush -2
    //   483: invokespecial 300	android/widget/FrameLayout$LayoutParams:<init>	(II)V
    //   486: astore_2
    //   487: aload_2
    //   488: bipush 80
    //   490: putfield 303	android/widget/FrameLayout$LayoutParams:gravity	I
    //   493: aload_0
    //   494: getfield 275	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/a;
    //   497: aload_2
    //   498: invokevirtual 339	com/yelp/android/ui/a:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   501: aload_0
    //   502: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   505: aload_0
    //   506: getfield 275	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/a;
    //   509: iconst_2
    //   510: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   513: aload_0
    //   514: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   517: aload_0
    //   518: getfield 289	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   521: iconst_3
    //   522: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   525: aload_0
    //   526: new 341	com/yelp/android/ui/b
    //   529: dup
    //   530: aload_0
    //   531: aload_0
    //   532: ldc_w 343
    //   535: invokevirtual 347	com/yelp/android/ui/ActivityMonocle:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   538: checkcast 349	android/hardware/SensorManager
    //   541: invokespecial 352	com/yelp/android/ui/b:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    //   544: putfield 354	com/yelp/android/ui/ActivityMonocle:h	Lcom/yelp/android/ui/l;
    //   547: new 356	com/yelp/android/ui/dialogs/e
    //   550: dup
    //   551: aload_0
    //   552: invokespecial 357	com/yelp/android/ui/dialogs/e:<init>	(Landroid/content/Context;)V
    //   555: putstatic 359	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   558: getstatic 359	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   561: new 10	com/yelp/android/ui/ActivityMonocle$2
    //   564: dup
    //   565: aload_0
    //   566: invokespecial 362	com/yelp/android/ui/ActivityMonocle$2:<init>	(Lcom/yelp/android/ui/ActivityMonocle;)V
    //   569: invokevirtual 368	android/app/Dialog:setOnCancelListener	(Landroid/content/DialogInterface$OnCancelListener;)V
    //   572: getstatic 359	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   575: iconst_1
    //   576: invokevirtual 371	android/app/Dialog:setCancelable	(Z)V
    //   579: getstatic 359	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   582: invokevirtual 374	android/app/Dialog:show	()V
    //   585: aload_0
    //   586: iconst_2
    //   587: putfield 376	com/yelp/android/ui/ActivityMonocle:d	I
    //   590: aload_0
    //   591: getfield 275	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/a;
    //   594: aload_0
    //   595: getfield 376	com/yelp/android/ui/ActivityMonocle:d	I
    //   598: invokevirtual 378	com/yelp/android/ui/a:a	(I)V
    //   601: aload_0
    //   602: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   605: aload_1
    //   606: invokevirtual 381	com/yelp/android/ui/h:a	(Lcom/yelp/android/serializable/Category;)V
    //   609: aload_0
    //   610: getfield 54	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/h;
    //   613: invokevirtual 136	com/yelp/android/ui/h:b	()V
    //   616: return
    //   617: astore_1
    //   618: aload_0
    //   619: aconst_null
    //   620: putfield 172	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   623: new 383	android/app/AlertDialog$Builder
    //   626: dup
    //   627: aload_0
    //   628: invokespecial 384	android/app/AlertDialog$Builder:<init>	(Landroid/content/Context;)V
    //   631: astore_1
    //   632: aload_1
    //   633: ldc_w 385
    //   636: invokevirtual 389	android/app/AlertDialog$Builder:setMessage	(I)Landroid/app/AlertDialog$Builder;
    //   639: ldc_w 390
    //   642: new 8	com/yelp/android/ui/ActivityMonocle$1
    //   645: dup
    //   646: aload_0
    //   647: invokespecial 391	com/yelp/android/ui/ActivityMonocle$1:<init>	(Lcom/yelp/android/ui/ActivityMonocle;)V
    //   650: invokevirtual 395	android/app/AlertDialog$Builder:setPositiveButton	(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    //   653: pop
    //   654: aload_1
    //   655: invokevirtual 399	android/app/AlertDialog$Builder:create	()Landroid/app/AlertDialog;
    //   658: invokevirtual 402	android/app/AlertDialog:show	()V
    //   661: ldc_w 404
    //   664: ldc_w 406
    //   667: invokestatic 408	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   670: pop
    //   671: return
    //   672: astore_2
    //   673: aload_2
    //   674: invokestatic 414	com/yelp/android/util/YelpLog:remoteError	(Ljava/lang/Throwable;)V
    //   677: goto -201 -> 476
    //   680: astore_2
    //   681: aload_0
    //   682: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   685: aload_0
    //   686: getfield 198	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   689: iconst_0
    //   690: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   693: aload_0
    //   694: getfield 280	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   697: aload_0
    //   698: getfield 57	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/j;
    //   701: iconst_1
    //   702: invokevirtual 338	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   705: goto -229 -> 476
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	708	0	this	ActivityMonocle
    //   0	708	1	paramBundle	android.os.Bundle
    //   194	304	2	localObject1	Object
    //   672	2	2	localSecurityException	SecurityException
    //   680	1	2	localNoSuchMethodException	NoSuchMethodException
    //   189	119	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   23	41	617	java/lang/UnsatisfiedLinkError
    //   434	476	672	java/lang/SecurityException
    //   434	476	680	java/lang/NoSuchMethodException
  }
  
  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    return false;
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    if (a != null)
    {
      a.dismiss();
      a = null;
    }
    if (j != null) {
      j.c();
    }
  }
  
  public void onPause()
  {
    super.onPause();
    if (i != null)
    {
      d();
      f.onPause();
      h.c();
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (i != null)
    {
      c();
      h.b();
      f.onResume();
    }
  }
  
  static abstract interface MonocleButton
  {
    public abstract void a();
  }
  
  class a
    implements Runnable
  {
    private final h b;
    private final Category c;
    
    public a(h paramh, Category paramCategory)
    {
      b = paramh;
      c = paramCategory;
    }
    
    public void run()
    {
      b.a(c);
      b.b();
    }
  }
  
  private class b
    extends AsyncTask<Void, Void, Camera>
  {
    private b() {}
    
    protected Camera a(Void... paramVarArgs)
    {
      try
      {
        paramVarArgs = Camera.open();
        return paramVarArgs;
      }
      catch (RuntimeException paramVarArgs)
      {
        Log.e("Monocle", "runtime exception while trying to normally acquire camera", paramVarArgs);
      }
      return null;
    }
    
    protected void a(Camera paramCamera)
    {
      int i = 0;
      StringBuilder localStringBuilder = new StringBuilder().append("We successfully acquired a camera? ");
      boolean bool;
      if (paramCamera != null)
      {
        bool = true;
        Log.i("Monocle", bool);
        if (paramCamera != null) {
          break label95;
        }
        i = 1;
      }
      for (;;)
      {
        if (i != 0)
        {
          if (ActivityMonocle.c(ActivityMonocle.this) != null)
          {
            ActivityMonocle.c(ActivityMonocle.this).release();
            ActivityMonocle.a(ActivityMonocle.this, null);
          }
          as.a(2131166163, 1);
          finish();
        }
        return;
        bool = false;
        break;
        label95:
        ActivityMonocle.a(ActivityMonocle.this, paramCamera);
        if (!ActivityMonocle.b(ActivityMonocle.this).a(paramCamera)) {
          i = 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.ActivityMonocle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */