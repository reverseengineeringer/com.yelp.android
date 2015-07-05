.class public Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;
.super Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;
.source "OptimizedOoyalaPlayerLayoutController.java"


# instance fields
.field private _fullscreen:Z

.field private _fullscreenLP:Landroid/widget/FrameLayout$LayoutParams;

.field private _inlineLP:Landroid/widget/FrameLayout$LayoutParams;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreen:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_inlineLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x77

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreenLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    if-ne p3, v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 83
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_inlineLP:Landroid/widget/FrameLayout$LayoutParams;

    .line 86
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iput-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 87
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 6

    .prologue
    .line 58
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, p2, p3, p5}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 6

    .prologue
    .line 38
    sget-object v4, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 39
    return-void
.end method


# virtual methods
.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreen:Z

    return v0
.end method

.method public setFullscreen(Z)V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 104
    iput-boolean p1, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreen:Z

    .line 105
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v1, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_inlineLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 107
    iput-boolean p1, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreen:Z

    .line 108
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v1, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_fullscreenLP:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    iget-object v0, p0, Lcom/ooyala/android/OptimizedOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->bringToFront()V

    goto :goto_0
.end method
