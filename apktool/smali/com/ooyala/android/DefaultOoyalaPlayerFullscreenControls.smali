.class public Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.source "DefaultOoyalaPlayerFullscreenControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/util/Observer;


# static fields
.field private static final OVERLAY_BACKGROUND_COLOR:I

.field private static final OVERLAY_MARGIN_SIZE_DP:I = 0xa

.field private static final OVERLAY_PREFERRED_BUTTON_HEIGHT_DP:I = 0x2a

.field private static final OVERLAY_PREFERRED_BUTTON_WIDTH_DP:I = 0x30

.field private static final OVERLAY_SCALE:F = 1.2f


# instance fields
.field private _bottomOverlay:Landroid/widget/LinearLayout;

.field private _currTime:Landroid/widget/TextView;

.field private _duration:Landroid/widget/TextView;

.field private _fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

.field private _fullscreenButtonShowing:Z

.field private _liveIndicator:Landroid/widget/TextView;

.field private _liveWrapper:Landroid/widget/LinearLayout;

.field private _next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

.field private _playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

.field private _previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

.field private _seek:Landroid/widget/SeekBar;

.field private _seekWrapper:Landroid/widget/LinearLayout;

.field private _seeking:Z

.field private _spinner:Landroid/widget/ProgressBar;

.field private _topBar:Landroid/widget/LinearLayout;

.field private _wasPlaying:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    const/16 v0, 0xc8

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->OVERLAY_BACKGROUND_COLOR:I

    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    .line 26
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    .line 27
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    .line 28
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    .line 29
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    .line 30
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    .line 31
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    .line 32
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    .line 33
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    .line 34
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    .line 35
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    .line 36
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_spinner:Landroid/widget/ProgressBar;

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreenButtonShowing:Z

    .line 49
    invoke-virtual {p0, p2}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 51
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->setupControls()V

    .line 52
    return-void
.end method


# virtual methods
.method public bottomBarOffset()I
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 319
    :goto_0
    return v0

    .line 318
    :cond_0
    const/16 v0, 0x52

    .line 319
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 247
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    if-ne p1, v2, :cond_2

    .line 248
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/ooyala/android/OoyalaPlayer;->previousVideo(I)Z

    .line 263
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 248
    goto :goto_0

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    if-ne p1, v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_2
    invoke-virtual {v2, v0}, Lcom/ooyala/android/OoyalaPlayer;->nextVideo(I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    if-ne p1, v2, :cond_6

    .line 252
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 253
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 257
    :goto_3
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->show()V

    goto :goto_1

    .line 255
    :cond_5
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    goto :goto_3

    .line 258
    :cond_6
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    if-ne p1, v2, :cond_0

    iget-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isPlayerReady:Z

    if-eqz v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v3

    if-nez v3, :cond_7

    :goto_4
    invoke-virtual {v2, v1}, Lcom/ooyala/android/OoyalaPlayer;->setFullscreen(Z)V

    .line 260
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->updateButtonStates()V

    .line 261
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->hide()V

    goto :goto_1

    :cond_7
    move v1, v0

    .line 259
    goto :goto_4
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->ENHANCED:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->seekToPercent(I)V

    .line 224
    invoke-virtual {p0, v2, v2}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seeking:Z

    .line 231
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_wasPlaying:Z

    .line 232
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 233
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 237
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->seekToPercent(I)V

    .line 238
    invoke-virtual {p0, v2, v2}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seeking:Z

    .line 240
    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_wasPlaying:Z

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 243
    :cond_0
    return-void
.end method

.method public setFullscreenButtonShowing(Z)V
    .locals 0

    .prologue
    .line 329
    iput-boolean p1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreenButtonShowing:Z

    .line 330
    return-void
.end method

.method protected setupControls()V
    .locals 9

    .prologue
    const/16 v8, 0x11

    const/4 v7, 0x5

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 85
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    .line 87
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 89
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 91
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    sget v1, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->OVERLAY_BACKGROUND_COLOR:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 93
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    .line 94
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 97
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 98
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 99
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 100
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 101
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    .line 105
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setPlaying(Z)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 109
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 110
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 111
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 113
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 121
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 122
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 123
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 124
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_previous:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PreviousButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_next:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$NextButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 133
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 134
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_bottomOverlay:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    .line 137
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 138
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v1}, Lcom/ooyala/android/Images;->gradientBackground(Landroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 147
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    .line 149
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 151
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 152
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 154
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 156
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 160
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 161
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 164
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 165
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 167
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 168
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 169
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 170
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    .line 173
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    .line 176
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    const-string/jumbo v1, "LIVE"

    invoke-static {v1}, Lcom/ooyala/android/LocalizationSupport;->localizedStringFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 182
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 183
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 186
    iput v8, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 187
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 189
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v7}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 190
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    .line 193
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setFullscreen(Z)V

    .line 194
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 197
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 198
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 199
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/16 v2, 0x31

    invoke-direct {v0, v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 207
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_topBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->hide()V

    .line 214
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_spinner:Landroid/widget/ProgressBar;

    .line 215
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 217
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method public topBarOffset()I
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x23

    invoke-static {v0, v1}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 267
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seeking:Z

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadPercentage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 269
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getBufferPercentage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v0

    const v3, 0x36ee80

    if-lt v0, v3, :cond_9

    move v0, v1

    .line 272
    :goto_0
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v4

    invoke-static {v4, v0}, Lcom/ooyala/android/Utils;->timeStringFromMillis(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_currTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadTime()I

    move-result v4

    invoke-static {v4, v0}, Lcom/ooyala/android/Utils;->timeStringFromMillis(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    const-string/jumbo v0, "adStarted"

    if-ne p2, v0, :cond_1

    .line 277
    iput-boolean v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isPlayerReady:Z

    .line 278
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->updateButtonStates()V

    .line 281
    :cond_1
    const-string/jumbo v0, "adCompleted"

    if-eq p2, v0, :cond_2

    const-string/jumbo v0, "adSkipped"

    if-eq p2, v0, :cond_2

    const-string/jumbo v0, "adError"

    if-ne p2, v0, :cond_3

    .line 284
    :cond_2
    iput-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isPlayerReady:Z

    .line 285
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->updateButtonStates()V

    .line 289
    :cond_3
    const-string/jumbo v0, "stateChanged"

    if-ne p2, v0, :cond_8

    .line 290
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->updateButtonStates()V

    .line 294
    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v3, :cond_4

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v3, :cond_a

    :cond_4
    iget-boolean v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isVisible:Z

    if-eqz v3, :cond_a

    .line 295
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    :goto_1
    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v3, :cond_6

    .line 301
    :cond_5
    iput-boolean v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isPlayerReady:Z

    .line 304
    :cond_6
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_7

    .line 305
    iput-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_isPlayerReady:Z

    .line 306
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->hide()V

    .line 308
    :cond_7
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->isShowing()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 310
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->show()V

    .line 313
    :cond_8
    return-void

    :cond_9
    move v0, v2

    .line 271
    goto/16 :goto_0

    .line 297
    :cond_a
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_spinner:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateButtonStates()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setPlaying(Z)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setFullscreen(Z)V

    .line 63
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_fullscreenButtonShowing:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setVisibility(I)V

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 75
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ooyala/android/Video;->isLive()Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    .line 78
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 81
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 63
    goto :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isAdPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    move v1, v2

    .line 76
    goto :goto_2

    .line 78
    :cond_8
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method
