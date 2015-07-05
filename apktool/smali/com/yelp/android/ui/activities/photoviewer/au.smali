.class public Lcom/yelp/android/ui/activities/photoviewer/au;
.super Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;
.source "YelpPlayerLayoutController.java"


# direct methods
.method public constructor <init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/ooyala/android/AbstractOoyalaPlayerLayoutController;-><init>(Lcom/ooyala/android/OoyalaPlayerLayout;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public createDefaultControls(Lcom/ooyala/android/OoyalaPlayerLayout;Z)Lcom/ooyala/android/OoyalaPlayerControls;
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/av;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/photoviewer/au;->_player:Lcom/ooyala/android/OoyalaPlayer;

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/ui/activities/photoviewer/av;-><init>(Lcom/ooyala/android/OoyalaPlayer;Lcom/ooyala/android/OoyalaPlayerLayout;)V

    return-object v0
.end method
