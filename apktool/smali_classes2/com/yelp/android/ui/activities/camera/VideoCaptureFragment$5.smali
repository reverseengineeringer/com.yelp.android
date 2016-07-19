.class Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;
.super Lcom/yelp/android/ui/activities/videotrim/c;
.source "VideoCaptureFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/videotrim/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 5

    .prologue
    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/PermissionGroup;->CAMERA:Lcom/yelp/android/appdata/PermissionGroup;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/k;->a(Landroid/content/Context;Lcom/yelp/android/appdata/PermissionGroup;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/view/Display;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;I)I

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 528
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->i(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/media/CamcorderProfile;

    move-result-object v1

    .line 529
    new-instance v2, Landroid/hardware/Camera$Size;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v2, v3, v4, v1}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 531
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 533
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 535
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 536
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1, v2, v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;II)V

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->j(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 539
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 540
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 548
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 550
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Landroid/hardware/Camera;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 551
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 562
    :cond_1
    :goto_0
    return-void

    .line 552
    :cond_2
    const-string/jumbo v1, "continuous-video"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 555
    const-string/jumbo v1, "continuous-video"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 558
    :catch_0
    move-exception v0

    .line 559
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 505
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 507
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 508
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->h(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment$5;->a:Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;->a(Lcom/yelp/android/ui/activities/camera/VideoCaptureFragment;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 511
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
