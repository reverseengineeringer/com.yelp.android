.class Lcom/yelp/android/ui/activities/camera/f;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/e;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/e;->a(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 432
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/e;->a(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 417
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/camera/e;->a(Lcom/yelp/android/ui/activities/camera/e;Landroid/hardware/Camera$Parameters;)V

    .line 419
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->b(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->b(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 423
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->c(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->c(Lcom/yelp/android/ui/activities/camera/e;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 427
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->d(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 428
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/f;->a:Lcom/yelp/android/ui/activities/camera/e;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/e;->d(Lcom/yelp/android/ui/activities/camera/e;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    iget-object v2, v2, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 431
    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
