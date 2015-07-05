.class public interface abstract Lcom/ooyala/android/PlayerInfo;
.super Ljava/lang/Object;
.source "PlayerInfo.java"


# virtual methods
.method public abstract getDevice()Ljava/lang/String;
.end method

.method public abstract getMaxBitrate()I
.end method

.method public abstract getMaxHeight()I
.end method

.method public abstract getMaxWidth()I
.end method

.method public abstract getSupportedFormats()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSupportedProfiles()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUserAgent()Ljava/lang/String;
.end method
