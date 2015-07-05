.class public Lcom/ooyala/android/VASTStream;
.super Lcom/ooyala/android/Stream;
.source "VASTStream.java"


# instance fields
.field private _apiFramework:Ljava/lang/String;

.field private _maintainAspectRatio:Z

.field private _scalable:Z

.field private _vastDeliveryType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/ooyala/android/Stream;-><init>()V

    .line 20
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MediaFile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 21
    :cond_0
    const-string/jumbo v0, "delivery"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_vastDeliveryType:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "apiFramework"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_apiFramework:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "scalable"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/android/VASTStream;->_scalable:Z

    .line 27
    :cond_1
    const-string/jumbo v0, "maintainAspectRatio"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ooyala/android/VASTStream;->_maintainAspectRatio:Z

    .line 31
    :cond_2
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_4

    .line 33
    const-string/jumbo v1, "application/x-mpegURL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 34
    const-string/jumbo v1, "hls"

    iput-object v1, p0, Lcom/ooyala/android/VASTStream;->_deliveryType:Ljava/lang/String;

    .line 36
    :cond_3
    const-string/jumbo v1, "video/mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 37
    const-string/jumbo v0, "mp4"

    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_deliveryType:Ljava/lang/String;

    .line 42
    :cond_4
    :goto_1
    const-string/jumbo v0, "bitrate"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/VASTStream;->_videoBitrate:I

    .line 46
    :cond_5
    const-string/jumbo v0, "width"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/VASTStream;->_width:I

    .line 50
    :cond_6
    const-string/jumbo v0, "height"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-static {v0}, Lcom/ooyala/android/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ooyala/android/VASTStream;->_height:I

    .line 54
    :cond_7
    const-string/jumbo v0, "text"

    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_urlFormat:Ljava/lang/String;

    .line 55
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTextContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_url:Ljava/lang/String;

    goto/16 :goto_0

    .line 39
    :cond_8
    iput-object v0, p0, Lcom/ooyala/android/VASTStream;->_deliveryType:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public getApiFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ooyala/android/VASTStream;->_apiFramework:Ljava/lang/String;

    return-object v0
.end method

.method public getVastDeliveryType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ooyala/android/VASTStream;->_vastDeliveryType:Ljava/lang/String;

    return-object v0
.end method

.method public isMaintainAspectRatio()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/ooyala/android/VASTStream;->_maintainAspectRatio:Z

    return v0
.end method

.method public isScalable()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/ooyala/android/VASTStream;->_scalable:Z

    return v0
.end method
