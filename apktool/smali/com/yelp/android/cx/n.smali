.class public final Lcom/yelp/android/cx/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yelp/android/cw/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cx/n$1;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljp/line/android/sdk/api/ApiType;",
            "Lcom/yelp/android/cx/a",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_OTP:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/g;

    invoke-direct {v2}, Lcom/yelp/android/cx/g;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/b;

    invoke-direct {v2}, Lcom/yelp/android/cx/b;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->LOGOUT:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/h;

    invoke-direct {v2}, Lcom/yelp/android/cx/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->REFRESH_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    invoke-static {}, Lcom/yelp/android/cx/j;->a()Lcom/yelp/android/cx/j;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_MY_PROFILE:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/f;

    invoke-direct {v2}, Lcom/yelp/android/cx/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->POST_EVENT:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/i;

    invoke-direct {v2}, Lcom/yelp/android/cx/i;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->UPLOAD_PROFILE_IMAGE:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/k;

    invoke-direct {v2}, Lcom/yelp/android/cx/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/yelp/android/cx/c;

    invoke-direct {v0}, Lcom/yelp/android/cx/c;-><init>()V

    iget-object v1, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_FAVORITE_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_PROFILES:Ljp/line/android/sdk/api/ApiType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v2, Ljp/line/android/sdk/api/ApiType;->GET_SAME_CHANNEL_FRIENDS:Ljp/line/android/sdk/api/ApiType;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_GROUPS:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/e;

    invoke-direct {v2}, Lcom/yelp/android/cx/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    sget-object v1, Ljp/line/android/sdk/api/ApiType;->GET_GROUP_MEMBERS:Ljp/line/android/sdk/api/ApiType;

    new-instance v2, Lcom/yelp/android/cx/d;

    invoke-direct {v2}, Lcom/yelp/android/cx/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RO:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yelp/android/cw/c;",
            "Lcom/yelp/android/cw/d",
            "<TRO;>;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/cx/n;->a:Ljava/util/Map;

    iget-object v1, p1, Lcom/yelp/android/cw/c;->a:Ljp/line/android/sdk/api/ApiType;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/cx/a;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/cx/a;->a(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/yelp/android/cw/d;

    invoke-direct {v1}, Lcom/yelp/android/cw/d;-><init>()V

    invoke-static {}, Lcom/yelp/android/cx/j;->a()Lcom/yelp/android/cx/j;

    move-result-object v2

    new-instance v3, Lcom/yelp/android/cw/c;

    sget-object v4, Ljp/line/android/sdk/api/ApiType;->REFRESH_ACCESS_TOKEN:Ljp/line/android/sdk/api/ApiType;

    invoke-direct {v3, v4}, Lcom/yelp/android/cw/c;-><init>(Ljp/line/android/sdk/api/ApiType;)V

    invoke-virtual {v2, v3, v1}, Lcom/yelp/android/cx/j;->a(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)Z

    sget-object v2, Lcom/yelp/android/cx/n$1;->a:[I

    invoke-virtual {v1}, Lcom/yelp/android/cw/d;->b()Ljp/line/android/sdk/api/FutureStatus;

    move-result-object v3

    invoke-virtual {v3}, Ljp/line/android/sdk/api/FutureStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lcom/yelp/android/cw/d;->d()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/cw/d;->a(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v0, p1, p2}, Lcom/yelp/android/cx/a;->a(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/cw/d;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-virtual {p2}, Lcom/yelp/android/cw/d;->e()Z

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/yelp/android/cw/d;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
