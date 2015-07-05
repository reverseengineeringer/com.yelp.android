package com.yelp.android.ui;

import android.app.Dialog;
import android.hardware.Camera;
import android.opengl.GLSurfaceView;
import android.os.AsyncTask.Status;
import android.util.Log;
import android.view.Menu;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.ui.activities.support.YelpActivity;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

public class ActivityMonocle
  extends YelpActivity
  implements com.yelp.android.ui.activities.support.o
{
  static Dialog a;
  public e b;
  public ImageView c;
  public int d;
  private o e;
  private GLSurfaceView f;
  private ViewGroup g;
  private q h;
  private MonocleEngine i;
  private m j;
  private l k;
  private d l;
  private Camera m;
  
  private void c()
  {
    d();
    l = new d(this, null);
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
  
  public ViewIri getIri()
  {
    return ViewIri.Monocle;
  }
  
  public void k_()
  {
    j.b();
  }
  
  /* Error */
  public void onCreate(android.os.Bundle paramBundle)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 148	com/yelp/android/ui/activities/support/YelpActivity:onCreate	(Landroid/os/Bundle;)V
    //   5: aload_0
    //   6: new 150	com/yelp/android/ui/MonocleEngine
    //   9: dup
    //   10: invokespecial 151	com/yelp/android/ui/MonocleEngine:<init>	()V
    //   13: putfield 153	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   16: aload_0
    //   17: getfield 153	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   20: invokevirtual 156	com/yelp/android/ui/MonocleEngine:ClearObjects	()V
    //   23: aload_0
    //   24: invokevirtual 160	com/yelp/android/ui/ActivityMonocle:getWindow	()Landroid/view/Window;
    //   27: sipush 1152
    //   30: sipush 1152
    //   33: invokevirtual 166	android/view/Window:setFlags	(II)V
    //   36: aload_0
    //   37: new 64	com/yelp/android/ui/o
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 169	com/yelp/android/ui/o:<init>	(Landroid/content/Context;)V
    //   45: putfield 46	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/o;
    //   48: aload_0
    //   49: getfield 46	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/o;
    //   52: sipush 1001
    //   55: invokestatic 174	com/yelp/android/ui/u:b	(Landroid/view/SurfaceView;I)V
    //   58: aload_0
    //   59: new 176	com/yelp/android/ui/j
    //   62: dup
    //   63: aload_0
    //   64: invokespecial 177	com/yelp/android/ui/j:<init>	(Landroid/content/Context;)V
    //   67: putfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   70: aload_0
    //   71: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   74: bipush 8
    //   76: bipush 8
    //   78: bipush 8
    //   80: bipush 8
    //   82: bipush 16
    //   84: iconst_0
    //   85: invokevirtual 185	android/opengl/GLSurfaceView:setEGLConfigChooser	(IIIIII)V
    //   88: aload_0
    //   89: new 187	com/yelp/android/ui/l
    //   92: dup
    //   93: invokespecial 188	com/yelp/android/ui/l:<init>	()V
    //   96: putfield 190	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/l;
    //   99: aload_0
    //   100: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   103: aload_0
    //   104: getfield 190	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/l;
    //   107: invokevirtual 194	android/opengl/GLSurfaceView:setRenderer	(Landroid/opengl/GLSurfaceView$Renderer;)V
    //   110: aload_0
    //   111: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   114: invokevirtual 198	android/opengl/GLSurfaceView:getHolder	()Landroid/view/SurfaceHolder;
    //   117: bipush -3
    //   119: invokeinterface 204 2 0
    //   124: aload_0
    //   125: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   128: sipush 1004
    //   131: invokestatic 174	com/yelp/android/ui/u:b	(Landroid/view/SurfaceView;I)V
    //   134: aload_0
    //   135: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   138: ifnonnull +31 -> 169
    //   141: aload_0
    //   142: new 136	com/yelp/android/ui/m
    //   145: dup
    //   146: aload_0
    //   147: aload_0
    //   148: getfield 153	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   151: aload_0
    //   152: getfield 190	com/yelp/android/ui/ActivityMonocle:k	Lcom/yelp/android/ui/l;
    //   155: aload_0
    //   156: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   159: aload_0
    //   160: getfield 46	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/o;
    //   163: invokespecial 207	com/yelp/android/ui/m:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/MonocleEngine;Lcom/yelp/android/ui/l;Landroid/view/SurfaceView;Landroid/view/SurfaceView;)V
    //   166: putfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   169: invokestatic 212	com/yelp/android/appdata/AppData:b	()Lcom/yelp/android/appdata/AppData;
    //   172: invokevirtual 215	com/yelp/android/appdata/AppData:j	()Lcom/yelp/android/database/m;
    //   175: astore_3
    //   176: iconst_3
    //   177: anewarray 217	java/lang/String
    //   180: astore_2
    //   181: aload_2
    //   182: iconst_0
    //   183: aload_0
    //   184: ldc -38
    //   186: invokevirtual 222	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   189: aastore
    //   190: aload_2
    //   191: iconst_1
    //   192: aload_0
    //   193: ldc -33
    //   195: invokevirtual 222	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   198: aastore
    //   199: aload_2
    //   200: iconst_2
    //   201: aload_0
    //   202: ldc -32
    //   204: invokevirtual 222	com/yelp/android/ui/ActivityMonocle:getString	(I)Ljava/lang/String;
    //   207: aastore
    //   208: aload_3
    //   209: ldc -30
    //   211: invokevirtual 231	com/yelp/android/database/m:a	(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    //   214: astore_1
    //   215: aload_2
    //   216: iconst_0
    //   217: aaload
    //   218: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   221: ifeq +10 -> 231
    //   224: aload_2
    //   225: iconst_0
    //   226: aload_1
    //   227: invokevirtual 243	com/yelp/android/serializable/Category:getName	()Ljava/lang/String;
    //   230: aastore
    //   231: aload_3
    //   232: ldc -11
    //   234: invokevirtual 231	com/yelp/android/database/m:a	(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    //   237: astore_3
    //   238: aload_2
    //   239: iconst_1
    //   240: aaload
    //   241: invokestatic 237	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   244: ifeq +10 -> 254
    //   247: aload_2
    //   248: iconst_1
    //   249: aload_3
    //   250: invokevirtual 243	com/yelp/android/serializable/Category:getName	()Ljava/lang/String;
    //   253: aastore
    //   254: aload_0
    //   255: new 247	com/yelp/android/ui/e
    //   258: dup
    //   259: aload_0
    //   260: aload_2
    //   261: iconst_3
    //   262: anewarray 249	java/lang/Runnable
    //   265: dup
    //   266: iconst_0
    //   267: new 251	com/yelp/android/ui/b
    //   270: dup
    //   271: aload_0
    //   272: aload_0
    //   273: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   276: aload_1
    //   277: invokespecial 254	com/yelp/android/ui/b:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V
    //   280: aastore
    //   281: dup
    //   282: iconst_1
    //   283: new 251	com/yelp/android/ui/b
    //   286: dup
    //   287: aload_0
    //   288: aload_0
    //   289: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   292: aload_3
    //   293: invokespecial 254	com/yelp/android/ui/b:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V
    //   296: aastore
    //   297: dup
    //   298: iconst_2
    //   299: new 251	com/yelp/android/ui/b
    //   302: dup
    //   303: aload_0
    //   304: aload_0
    //   305: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   308: aconst_null
    //   309: invokespecial 254	com/yelp/android/ui/b:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Lcom/yelp/android/ui/m;Lcom/yelp/android/serializable/Category;)V
    //   312: aastore
    //   313: invokespecial 257	com/yelp/android/ui/e:<init>	(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/Runnable;)V
    //   316: putfield 259	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/e;
    //   319: aload_0
    //   320: new 261	android/widget/FrameLayout
    //   323: dup
    //   324: aload_0
    //   325: invokespecial 262	android/widget/FrameLayout:<init>	(Landroid/content/Context;)V
    //   328: putfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   331: aload_0
    //   332: aload_0
    //   333: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   336: invokevirtual 268	com/yelp/android/ui/ActivityMonocle:setContentView	(Landroid/view/View;)V
    //   339: aload_0
    //   340: new 270	android/widget/ImageView
    //   343: dup
    //   344: aload_0
    //   345: invokespecial 271	android/widget/ImageView:<init>	(Landroid/content/Context;)V
    //   348: putfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   351: aload_0
    //   352: getfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   355: ldc_w 274
    //   358: invokevirtual 277	android/widget/ImageView:setImageResource	(I)V
    //   361: aload_0
    //   362: getfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   365: iconst_1
    //   366: invokevirtual 280	android/widget/ImageView:setAdjustViewBounds	(Z)V
    //   369: new 282	android/widget/FrameLayout$LayoutParams
    //   372: dup
    //   373: bipush -2
    //   375: bipush -2
    //   377: invokespecial 284	android/widget/FrameLayout$LayoutParams:<init>	(II)V
    //   380: astore_2
    //   381: aload_2
    //   382: bipush 85
    //   384: putfield 287	android/widget/FrameLayout$LayoutParams:gravity	I
    //   387: aload_2
    //   388: bipush 12
    //   390: putfield 290	android/widget/FrameLayout$LayoutParams:rightMargin	I
    //   393: aload_2
    //   394: bipush 12
    //   396: putfield 293	android/widget/FrameLayout$LayoutParams:bottomMargin	I
    //   399: aload_0
    //   400: getfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   403: aload_2
    //   404: invokevirtual 297	android/widget/ImageView:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   407: aload_0
    //   408: getfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   411: iconst_4
    //   412: invokevirtual 300	android/widget/ImageView:setVisibility	(I)V
    //   415: getstatic 306	java/lang/Boolean:TYPE	Ljava/lang/Class;
    //   418: astore_2
    //   419: ldc_w 308
    //   422: ldc_w 310
    //   425: iconst_1
    //   426: anewarray 312	java/lang/Class
    //   429: dup
    //   430: iconst_0
    //   431: aload_2
    //   432: aastore
    //   433: invokevirtual 316	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   436: pop
    //   437: aload_0
    //   438: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   441: aload_0
    //   442: getfield 46	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/o;
    //   445: iconst_0
    //   446: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   449: aload_0
    //   450: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   453: aload_0
    //   454: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   457: iconst_1
    //   458: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   461: new 282	android/widget/FrameLayout$LayoutParams
    //   464: dup
    //   465: iconst_m1
    //   466: bipush -2
    //   468: invokespecial 284	android/widget/FrameLayout$LayoutParams:<init>	(II)V
    //   471: astore_2
    //   472: aload_2
    //   473: bipush 80
    //   475: putfield 287	android/widget/FrameLayout$LayoutParams:gravity	I
    //   478: aload_0
    //   479: getfield 259	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/e;
    //   482: aload_2
    //   483: invokevirtual 323	com/yelp/android/ui/e:setLayoutParams	(Landroid/view/ViewGroup$LayoutParams;)V
    //   486: aload_0
    //   487: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   490: aload_0
    //   491: getfield 259	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/e;
    //   494: iconst_2
    //   495: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   498: aload_0
    //   499: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   502: aload_0
    //   503: getfield 273	com/yelp/android/ui/ActivityMonocle:c	Landroid/widget/ImageView;
    //   506: iconst_3
    //   507: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   510: bipush 8
    //   512: invokestatic 328	com/yelp/android/appdata/n:a	(I)Z
    //   515: ifeq +186 -> 701
    //   518: aload_0
    //   519: new 330	com/yelp/android/ui/f
    //   522: dup
    //   523: aload_0
    //   524: aload_0
    //   525: ldc_w 332
    //   528: invokevirtual 336	com/yelp/android/ui/ActivityMonocle:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   531: checkcast 338	android/hardware/SensorManager
    //   534: invokespecial 341	com/yelp/android/ui/f:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    //   537: putfield 343	com/yelp/android/ui/ActivityMonocle:h	Lcom/yelp/android/ui/q;
    //   540: new 345	com/yelp/android/ui/dialogs/bn
    //   543: dup
    //   544: aload_0
    //   545: invokespecial 346	com/yelp/android/ui/dialogs/bn:<init>	(Landroid/content/Context;)V
    //   548: putstatic 348	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   551: getstatic 348	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   554: new 350	com/yelp/android/ui/c
    //   557: dup
    //   558: aload_0
    //   559: invokespecial 353	com/yelp/android/ui/c:<init>	(Lcom/yelp/android/ui/ActivityMonocle;)V
    //   562: invokevirtual 359	android/app/Dialog:setOnCancelListener	(Landroid/content/DialogInterface$OnCancelListener;)V
    //   565: getstatic 348	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   568: iconst_1
    //   569: invokevirtual 362	android/app/Dialog:setCancelable	(Z)V
    //   572: getstatic 348	com/yelp/android/ui/ActivityMonocle:a	Landroid/app/Dialog;
    //   575: invokevirtual 365	android/app/Dialog:show	()V
    //   578: aload_0
    //   579: iconst_2
    //   580: putfield 367	com/yelp/android/ui/ActivityMonocle:d	I
    //   583: aload_0
    //   584: getfield 259	com/yelp/android/ui/ActivityMonocle:b	Lcom/yelp/android/ui/e;
    //   587: aload_0
    //   588: getfield 367	com/yelp/android/ui/ActivityMonocle:d	I
    //   591: invokevirtual 369	com/yelp/android/ui/e:a	(I)V
    //   594: aload_0
    //   595: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   598: aload_1
    //   599: invokevirtual 372	com/yelp/android/ui/m:a	(Lcom/yelp/android/serializable/Category;)V
    //   602: aload_0
    //   603: getfield 43	com/yelp/android/ui/ActivityMonocle:j	Lcom/yelp/android/ui/m;
    //   606: invokevirtual 138	com/yelp/android/ui/m:b	()V
    //   609: return
    //   610: astore_1
    //   611: aload_0
    //   612: aconst_null
    //   613: putfield 153	com/yelp/android/ui/ActivityMonocle:i	Lcom/yelp/android/ui/MonocleEngine;
    //   616: new 374	android/app/AlertDialog$Builder
    //   619: dup
    //   620: aload_0
    //   621: invokespecial 375	android/app/AlertDialog$Builder:<init>	(Landroid/content/Context;)V
    //   624: astore_1
    //   625: aload_1
    //   626: ldc_w 376
    //   629: invokevirtual 380	android/app/AlertDialog$Builder:setMessage	(I)Landroid/app/AlertDialog$Builder;
    //   632: ldc_w 381
    //   635: new 383	com/yelp/android/ui/a
    //   638: dup
    //   639: aload_0
    //   640: invokespecial 384	com/yelp/android/ui/a:<init>	(Lcom/yelp/android/ui/ActivityMonocle;)V
    //   643: invokevirtual 388	android/app/AlertDialog$Builder:setPositiveButton	(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    //   646: pop
    //   647: aload_1
    //   648: invokevirtual 392	android/app/AlertDialog$Builder:create	()Landroid/app/AlertDialog;
    //   651: invokevirtual 395	android/app/AlertDialog:show	()V
    //   654: ldc_w 397
    //   657: ldc_w 399
    //   660: invokestatic 401	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   663: pop
    //   664: return
    //   665: astore_2
    //   666: aload_2
    //   667: invokestatic 407	com/yelp/android/util/YelpLog:error	(Ljava/lang/Exception;)V
    //   670: goto -209 -> 461
    //   673: astore_2
    //   674: aload_0
    //   675: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   678: aload_0
    //   679: getfield 179	com/yelp/android/ui/ActivityMonocle:f	Landroid/opengl/GLSurfaceView;
    //   682: iconst_0
    //   683: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   686: aload_0
    //   687: getfield 264	com/yelp/android/ui/ActivityMonocle:g	Landroid/view/ViewGroup;
    //   690: aload_0
    //   691: getfield 46	com/yelp/android/ui/ActivityMonocle:e	Lcom/yelp/android/ui/o;
    //   694: iconst_1
    //   695: invokevirtual 322	android/view/ViewGroup:addView	(Landroid/view/View;I)V
    //   698: goto -237 -> 461
    //   701: aload_0
    //   702: new 409	com/yelp/android/ui/q
    //   705: dup
    //   706: aload_0
    //   707: aload_0
    //   708: ldc_w 332
    //   711: invokevirtual 336	com/yelp/android/ui/ActivityMonocle:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   714: checkcast 338	android/hardware/SensorManager
    //   717: invokespecial 410	com/yelp/android/ui/q:<init>	(Lcom/yelp/android/ui/ActivityMonocle;Landroid/hardware/SensorManager;)V
    //   720: putfield 343	com/yelp/android/ui/ActivityMonocle:h	Lcom/yelp/android/ui/q;
    //   723: goto -183 -> 540
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	726	0	this	ActivityMonocle
    //   0	726	1	paramBundle	android.os.Bundle
    //   180	303	2	localObject1	Object
    //   665	2	2	localSecurityException	SecurityException
    //   673	1	2	localNoSuchMethodException	NoSuchMethodException
    //   175	118	3	localObject2	Object
    // Exception table:
    //   from	to	target	type
    //   5	23	610	java/lang/UnsatisfiedLinkError
    //   419	461	665	java/lang/SecurityException
    //   419	461	673	java/lang/NoSuchMethodException
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
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.ActivityMonocle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */