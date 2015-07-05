.class public Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.source "DefaultOoyalaPlayerInlineControls.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Ljava/util/Observer;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultOoyalaPlayerInlineControls"


# instance fields
.field private _bottomBar:Landroid/widget/LinearLayout;

.field private _closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

.field private _currTime:Landroid/widget/TextView;

.field private _duration:Landroid/widget/TextView;

.field private _fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

.field private _fullscreenButtonShowing:Z

.field private _liveIndicator:Landroid/widget/TextView;

.field private _liveWrapper:Landroid/widget/LinearLayout;

.field private _playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

.field private _seek:Landroid/widget/SeekBar;

.field private _seekWrapper:Landroid/widget/LinearLayout;

.field private _seeking:Z

.field private _spinner:Landroid/widget/ProgressBar;

.field private _wasPlaying:Z


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    .line 30
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    .line 31
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    .line 32
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    .line 33
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    .line 34
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    .line 35
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    .line 36
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    .line 38
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    .line 39
    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreenButtonShowing:Z

    .line 45
    invoke-virtual {p0, p2}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 46
    invoke-virtual {p0, p1}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 47
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->setupControls()V

    .line 48
    return-void
.end method


# virtual methods
.method public bottomBarOffset()I
    .locals 1

    .prologue
    .line 293
    const/16 v0, 0x37

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    if-ne p1, v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->show()V

    .line 237
    :cond_0
    :goto_1
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    goto :goto_0

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isPlayerReady:Z

    if-eqz v0, :cond_4

    .line 231
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Lcom/ooyala/android/OoyalaPlayer;->setFullscreen(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->updateButtonStates()V

    .line 233
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->hide()V

    goto :goto_1

    .line 231
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    if-ne p1, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->getLayoutController()Lcom/ooyala/android/LayoutController;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/LayoutController;->showClosedCaptionsMenu()V

    goto :goto_1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 193
    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seeking:Z

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v0

    const v1, 0x36ee80

    if-lt v0, v1, :cond_2

    const/4 v0, 0x1

    .line 195
    :goto_0
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v2, v0}, Lcom/ooyala/android/Utils;->timeStringFromMillis(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getSeekStyle()Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    move-result-object v0

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$SeekStyle;->ENHANCED:Lcom/ooyala/android/OoyalaPlayer$SeekStyle;

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p2}, Lcom/ooyala/android/OoyalaPlayer;->seekToPercent(I)V

    .line 199
    invoke-virtual {p0, v4, v4}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 201
    :cond_1
    return-void

    .line 194
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .prologue
    .line 205
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seeking:Z

    .line 206
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_wasPlaying:Z

    .line 207
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->pause()V

    .line 208
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    const-string/jumbo v0, "DefaultOoyalaPlayerInlineControls"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStopTrackingTouch(): _wasPlaying="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_wasPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "percent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->seekToPercent(I)V

    .line 214
    invoke-virtual {p0, v3, v3}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seeking:Z

    .line 216
    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_wasPlaying:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->play()V

    .line 219
    :cond_0
    return-void
.end method

.method public setFullscreenButtonShowing(Z)V
    .locals 0

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreenButtonShowing:Z

    .line 299
    return-void
.end method

.method protected setupControls()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x11

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 87
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    if-nez v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    .line 89
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-static {v1}, Lcom/ooyala/android/Images;->gradientBackground(Landroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    .line 96
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setPlaying(Z)V

    .line 97
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 99
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 104
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    .line 105
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 108
    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 109
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    new-instance v0, Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    .line 111
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 113
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 114
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 115
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 116
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 118
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    const-string/jumbo v1, "00:00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 122
    const/16 v1, 0x15

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 123
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 129
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 130
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 131
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 132
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    .line 135
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 137
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    .line 138
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    const-string/jumbo v1, "LIVE"

    invoke-static {v1}, Lcom/ooyala/android/LocalizationSupport;->localizedStringFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 144
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveIndicator:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 146
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 148
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v6}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 151
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    .line 154
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setFullscreen(Z)V

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x23

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 158
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 159
    const/4 v1, 0x2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 160
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    new-instance v0, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;-><init>(Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    .line 164
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x23

    invoke-static {v2, v3}, Lcom/ooyala/android/Images;->dpToPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 166
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    invoke-virtual {v1, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 171
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 174
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v8, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 177
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_bottomBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    .line 180
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 181
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 183
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 187
    iget-object v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_baseLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->hide()V

    goto/16 :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seeking:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadPercentage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 243
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seek:Landroid/widget/SeekBar;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getBufferPercentage()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v0

    const v3, 0x36ee80

    if-lt v0, v3, :cond_a

    move v0, v1

    .line 247
    :goto_0
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_duration:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getDuration()I

    move-result v4

    invoke-static {v4, v0}, Lcom/ooyala/android/Utils;->timeStringFromMillis(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_currTime:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v4}, Lcom/ooyala/android/OoyalaPlayer;->getPlayheadTime()I

    move-result v4

    invoke-static {v4, v0}, Lcom/ooyala/android/Utils;->timeStringFromMillis(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    :cond_1
    const-string/jumbo v0, "adStarted"

    if-ne p2, v0, :cond_2

    .line 253
    iput-boolean v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isPlayerReady:Z

    .line 254
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->updateButtonStates()V

    .line 257
    :cond_2
    const-string/jumbo v0, "adCompleted"

    if-eq p2, v0, :cond_3

    const-string/jumbo v0, "adSkipped"

    if-eq p2, v0, :cond_3

    const-string/jumbo v0, "adError"

    if-ne p2, v0, :cond_4

    .line 260
    :cond_3
    iput-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isPlayerReady:Z

    .line 261
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->updateButtonStates()V

    .line 265
    :cond_4
    const-string/jumbo v0, "stateChanged"

    if-ne p2, v0, :cond_9

    .line 266
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->updateButtonStates()V

    .line 270
    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v3, :cond_b

    iget-boolean v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isVisible:Z

    if-eqz v3, :cond_b

    .line 271
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    :goto_1
    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->READY:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->PLAYING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v3, :cond_5

    sget-object v3, Lcom/ooyala/android/OoyalaPlayer$State;->PAUSED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v3, :cond_6

    .line 277
    :cond_5
    iput-boolean v1, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isPlayerReady:Z

    .line 280
    :cond_6
    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_7

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    if-ne v0, v1, :cond_8

    .line 281
    :cond_7
    iput-boolean v2, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_isPlayerReady:Z

    .line 282
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->hide()V

    .line 284
    :cond_8
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->isShowing()Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->INIT:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->LOADING:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->ERROR:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_9

    sget-object v1, Lcom/ooyala/android/OoyalaPlayer$State;->SUSPENDED:Lcom/ooyala/android/OoyalaPlayer$State;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_9

    .line 286
    invoke-virtual {p0}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->show()V

    .line 289
    :cond_9
    return-void

    :cond_a
    move v0, v2

    .line 246
    goto/16 :goto_0

    .line 273
    :cond_b
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_spinner:Landroid/widget/ProgressBar;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1
.end method

.method protected updateButtonStates()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 53
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_playPause:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isPlaying()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$PlayPauseButton;->setPlaying(Z)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->isFullscreen()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setFullscreen(Z)V

    .line 59
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreen:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;

    iget-boolean v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_fullscreenButtonShowing:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$FullscreenButton;->setVisibility(I)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 64
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 71
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 72
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ooyala/android/Video;->isLive()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_liveWrapper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isShowingAd()Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x3ecccccd    # 0.4f

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getCurrentItem()Lcom/ooyala/android/Video;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_closedCaptions:Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;

    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v3}, Lcom/ooyala/android/OoyalaPlayer;->getAvailableClosedCaptionsLanguages()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_4
    invoke-virtual {v0, v2}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls$ClosedCaptionsButton;->setVisibility(I)V

    .line 83
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 59
    goto :goto_0

    .line 66
    :cond_6
    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 67
    iget-object v3, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_seekWrapper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->isAdPlaying()Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_5

    :cond_8
    move v0, v2

    .line 72
    goto :goto_2

    .line 74
    :cond_9
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_a
    move v2, v1

    .line 80
    goto :goto_4
.end method
