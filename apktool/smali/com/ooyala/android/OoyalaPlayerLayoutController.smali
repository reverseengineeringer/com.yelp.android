.class public Lcom/ooyala/android/OoyalaPlayerLayoutController;
.super Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;
.source "OoyalaPlayerLayoutController.java"


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;)V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, v0}, Lcom/ooyala/android/OoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ooyala/android/OoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V
    .locals 6

    .prologue
    .line 57
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/ooyala/android/OoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, p2, p3, p5}, Lcom/ooyala/android/OoyalaPlayer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V

    invoke-direct {p0, p1, v0, p4}, Lcom/ooyala/android/OoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/EmbedTokenGenerator;)V
    .locals 6

    .prologue
    .line 37
    sget-object v4, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;->AUTO:Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ooyala/android/OoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController$DefaultControlStyle;Lcom/ooyala/android/EmbedTokenGenerator;)V

    .line 38
    return-void
.end method


# virtual methods
.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFullscreen(Z)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x0

    .line 96
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v1}, Lcom/ooyala/android/OoyalaPlayer;->suspend()V

    .line 99
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p1, :cond_6

    .line 100
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 101
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    .line 102
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 103
    iput-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 104
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 105
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-interface {v0, v2}, Lcom/ooyala/android/OoyalaPlayerControls;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 107
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 110
    :cond_0
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_1

    .line 111
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-virtual {v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    .line 113
    :cond_1
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_2

    .line 114
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-virtual {v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-interface {v2, v5}, Lcom/ooyala/android/OoyalaPlayerControls;->setVisible(Z)V

    .line 153
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 154
    invoke-interface {v1}, Lcom/ooyala/android/OoyalaPlayerControls;->show()V

    .line 156
    :cond_4
    if-eqz v0, :cond_5

    .line 157
    invoke-interface {v0}, Lcom/ooyala/android/OoyalaPlayerControls;->show()V

    .line 159
    :cond_5
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-virtual {v0}, Lcom/ooyala/android/OoyalaPlayer;->resume()V

    .line 160
    return-void

    .line 119
    :cond_6
    invoke-virtual {p0}, Lcom/ooyala/android/OoyalaPlayerLayoutController;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_9

    if-eqz p1, :cond_9

    .line 120
    new-instance v1, Lcom/ooyala/android/OoyalaPlayerLayoutController$1;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_layout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v2}, Lcom/ooyala/android/OoyalaPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x103000a

    invoke-direct {v1, p0, v2, v3}, Lcom/ooyala/android/OoyalaPlayerLayoutController$1;-><init>(Lcom/ooyala/android/OoyalaPlayerLayoutController;Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    .line 130
    new-instance v1, Lcom/ooyala/android/OoyalaPlayerLayout;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ooyala/android/OoyalaPlayerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    .line 131
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x77

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/ooyala/android/OoyalaPlayerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1, p0}, Lcom/ooyala/android/OoyalaPlayerLayout;->setLayoutController(Lcom/ooyala/android/LayoutController;)V

    .line 134
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 137
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/ooyala/android/OoyalaPlayerControls;->setVisible(Z)V

    .line 139
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-virtual {p0, v1, v5}, Lcom/ooyala/android/OoyalaPlayerLayoutController;->createDefaultControls(Lcom/ooyala/android/OoyalaPlayerLayout;Z)Lcom/ooyala/android/OoyalaPlayerControls;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ooyala/android/OoyalaPlayerLayoutController;->setFullscreenControls(Lcom/ooyala/android/OoyalaPlayerControls;)V

    .line 140
    iget-object v1, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 141
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_7

    .line 142
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenLayout:Lcom/ooyala/android/OoyalaPlayerLayout;

    invoke-interface {v0, v2}, Lcom/ooyala/android/OoyalaPlayerControls;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 143
    iget-object v0, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenOverlay:Lcom/ooyala/android/OoyalaPlayerControls;

    .line 146
    :cond_7
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_8

    .line 147
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_inlineControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-virtual {v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->deleteObserver(Ljava/util/Observer;)V

    .line 149
    :cond_8
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    if-eqz v2, :cond_3

    .line 150
    iget-object v2, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_player:Lcom/ooyala/android/OoyalaPlayer;

    iget-object v3, p0, Lcom/ooyala/android/OoyalaPlayerLayoutController;->_fullscreenControls:Lcom/ooyala/android/OoyalaPlayerControls;

    invoke-virtual {v2, v3}, Lcom/ooyala/android/OoyalaPlayer;->addObserver(Ljava/util/Observer;)V

    goto/16 :goto_0

    :cond_9
    move-object v1, v0

    goto/16 :goto_0
.end method
