.class Lcom/yelp/android/ui/e;
.super Landroid/opengl/GLSurfaceView;
.source "ActivityMonocle.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 435
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 432
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/e;->a:Z

    .line 436
    return-void
.end method


# virtual methods
.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/yelp/android/ui/e;->a:Z

    if-nez v0, :cond_0

    .line 441
    const/16 v0, 0x3ec

    invoke-static {p0, v0}, Lcom/yelp/android/ui/m;->a(Landroid/view/SurfaceView;I)V

    .line 443
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 444
    return-void
.end method
