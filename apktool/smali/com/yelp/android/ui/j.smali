.class Lcom/yelp/android/ui/j;
.super Landroid/opengl/GLSurfaceView;
.source "ActivityMonocle.java"


# instance fields
.field a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 433
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 430
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/j;->a:Z

    .line 434
    return-void
.end method


# virtual methods
.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/yelp/android/ui/j;->a:Z

    if-nez v0, :cond_0

    .line 439
    const/16 v0, 0x3ec

    invoke-static {p0, v0}, Lcom/yelp/android/ui/u;->a(Landroid/view/SurfaceView;I)V

    .line 441
    :cond_0
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 442
    return-void
.end method
