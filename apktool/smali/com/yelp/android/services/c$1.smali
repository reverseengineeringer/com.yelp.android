.class final Lcom/yelp/android/services/c$1;
.super Ljava/lang/Object;
.source "HttpRequestWrapped.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestRetryHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/c;->b(Landroid/content/Context;Lcom/yelp/android/debug/Debug;Lcom/yelp/android/appdata/f;)Lorg/apache/http/impl/client/DefaultHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 125
    if-nez p1, :cond_1

    move v0, v1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    instance-of v2, p1, Ljava/net/SocketException;

    if-eqz v2, :cond_2

    if-lt p2, v3, :cond_0

    .line 129
    :cond_2
    instance-of v2, p1, Lorg/apache/http/NoHttpResponseException;

    if-eqz v2, :cond_3

    if-lt p2, v3, :cond_0

    .line 133
    :cond_3
    if-eqz p2, :cond_0

    move v0, v1

    goto :goto_0
.end method
