.class Lcom/yelp/android/ui/activities/camera/TakePhoto$5;
.super Ljava/lang/Object;
.source "TakePhoto.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/TakePhoto;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/camera/TakePhoto;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    rem-int/2addr v1, v2

    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(ILandroid/view/SurfaceHolder;)V

    .line 372
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->d(Lcom/yelp/android/ui/activities/camera/TakePhoto;)Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->requestLayout()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    :goto_0
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    iget-object v1, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    const-string/jumbo v2, "Could not open camera"

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 375
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/TakePhoto$5;->a:Lcom/yelp/android/ui/activities/camera/TakePhoto;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->finish()V

    goto :goto_0
.end method
