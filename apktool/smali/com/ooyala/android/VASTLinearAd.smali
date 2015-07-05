.class public Lcom/ooyala/android/VASTLinearAd;
.super Ljava/lang/Object;
.source "VASTLinearAd.java"

# interfaces
.implements Lcom/ooyala/android/PlayableItem;


# instance fields
.field private _clickThroughURL:Ljava/lang/String;

.field private _clickTrackingURLs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _customClickURLs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _duration:D

.field private _parameters:Ljava/lang/String;

.field private _streams:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;"
        }
    .end annotation
.end field

.field private _trackingEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 5

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickTrackingURLs:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_customClickURLs:Ljava/util/Set;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_streams:Ljava/util/Set;

    .line 31
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Linear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 33
    :goto_0
    if-eqz v1, :cond_0

    .line 34
    instance-of v0, v1, Lorg/w3c/dom/Element;

    if-nez v0, :cond_2

    .line 35
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 38
    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "Duration"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 40
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->secondsFromTimeString(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/ooyala/android/VASTLinearAd;->_duration:D

    .line 90
    :cond_3
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 41
    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "AdParameters"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 43
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_parameters:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v0, v1

    .line 44
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "TrackingEvents"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 45
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 46
    :goto_2
    if-eqz v2, :cond_3

    .line 47
    instance-of v0, v2, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v0, v2

    .line 51
    check-cast v0, Lorg/w3c/dom/Element;

    const-string/jumbo v3, "event"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 53
    if-eqz v0, :cond_8

    .line 54
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    :goto_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    .line 56
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 57
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v4, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_9
    move-object v0, v1

    .line 62
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "VideoClicks"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 63
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 64
    :goto_4
    if-eqz v2, :cond_3

    .line 65
    instance-of v0, v2, Lorg/w3c/dom/Element;

    if-eqz v0, :cond_a

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 66
    :cond_a
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_b
    move-object v0, v2

    .line 69
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ClickThrough"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickThroughURL:Ljava/lang/String;

    .line 76
    :cond_c
    :goto_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_d
    move-object v0, v2

    .line 71
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "ClickTracking"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 72
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickTrackingURLs:Ljava/util/Set;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_e
    move-object v0, v2

    .line 73
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "CustomClick"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 74
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_customClickURLs:Ljava/util/Set;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_f
    move-object v0, v1

    .line 78
    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "MediaFiles"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    .line 80
    :goto_6
    if-eqz v2, :cond_3

    .line 81
    instance-of v0, v2, Lorg/w3c/dom/Element;

    if-nez v0, :cond_10

    .line 82
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_6

    .line 85
    :cond_10
    new-instance v3, Lcom/ooyala/android/VASTStream;

    move-object v0, v2

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-direct {v3, v0}, Lcom/ooyala/android/VASTStream;-><init>(Lorg/w3c/dom/Element;)V

    .line 86
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_streams:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_6
.end method


# virtual methods
.method public getClickThroughURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickThroughURL:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackingURLs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickTrackingURLs:Ljava/util/Set;

    return-object v0
.end method

.method public getCustomClickURLs()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_customClickURLs:Ljava/util/Set;

    return-object v0
.end method

.method public getDuration()D
    .locals 2

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/ooyala/android/VASTLinearAd;->_duration:D

    return-wide v0
.end method

.method public getParameters()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_parameters:Ljava/lang/String;

    return-object v0
.end method

.method public getStream()Lcom/ooyala/android/Stream;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_streams:Ljava/util/Set;

    invoke-static {v0}, Lcom/ooyala/android/Stream;->bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;

    move-result-object v0

    return-object v0
.end method

.method public getStreams()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_streams:Ljava/util/Set;

    return-object v0
.end method

.method public getTrackingEvents()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    return-object v0
.end method

.method public updateClickTrackingURLs(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/ooyala/android/VASTLinearAd;->_clickTrackingURLs:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public updateTrackingEvents(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 165
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 166
    iget-object v2, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 168
    if-eqz v2, :cond_0

    .line 169
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 171
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 172
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 173
    iget-object v1, p0, Lcom/ooyala/android/VASTLinearAd;->_trackingEvents:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 176
    :cond_1
    return-void
.end method
