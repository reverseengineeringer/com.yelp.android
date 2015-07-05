.class public Lcom/ooyala/android/DefaultPlayerInfo;
.super Ljava/lang/Object;
.source "DefaultPlayerInfo.java"

# interfaces
.implements Lcom/ooyala/android/PlayerInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "android_html"

    return-object v0
.end method

.method public getMaxBitrate()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxHeight()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, -0x1

    return v0
.end method

.method public getSupportedFormats()Ljava/util/Set;
    .locals 3
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
    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    const-string/jumbo v1, "mp4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 18
    const-string/jumbo v1, "wv_mp4"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    sget-boolean v1, Lcom/ooyala/android/OoyalaPlayer;->enableHLS:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/ooyala/android/OoyalaPlayer;->enableCustomHLSPlayer:Z

    if-eqz v1, :cond_1

    .line 21
    :cond_0
    const-string/jumbo v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_2

    .line 25
    const-string/jumbo v1, "m3u8"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    const-string/jumbo v1, "wv_wvm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    const-string/jumbo v1, "wv_hls"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_2
    return-object v0
.end method

.method public getSupportedProfiles()Ljava/util/Set;
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
    .line 11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return-object v0
.end method
