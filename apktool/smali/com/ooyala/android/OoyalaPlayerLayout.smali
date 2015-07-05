.class public Lcom/ooyala/android/OoyalaPlayerLayout;
.super Landroid/widget/FrameLayout;
.source "OoyalaPlayerLayout.java"


# instance fields
.field private _controller:Lcom/ooyala/android/LayoutController;

.field protected _playerFrame:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    .line 11
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    .line 19
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->setupPlayerFrame()V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 9
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    .line 11
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    .line 29
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->setupPlayerFrame()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 9
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    .line 11
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    .line 40
    invoke-direct {p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->setupPlayerFrame()V

    .line 41
    return-void
.end method

.method private setupPlayerFrame()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 44
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    .line 45
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getLayoutController()Lcom/ooyala/android/LayoutController;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    return-object v0
.end method

.method public getPlayerFrame()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_playerFrame:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    invoke-interface {v0, p1, p0}, Lcom/ooyala/android/LayoutController;->onTouchEvent(Landroid/view/MotionEvent;Lcom/ooyala/android/OoyalaPlayerLayout;)Z

    move-result v0

    goto :goto_0
.end method

.method public setLayoutController(Lcom/ooyala/android/LayoutController;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/ooyala/android/OoyalaPlayerLayout;->_controller:Lcom/ooyala/android/LayoutController;

    .line 72
    return-void
.end method
