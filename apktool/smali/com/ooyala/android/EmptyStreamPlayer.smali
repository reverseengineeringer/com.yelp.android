.class public Lcom/ooyala/android/EmptyStreamPlayer;
.super Lcom/ooyala/android/StreamPlayer;
.source "EmptyStreamPlayer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/ooyala/android/StreamPlayer;-><init>()V

    .line 55
    return-void
.end method

.method private createView(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 41
    new-instance v0, Lcom/ooyala/android/MovieView;

    invoke-direct {v0, p1}, Lcom/ooyala/android/MovieView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 42
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 45
    return-void
.end method

.method private removeView()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 88
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    .line 89
    return-void
.end method

.method private setupView()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ooyala/android/EmptyStreamPlayer;->createView(Landroid/content/Context;)V

    .line 34
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_parent:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 35
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    check-cast v0, Lcom/ooyala/android/MovieView;

    const v1, 0x3fe38e39

    invoke-virtual {v0, v1}, Lcom/ooyala/android/MovieView;->setAspectRatio(F)V

    .line 36
    iget-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_view:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 37
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 38
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/ooyala/android/EmptyStreamPlayer;->removeView()V

    .line 82
    return-void
.end method

.method public init(Lcom/ooyala/android/OoyalaPlayer;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ooyala/android/OoyalaPlayer;",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 19
    if-nez p1, :cond_0

    .line 20
    const-string/jumbo v0, "Invalid Parent"

    iput-object v0, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_error:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/EmptyStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/EmptyStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/ooyala/android/EmptyStreamPlayer;->setParent(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 26
    invoke-direct {p0}, Lcom/ooyala/android/EmptyStreamPlayer;->setupView()V

    .line 27
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/EmptyStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0
.end method

.method public play()V
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcom/ooyala/android/EmptyStreamPlayer$1;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/EmptyStreamPlayer;->_state:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    return-void

    .line 53
    :pswitch_0
    sget-object v0, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    invoke-virtual {p0, v0}, Lcom/ooyala/android/EmptyStreamPlayer;->setState(Lcom/ooyala/android/OoyalaPlayer$State;)V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public resume(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 0

    .prologue
    .line 77
    return-void
.end method

.method public suspend()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public suspend(ILcom/ooyala/android/OoyalaPlayer$State;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method
