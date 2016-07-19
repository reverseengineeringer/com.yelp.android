.class Lcom/yelp/android/ui/activities/photoviewer/b$a;
.super Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;
.source "YelpPlayerLayoutController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/ooyala/android/AbstractDefaultOoyalaPlayerControls;-><init>()V

    .line 26
    invoke-virtual {p0, p2}, Lcom/yelp/android/ui/activities/photoviewer/b$a;->setParentLayout(Lcom/ooyala/android/OoyalaPlayerLayout;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/b$a;->setOoyalaPlayer(Lcom/ooyala/android/OoyalaPlayer;)V

    .line 28
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/photoviewer/b$a;->setupControls()V

    .line 29
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public setFullscreenButtonShowing(Z)V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method protected setupControls()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected updateButtonStates()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method
