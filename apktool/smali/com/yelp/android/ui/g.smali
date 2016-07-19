.class Lcom/yelp/android/ui/g;
.super Ljava/lang/Object;
.source "ActivityMonocle.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field public a:Z

.field private b:Lcom/yelp/android/ui/MonocleEngine;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/g;->a:Z

    .line 868
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .prologue
    .line 885
    iget-boolean v0, p0, Lcom/yelp/android/ui/g;->a:Z

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0}, Lcom/yelp/android/ui/MonocleEngine;->FlushTextures()V

    .line 887
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/g;->a:Z

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0}, Lcom/yelp/android/ui/MonocleEngine;->Draw()Lcom/yelp/android/ui/ActivityMonocle$MonocleButton;

    move-result-object v0

    .line 891
    if-eqz v0, :cond_1

    .line 892
    invoke-interface {v0}, Lcom/yelp/android/ui/ActivityMonocle$MonocleButton;->a()V

    .line 894
    :cond_1
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/ui/MonocleEngine;->Resize(II)V

    .line 881
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1

    .prologue
    .line 872
    new-instance v0, Lcom/yelp/android/ui/MonocleEngine;

    invoke-direct {v0}, Lcom/yelp/android/ui/MonocleEngine;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    .line 873
    iget-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0}, Lcom/yelp/android/ui/MonocleEngine;->Init()V

    .line 874
    iget-object v0, p0, Lcom/yelp/android/ui/g;->b:Lcom/yelp/android/ui/MonocleEngine;

    invoke-virtual {v0}, Lcom/yelp/android/ui/MonocleEngine;->FlushTextures()V

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/g;->a:Z

    .line 876
    return-void
.end method
