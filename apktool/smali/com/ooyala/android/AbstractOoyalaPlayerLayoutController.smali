.class public abstract Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;
.super Ljava/lang/Object;
.source "AbstractOoyalaPlayerLayoutController.java"

# interfaces
.implements Lcom/ooyala/android/LayoutController;


# instance fields
.field protected _fullscreenButtonShowing:Z

.field protected _fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

.field protected _fullscreenDialog:Landroid/app/Dialog;

.field protected _fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

.field protected _fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

.field protected _inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

.field protected _inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

.field protected _layout:Lcom/ooyala/android/OoyalaPlayerLayout;

.field protected _player:Lcom/ooyala/android/OoyalaPlayer;


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 17
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    .line 18
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 19
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 20
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 21
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 22
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 23
    iput-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenButtonShowing:Z

    .line 93
    iput-object p2, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    .line 94
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 95
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/OoyalaPlayer;->setLayoutController(Lcom/ooyala/android/LayoutController;)V

    .line 96
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0, p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->setLayoutController(Lcom/ooyala/android/LayoutController;)V

    .line 97
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    if-ne p3, v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->createDefaultControls(Lcom/ooyala/android/OoyalaPlayerLayout;Z)Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->setInlineControls(Lcom/ooyala/android/OoyalaPlayerControls;)V

    .line 99
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->hide()V

    .line 100
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-virtual {v0, v1}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 102
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, p2, p3}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, p2, p3, p5}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 6

    .prologue
    .line 46
    sget-object v4, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 47
    return-void
.end method


# virtual methods
.method public createDefaultControls(Lcom/ooyala/android/OoyalaPlayerLayout;Z)Lcom/ooyala/android/OoyalaPlayerControls;
    .locals 2

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    new-instance v0, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, v1, p1}, Lcom/ooyala/android/DefaultOoyalaPlayerFullscreenControls;-><init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 192
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, v1, p1}, Lcom/ooyala/android/DefaultOoyalaPlayerInlineControls;-><init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V

    goto :goto_0
.end method

.method public getControls()Lcom/ooyala/android/OoyalaPlayerControls;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    goto :goto_0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->getPlayerFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayerLayout;->getPlayerFrame()Landroid/widget/FrameLayout;

    move-result-object v0

    goto :goto_0
.end method

.method public getOverlay()Lcom/ooyala/android/OoyalaPlayerControls;
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    goto :goto_0
.end method

.method public getPlayer()Lcom/ooyala/android/OoyalaPlayer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    return-object v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Lcom/ooyala/android/OoyalaPlayerLayout;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 153
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    if-eqz v0, :cond_1

    .line 154
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$2;->$SwitchMap$com$ooyala$android$OoyalaPlayer$State:[I

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->getState()Lcom/ooyala/android/OoyalaPlayer$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getControls()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getControls()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getControls()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->hide()V

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getOverlay()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getOverlay()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getOverlay()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->hide()V

    .line 177
    :cond_1
    :goto_1
    :pswitch_0
    return v2

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getControls()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->show()V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->getOverlay()Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v0

    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->show()V

    goto :goto_1

    .line 154
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setFullscreen(Z)V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public setFullscreenButtonShowing(Z)V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-interface {v0, p1}, Lcom/ooyala/android/OoyalaPlayerControls;->setFullscreenButtonShowing(Z)V

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-interface {v0, p1}, Lcom/ooyala/android/OoyalaPlayerControls;->setFullscreenButtonShowing(Z)V

    .line 230
    :cond_1
    iput-boolean p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenButtonShowing:Z

    .line 231
    return-void
.end method

.method public setFullscreenControls(Lcom/ooyala/android/OoyalaPlayerControls;)V
    .locals 2

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 139
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-boolean v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenButtonShowing:Z

    invoke-interface {v0, v1}, Lcom/ooyala/android/OoyalaPlayerControls;->setFullscreenButtonShowing(Z)V

    .line 140
    return-void
.end method

.method public setFullscreenOverlay(Lcom/ooyala/android/OoyalaPlayerControls;)V
    .locals 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 111
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-interface {v0, v1}, Lcom/ooyala/android/OoyalaPlayerControls;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 112
    return-void
.end method

.method public setInlineControls(Lcom/ooyala/android/OoyalaPlayerControls;)V
    .locals 2

    .prologue
    .line 133
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 134
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-boolean v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_fullscreenButtonShowing:Z

    invoke-interface {v0, v1}, Lcom/ooyala/android/OoyalaPlayerControls;->setFullscreenButtonShowing(Z)V

    .line 135
    return-void
.end method

.method public setInlineOverlay(Lcom/ooyala/android/OoyalaPlayerControls;)V
    .locals 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 106
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-object v1, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-interface {v0, v1}, Lcom/ooyala/android/OoyalaPlayerControls;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 107
    return-void
.end method

.method public showClosedCaptionsMenu()V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->getAvailableClosedCaptionsLanguages()Ljava/util/Set;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "None"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 205
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 206
    const-string/jumbo v2, "Subtitles/Closed Captions"

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    new-instance v2, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;

    invoke-direct {v2, p0, v0}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$1;-><init>(Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;[Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 215
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 217
    return-void
.end method
