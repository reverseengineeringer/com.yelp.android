.class Lcom/yelp/android/ui/j;
.super Landroid/view/SurfaceView;
.source "ActivityMonocle.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/view/SurfaceHolder;

.field private b:Landroid/hardware/Camera;

.field private final c:Lcom/yelp/android/ui/MonocleEngine;

.field private d:I

.field private e:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 788
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 790
    invoke-virtual {p0}, Lcom/yelp/android/ui/j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/j;->a:Landroid/view/SurfaceHolder;

    .line 791
    iget-object v0, p0, Lcom/yelp/android/ui/j;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 792
    iget-object v0, p0, Lcom/yelp/android/ui/j;->a:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 793
    new-instance v0, Lcom/yelp/android/ui/MonocleEngine;

    invoke-direct {v0}, Lcom/yelp/android/ui/MonocleEngine;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/j;->c:Lcom/yelp/android/ui/MonocleEngine;

    .line 795
    const/4 v0, 0x0

    iput v0, p0, Lcom/yelp/android/ui/j;->d:I

    .line 796
    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/Camera;)Z
    .locals 2

    .prologue
    .line 806
    iput-object p1, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    .line 807
    iget-boolean v0, p0, Lcom/yelp/android/ui/j;->e:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 809
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/yelp/android/ui/j;->a:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 814
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 816
    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 810
    :catch_0
    move-exception v0

    .line 811
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    .line 812
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 846
    iget-object v0, p0, Lcom/yelp/android/ui/j;->c:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/yelp/android/ui/j;->d:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/MonocleEngine;->Touch(II)V

    .line 847
    const/4 v0, 0x1

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .prologue
    .line 840
    iput p4, p0, Lcom/yelp/android/ui/j;->d:I

    .line 841
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 821
    iput-boolean v1, p0, Lcom/yelp/android/ui/j;->e:Z

    .line 822
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/j;->a(Landroid/hardware/Camera;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 824
    const v0, 0x7f0703d3

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 827
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/j;->e:Z

    .line 832
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 834
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/j;->b:Landroid/hardware/Camera;

    .line 836
    :cond_0
    return-void
.end method
