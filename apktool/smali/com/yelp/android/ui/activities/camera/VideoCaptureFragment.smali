.class public Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "VideoCaptureFragment.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/SquareTextureView;

.field private b:Lcom/yelp/android/ui/widgets/PieProgress;

.field private c:Landroid/widget/Button;

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/media/MediaRecorder;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/yelp/android/ui/activities/media/d;

.field private final o:Landroid/view/TextureView$SurfaceTextureListener;

.field private final p:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h:Z

    .line 78
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    .line 414
    new-instance v0, Lcom/yelp/android/ui/activities/camera/v;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/v;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Landroid/view/TextureView$SurfaceTextureListener;

    .line 469
    new-instance v0, Lcom/yelp/android/ui/activities/camera/w;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/w;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Ljava/lang/Runnable;

    .line 485
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;-><init>()V

    .line 87
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string/jumbo v2, "started_from_gallery"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 92
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Lcom/yelp/android/ui/activities/media/d;)Lcom/yelp/android/ui/activities/media/d;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/d;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 262
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 273
    :goto_0
    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 388
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 397
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 398
    return-void

    :cond_0
    move v1, p2

    move p2, p1

    move p1, v1

    .line 395
    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 167
    new-instance v0, Lcom/yelp/android/ui/activities/camera/t;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/t;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/camera/u;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/camera/u;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/Features;->isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/r;)V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;II)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h:Z

    .line 277
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->b()V

    .line 278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    const v1, 0x7f020405

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 279
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 282
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 283
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 285
    if-ne v2, v0, :cond_2

    .line 286
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 298
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 299
    return-void

    .line 289
    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    .line 292
    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    .line 293
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 295
    :cond_4
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    return v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 303
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h()V

    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-static {}, Lcom/yelp/android/util/l;->d()Ljava/io/File;

    move-result-object v0

    .line 307
    if-nez v0, :cond_0

    .line 308
    const v0, 0x7f07062b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 319
    :goto_0
    return-void

    .line 313
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    .line 314
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c()V

    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/widgets/PieProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 316
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g()V

    .line 317
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    const v1, 0x7f020406

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    goto :goto_0
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/activities/media/d;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/d;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 322
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    .line 323
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 324
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 326
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 329
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 330
    iput v3, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 331
    iput v3, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 332
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 333
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 339
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 340
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(II)V

    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    return-object v0
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 349
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i()V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h:Z

    .line 351
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->getProgress()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 352
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 353
    const v0, 0x7f07066a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 356
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b()V

    .line 361
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e()V

    .line 362
    return-void

    .line 358
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/x;

    .line 359
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/camera/x;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 8

    .prologue
    .line 365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 378
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 379
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    .line 380
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 381
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 372
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 373
    const-string/jumbo v1, "VideoCapture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MediaRecorder.stop() failed at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    return v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 404
    :cond_0
    return-void
.end method

.method private l()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 408
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 411
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoCapture:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 237
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 195
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->e()V

    .line 196
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 242
    packed-switch p1, :pswitch_data_0

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 248
    const-string/jumbo v1, "extra_media_source"

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p3, v1, v2}, Lcom/yelp/android/util/f;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 251
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 252
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    .line 100
    const-string/jumbo v1, "started_from_gallery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    .line 101
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 107
    const v0, 0x7f0300bd

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 109
    const v0, 0x7f0c01bb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SquareTextureView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    .line 110
    const v0, 0x7f0c02dd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/PieProgress;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    .line 111
    const v0, 0x7f0c02de

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    .line 112
    const v0, 0x7f0c02df

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 114
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 115
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    new-instance v3, Lcom/yelp/android/ui/activities/camera/r;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/camera/r;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    if-eqz v2, :cond_0

    .line 145
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    :cond_0
    new-instance v2, Lcom/yelp/android/ui/activities/camera/s;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/camera/s;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v0, 0x7f0c01b7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Landroid/widget/ImageView;)V

    .line 160
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 211
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 213
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i()V

    .line 214
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 221
    iput-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/media/d;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/d;->cancel(Z)Z

    .line 227
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 200
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 201
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b()V

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SquareTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Landroid/view/TextureView$SurfaceTextureListener;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/SquareTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v3}, Lcom/yelp/android/ui/widgets/SquareTextureView;->getHeight()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    .line 206
    :cond_0
    return-void
.end method
