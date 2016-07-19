.class public Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "VideoCaptureFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$a;
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/ui/widgets/SquareTextureView;

.field private b:Lcom/yelp/android/ui/widgets/PieProgress;

.field private c:Landroid/widget/Button;

.field private d:Landroid/hardware/Camera;

.field private e:Landroid/media/MediaRecorder;

.field private f:Z

.field private g:Z

.field private i:J

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lcom/yelp/android/ui/activities/media/b;

.field private o:Lcom/yelp/android/appdata/g;

.field private final p:Landroid/view/TextureView$SurfaceTextureListener;

.field private final q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    .line 498
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Landroid/view/TextureView$SurfaceTextureListener;

    .line 565
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$6;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$6;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->q:Ljava/lang/Runnable;

    .line 583
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    return p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    return-object p1
.end method

.method public static a(Ljava/lang/String;Z)Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;-><init>()V

    .line 91
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 92
    const-string/jumbo v2, "business_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string/jumbo v2, "started_from_gallery"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->setArguments(Landroid/os/Bundle;)V

    .line 95
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Lcom/yelp/android/ui/activities/media/b;)Lcom/yelp/android/ui/activities/media/b;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/b;

    return-object p1
.end method

.method private a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 341
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 353
    :goto_0
    return-void

    .line 344
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->VIDEO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x408

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private a(II)V
    .locals 2

    .prologue
    .line 472
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_0

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/ui/widgets/SquareTextureView;->a(II)V

    .line 482
    return-void

    :cond_0
    move v1, p2

    move p2, p1

    move p1, v1

    .line 479
    goto :goto_0
.end method

.method private a(Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 213
    new-instance v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$3;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    sget-object v0, Lcom/yelp/android/appdata/Features;->video_upload_from_gallery:Lcom/yelp/android/appdata/Features;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$4;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/appdata/Features;->isEnabledAsync(Landroid/content/Context;Lcom/yelp/android/appdata/Features$a;)Lcom/yelp/android/appdata/g;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Lcom/yelp/android/appdata/g;

    .line 249
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;II)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 356
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->b()V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    const v1, 0x7f0205a8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 359
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)J
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    return-wide v0
.end method

.method private c()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 362
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 363
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 365
    if-ne v2, v0, :cond_2

    .line 366
    if-eqz v1, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 378
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 379
    return-void

    .line 369
    :cond_1
    const/16 v0, 0x9

    goto :goto_0

    .line 372
    :cond_2
    if-eqz v1, :cond_3

    if-ne v1, v0, :cond_4

    .line 373
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :cond_4
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f:Z

    return v0
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i()V

    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->setRequestedOrientation(I)V

    .line 383
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a()V

    return-void
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/activities/media/b;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/b;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 386
    invoke-static {}, Lcom/yelp/android/util/e;->d()Ljava/io/File;

    move-result-object v0

    .line 387
    if-nez v0, :cond_0

    .line 388
    const v0, 0x7f070617

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void

    .line 394
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    .line 395
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c()V

    .line 396
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->q:Ljava/lang/Runnable;

    const-wide/16 v2, 0x78

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/widgets/PieProgress;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 397
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h()V

    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    const v1, 0x7f0205a9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i:J

    goto :goto_0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 403
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 407
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 408
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 410
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m()Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 411
    iput v3, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 412
    iput v3, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 413
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 414
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    iget v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    .line 419
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V

    .line 420
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 421
    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(II)V

    .line 422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m()Landroid/media/CamcorderProfile;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 430
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j()V

    .line 431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->g:Z

    .line 432
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/PieProgress;->getProgress()I

    move-result v0

    const/16 v1, 0x19

    if-ge v0, v1, :cond_0

    .line 433
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 434
    const v0, 0x7f070646

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b()V

    .line 442
    :goto_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f()V

    .line 443
    return-void

    .line 439
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$a;

    .line 440
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$a;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j:I

    return v0
.end method

.method private j()V
    .locals 8

    .prologue
    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f:Z

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->e:Landroid/media/MediaRecorder;

    .line 464
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 465
    return-void

    .line 449
    :catch_0
    move-exception v0

    .line 453
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 454
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

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Lcom/yelp/android/ui/widgets/PieProgress;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 485
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 488
    :cond_0
    return-void
.end method

.method private m()Landroid/media/CamcorderProfile;
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 492
    invoke-static {v1}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-static {v1}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 309
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->BusinessVideoCapture:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 315
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 254
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->e()V

    .line 255
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 320
    packed-switch p1, :pswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 324
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 326
    const-string/jumbo v1, "extra_media_source"

    sget-object v2, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-static {p3, v1, v2}, Lcom/yelp/android/util/d;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Enum;)V

    .line 330
    invoke-virtual {v0, p2, p3}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 331
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 320
    :pswitch_data_0
    .packed-switch 0x408
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const/16 v0, 0xfa

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/support/v4/app/Fragment;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 109
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 110
    const-string/jumbo v1, "business_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->l:Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "started_from_gallery"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    .line 112
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    .line 151
    const v0, 0x7f0300d9

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 153
    const v0, 0x7f0f01eb

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/SquareTextureView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    .line 154
    const v0, 0x7f0f0344

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/PieProgress;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    .line 155
    const v0, 0x7f0f0345

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    .line 156
    const v0, 0x7f0f0346

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 158
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Lcom/yelp/android/ui/widgets/SquareTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 159
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->c:Landroid/widget/Button;

    new-instance v3, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$1;

    invoke-direct {v3, p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$1;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 189
    iget-boolean v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->m:Z

    if-eqz v2, :cond_0

    .line 190
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    :cond_0
    new-instance v2, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$2;-><init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v0, 0x7f0f01e7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Landroid/widget/ImageView;)V

    .line 206
    return-object v1
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 279
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onPause()V

    .line 280
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->b(Landroid/app/Activity;)V

    .line 281
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->f:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b:Lcom/yelp/android/ui/widgets/PieProgress;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/PieProgress;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 283
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j()V

    .line 284
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->k()V

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 291
    iput-object v2, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->d:Landroid/hardware/Camera;

    .line 294
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/b;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/media/b;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_2

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->n:Lcom/yelp/android/ui/activities/media/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/media/b;->cancel(Z)Z

    .line 297
    :cond_2
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .prologue
    const v3, 0x7f070486

    const/4 v2, 0x0

    .line 117
    const/16 v0, 0xfa

    if-ne v0, p1, :cond_4

    .line 118
    invoke-static {p2, p3}, Lcom/yelp/android/appdata/k;->a([Ljava/lang/String;[I)Ljava/util/Map;

    move-result-object v1

    .line 121
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 126
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 130
    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 131
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 133
    :cond_2
    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    invoke-static {v3, v2}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 137
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(I)V

    .line 138
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_0

    .line 139
    :cond_3
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 259
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onResume()V

    .line 260
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/app/Activity;)V

    .line 262
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v2, 0x0

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->STORAGE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/yelp/android/appdata/PermissionGroup;->MICROPHONE:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;[Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->b()V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a:Lcom/yelp/android/ui/widgets/SquareTextureView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/widgets/SquareTextureView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->p:Landroid/view/TextureView$SurfaceTextureListener;

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

    .line 275
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->onStop()V

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Lcom/yelp/android/appdata/g;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->o:Lcom/yelp/android/appdata/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/g;->cancel(Z)Z

    .line 305
    :cond_0
    return-void
.end method
