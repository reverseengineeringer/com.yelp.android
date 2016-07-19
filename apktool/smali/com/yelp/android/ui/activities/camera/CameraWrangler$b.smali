.class Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;
.super Landroid/view/OrientationEventListener;
.source "CameraWrangler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/camera/CameraWrangler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0, p1, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    .line 588
    iput-object p3, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 589
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 4

    .prologue
    .line 593
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 596
    :cond_1
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 597
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->d(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)I

    move-result v1

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 598
    add-int/lit8 v1, p1, 0x2d

    div-int/lit8 v1, v1, 0x5a

    mul-int/lit8 v1, v1, 0x5a

    .line 600
    iget v2, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 601
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v0, v1

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 v0, v0, 0x168

    .line 605
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->b:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 606
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->b:Ljava/lang/Integer;

    .line 607
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/CameraWrangler$b;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->f()Lcom/yelp/android/ui/activities/camera/b;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/yelp/android/ui/activities/camera/b;->a(I)Lcom/yelp/android/ui/activities/camera/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/camera/b;->a()V

    goto :goto_0

    .line 603
    :cond_3
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1
.end method
