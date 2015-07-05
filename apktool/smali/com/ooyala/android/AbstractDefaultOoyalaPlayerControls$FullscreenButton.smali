.class public Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;
.source "AbstractDefaultOoyalaPlayerControls.java"


# instance fields
.field private _fullscreen:Z

.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->_fullscreen:Z

    .line 126
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    .line 135
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->_fullscreen:Z

    if-eqz v0, :cond_1

    .line 137
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getHeight()I

    move-result v6

    iget-boolean v8, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->_touching:Z

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/ooyala/android/Images;->drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V

    goto :goto_0

    .line 140
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->getHeight()I

    move-result v6

    iget-boolean v8, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->_touching:Z

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/ooyala/android/Images;->drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 0

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->_fullscreen:Z

    .line 130
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->invalidate()V

    .line 131
    return-void
.end method
