.class Lcom/ooyala/android/Stream$DefaultStreamSelector;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Lcom/ooyala/android/StreamSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ooyala/android/Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultStreamSelector"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bestStream(Ljava/util/Set;)Lcom/ooyala/android/Stream;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/ooyala/android/Stream;",
            ">;)",
            "Lcom/ooyala/android/Stream;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 34
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-object v1

    .line 37
    :cond_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ooyala/android/Stream;

    .line 39
    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getDeliveryType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "remote_asset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getDeliveryType()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "hls"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-static {v0}, Lcom/ooyala/android/Stream;->isDeliveryTypePlayable(Lcom/ooyala/android/Stream;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v0}, Lcom/ooyala/android/Stream;->isProfilePlayable(Lcom/ooyala/android/Stream;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getCombinedBitrate()I

    move-result v3

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getCombinedBitrate()I

    move-result v4

    if-lt v3, v4, :cond_4

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getCombinedBitrate()I

    move-result v3

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getCombinedBitrate()I

    move-result v4

    if-ne v3, v4, :cond_5

    invoke-virtual {v0}, Lcom/ooyala/android/Stream;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Lcom/ooyala/android/Stream;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_5

    :cond_4
    :goto_2
    move-object v1, v0

    .line 47
    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method
