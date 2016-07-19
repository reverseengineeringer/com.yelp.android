.class public Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;
.source "AbstractDefaultOoyalaPlayerControls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PlayPauseButton"
.end annotation


# instance fields
.field private _playing:Z

.field final synthetic this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->this$0:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->_playing:Z

    .line 101
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/4 v7, 0x5

    const/4 v3, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 118
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->_playing:Z

    if-eqz v0, :cond_1

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getHeight()I

    move-result v6

    iget-boolean v8, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->_touching:Z

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/ooyala/android/Images;->drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V

    goto :goto_0

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v4, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->getHeight()I

    move-result v6

    iget-boolean v8, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->_touching:Z

    move v0, v3

    move-object v2, p1

    invoke-static/range {v0 .. v8}, Lcom/ooyala/android/Images;->drawImage(ILandroid/content/Context;Landroid/graphics/Canvas;IIIIIZ)V

    goto :goto_0
.end method

.method public setPlaying(Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->_playing:Z

    .line 105
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->invalidate()V

    .line 106
    return-void
.end method
