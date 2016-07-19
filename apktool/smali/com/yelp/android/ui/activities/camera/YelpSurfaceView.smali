.class public Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;
.super Landroid/view/SurfaceView;
.source "YelpSurfaceView.java"


# instance fields
.field private a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private a(IILandroid/hardware/Camera$Size;)F
    .locals 3

    .prologue
    .line 56
    int-to-float v0, p1

    iget v1, p3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b()Landroid/hardware/Camera$Size;

    move-result-object v0

    if-nez v0, :cond_1

    .line 34
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 46
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 39
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-direct {p0, v1, v2, v0}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->a(IILandroid/hardware/Camera$Size;)F

    move-result v1

    .line 44
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public setCameraWrangler(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    .line 52
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/camera/YelpSurfaceView;->requestLayout()V

    .line 53
    return-void
.end method
