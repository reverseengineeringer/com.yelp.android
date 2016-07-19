.class public abstract Lcom/yelp/android/cx/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/cx/a$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/yelp/android/cx/a;->a:Z

    return-void
.end method

.method protected static a(Ljava/net/HttpURLConnection;)Ljp/line/android/sdk/exception/a;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/yelp/android/cx/l;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "statusCode"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "statusMessage"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ltz v1, :cond_0

    if-eqz v2, :cond_0

    new-instance v0, Ljp/line/android/sdk/exception/a;

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/exception/a;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static b(Ljava/net/HttpURLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/cw/c;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljp/line/android/sdk/exception/LineSdkApiException;
        }
    .end annotation

    invoke-static {}, Lcom/yelp/android/cv/a;->a()Lcom/yelp/android/cv/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/cv/a;->b()Lcom/yelp/android/db/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/yelp/android/db/a;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiException;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->NOT_FOUND_ACCESS_TOKEN:Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-direct {v0, v1}, Ljp/line/android/sdk/exception/LineSdkApiException;-><init>(Ljp/line/android/sdk/exception/LineSdkApiError;)V

    throw v0

    :cond_1
    iget-object v0, v0, Lcom/yelp/android/db/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract a(Ljava/net/HttpURLConnection;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/yelp/android/cw/c;",
            "Lcom/yelp/android/cw/d",
            "<TRO;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected final a(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/cw/c;",
            "Lcom/yelp/android/cw/d",
            "<*>;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-boolean v0, p0, Lcom/yelp/android/cx/a;->a:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/yelp/android/cx/a;->a(Lcom/yelp/android/cw/c;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/cx/a;->b(Lcom/yelp/android/cw/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/cx/l;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    :try_start_1
    iget-boolean v4, p0, Lcom/yelp/android/cx/a;->a:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "X-Line-ChannelToken"

    invoke-virtual {v2, v4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/yelp/android/cx/a;->a(Ljava/net/HttpURLConnection;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, v2}, Lcom/yelp/android/cx/a;->c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljp/line/android/sdk/exception/LineSdkApiException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    move v0, v3

    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    :try_start_3
    invoke-virtual {p2, v1}, Lcom/yelp/android/cw/d;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    :goto_2
    return v0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljp/line/android/sdk/exception/LineSdkApiException;

    sget-object v4, Ljp/line/android/sdk/exception/LineSdkApiError;->ILLEGAL_RESPONSE:Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-direct {v1, v4, v0}, Ljp/line/android/sdk/exception/LineSdkApiException;-><init>(Ljp/line/android/sdk/exception/LineSdkApiError;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v3

    :goto_3
    if-eqz p2, :cond_3

    :try_start_5
    invoke-virtual {p2, v1}, Lcom/yelp/android/cw/d;->a(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_6
    sget-object v4, Lcom/yelp/android/cx/a$1;->a:[I

    iget-object v5, p1, Lcom/yelp/android/cw/c;->a:Ljp/line/android/sdk/api/ApiType;

    invoke-virtual {v5}, Ljp/line/android/sdk/api/ApiType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0}, Ljp/line/android/sdk/exception/LineSdkApiException;->isAccessTokenExpired()Z

    move-result v3

    :pswitch_0
    if-nez v3, :cond_5

    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    throw v0

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected b(Lcom/yelp/android/cw/c;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/yelp/android/cx/o;->a(Lcom/yelp/android/cw/c;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")TRO;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
