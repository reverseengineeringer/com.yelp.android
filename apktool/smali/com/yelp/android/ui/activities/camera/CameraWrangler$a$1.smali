.class Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;
.super Ljava/lang/Object;
.source "CameraWrangler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)V
    .locals 0

    .prologue
    .line 545
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 570
    :goto_0
    return-void

    .line 552
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 555
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;Landroid/hardware/Camera$Parameters;)V

    .line 557
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 558
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setZoom(I)V

    .line 561
    :cond_1
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 562
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 565
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->d(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 566
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a$1;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;->d(Lcom/yelp/android/ui/activities/camera/CameraWrangler$a;)Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;

    move-result-object v2

    iget-object v2, v2, Lcom/yelp/android/ui/activities/camera/CameraWrangler$FlashMode;->mode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 569
    :cond_3
    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0
.end method
