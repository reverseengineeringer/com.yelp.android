.class Lcom/yelp/android/ui/activities/photoviewer/av;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.source "YelpPlayerLayoutController.java"


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;-><init>()V

    .line 25
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/av;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/av;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/av;->setupControls()V

    .line 28
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public setFullscreenButtonShowing(Z)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method protected setupControls()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    return-void
.end method

.method protected updateButtonStates()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method
