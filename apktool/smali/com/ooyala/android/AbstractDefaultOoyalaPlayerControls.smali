.class public abstract Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.super Ljava/lang/Object;
.source "AbstractDefaultOoyalaPlayerControls.java"

# interfaces
.implements Lcom/ooyala/android/OoyalaPlayerControls;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$TouchButton;,
        Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;
    }
.end annotation


# static fields
.field protected static final BACKGROUND_COLOR:I = 0x0

.field protected static final HIDE_AFTER_MILLIS:I = 0x1388

.field protected static final MARGIN_SIZE_DP:I = 0x5

.field protected static final PREFERRED_BUTTON_HEIGHT_DP:I = 0x23

.field protected static final PREFERRED_BUTTON_WIDTH_DP:I = 0x28

.field protected static final SOFT_WHITE_COLOR:I


# instance fields
.field protected _baseLayout:Landroid/widget/FrameLayout;

.field protected final _hideHandler:Landroid/os/Handler;

.field protected _hideTimer:Ljava/util/Timer;

.field protected _isPlayerReady:Z

.field protected _isVisible:Z

.field protected _layout:Lcom/ooyala/android/OoyalaPlayerLayout;

.field protected _player:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xf0

    .line 27
    const/16 v0, 0xf5

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->SOFT_WHITE_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 17
    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    .line 18
    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    .line 19
    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_baseLayout:Landroid/widget/FrameLayout;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isPlayerReady:Z

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isVisible:Z

    .line 40
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;

    invoke-direct {v1, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$1;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideHandler:Landroid/os/Handler;

    .line 149
    return-void
.end method


# virtual methods
.method public bottomBarOffset()I
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isPlayerReady:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getClosedCaptionsStyle()Lcom/ooyala/android/ClosedCaptionsStyle;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ooyala/android/ClosedCaptionsStyle;->setBottomMargin(I)V

    .line 203
    iget-object v1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setClosedCaptionsStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_baseLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    .line 173
    return-void
.end method

.method public setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 168
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 230
    iput-boolean p1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isVisible:Z

    .line 231
    if-nez p1, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->hide()V

    .line 234
    :cond_0
    return-void
.end method

.method protected abstract setupControls()V
.end method

.method public show()V
    .locals 4

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isVisible:Z

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_baseLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 185
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->updateButtonStates()V

    .line 186
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    .line 187
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_hideTimer:Ljava/util/Timer;

    new-instance v1, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;

    invoke-direct {v1, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$HideTimerTask;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 188
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_isPlayerReady:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getClosedCaptionsStyle()Lcom/ooyala/android/ClosedCaptionsStyle;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->bottomBarOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/ClosedCaptionsStyle;->setBottomMargin(I)V

    .line 192
    iget-object v1, p0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setClosedCaptionsStyle(Lcom/ooyala/android/ClosedCaptionsStyle;)V

    goto :goto_0
.end method

.method public topBarOffset()I
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract updateButtonStates()V
.end method
