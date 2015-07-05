.class public final enum Lcom/yelp/android/util/RemoteImageExceptionCallback;
.super Ljava/lang/Enum;
.source "RemoteImageExceptionCallback.java"

# interfaces
.implements Lcom/bumptech/glide/request/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/util/RemoteImageExceptionCallback;",
        ">;",
        "Lcom/bumptech/glide/request/c",
        "<",
        "Ljava/lang/String;",
        "Lcom/yelp/android/z/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/util/RemoteImageExceptionCallback;

.field public static final enum INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/RemoteImageExceptionCallback;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/yelp/android/util/RemoteImageExceptionCallback;

    sget-object v1, Lcom/yelp/android/util/RemoteImageExceptionCallback;->INSTANCE:Lcom/yelp/android/util/RemoteImageExceptionCallback;

    aput-object v1, v0, v2

    sput-object v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;->$VALUES:[Lcom/yelp/android/util/RemoteImageExceptionCallback;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static isFromGoogleBot(Ljava/lang/Exception;)Z
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_0

    const-string/jumbo v1, "502"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string/jumbo v1, "generic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/util/RemoteImageExceptionCallback;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/util/RemoteImageExceptionCallback;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/yelp/android/util/RemoteImageExceptionCallback;->$VALUES:[Lcom/yelp/android/util/RemoteImageExceptionCallback;

    invoke-virtual {v0}, [Lcom/yelp/android/util/RemoteImageExceptionCallback;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/util/RemoteImageExceptionCallback;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/yelp/android/ag/j;Z)Z
    .locals 1

    .prologue
    .line 22
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yelp/android/util/RemoteImageExceptionCallback;->onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/yelp/android/ag/j;Z)Z

    move-result v0

    return v0
.end method

.method public onException(Ljava/lang/Exception;Ljava/lang/String;Lcom/yelp/android/ag/j;Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Exception;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ag/j",
            "<",
            "Lcom/yelp/android/z/b;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 31
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/yelp/android/util/RemoteImageExceptionCallback;->isFromGoogleBot(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v6

    .line 34
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {}, Lcom/yelp/android/util/h;->a()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/util/s;->a(Landroid/content/Context;)Z

    move-result v2

    .line 37
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/n;->j()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->h()Lcom/yelp/android/appdata/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/n;->h()Z

    move-result v4

    .line 40
    const-string/jumbo v5, "Resource"

    invoke-interface {v0, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 42
    const-string/jumbo v5, "DNS_cache"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    const-string/jumbo v1, "Exception"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string/jumbo v1, "Wifi"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string/jumbo v1, "Network"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string/jumbo v1, "Network_connected"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/av/a;

    move-result-object v1

    .line 50
    new-instance v2, Lorg/apache/http/client/HttpResponseException;

    const/16 v3, 0x1f7

    const-string/jumbo v4, "image_error"

    invoke-direct {v2, v3, v4}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-static {v2, v0}, Lcom/yelp/android/analytics/e;->a(Ljava/lang/Throwable;Ljava/util/Map;)Lcom/yelp/android/analytics/e;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/av/a;->a(Lcom/yelp/android/analytics/b;)V

    goto :goto_0
.end method

.method public onResourceReady(Lcom/yelp/android/z/b;Ljava/lang/String;Lcom/yelp/android/ag/j;ZZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/z/b;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ag/j",
            "<",
            "Lcom/yelp/android/z/b;",
            ">;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/yelp/android/ag/j;ZZ)Z
    .locals 6

    .prologue
    .line 22
    move-object v1, p1

    check-cast v1, Lcom/yelp/android/z/b;

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/util/RemoteImageExceptionCallback;->onResourceReady(Lcom/yelp/android/z/b;Ljava/lang/String;Lcom/yelp/android/ag/j;ZZ)Z

    move-result v0

    return v0
.end method
