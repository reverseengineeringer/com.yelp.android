.class public final Lcom/yelp/android/cx/g;
.super Lcom/yelp/android/cx/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/cx/a",
        "<",
        "Lcom/yelp/android/db/f;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/cx/a;-><init>(Z)V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/net/HttpURLConnection;Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/yelp/android/cw/c;",
            "Lcom/yelp/android/cw/d",
            "<",
            "Lcom/yelp/android/db/f;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "channelId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljp/line/android/sdk/c;->a()Ljp/line/android/sdk/a;

    move-result-object v1

    invoke-interface {v1}, Ljp/line/android/sdk/a;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "POST"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const-string/jumbo v1, "Content-Type"

    const-string/jumbo v2, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "Content-Length"

    array-length v2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/yelp/android/cx/g;->b(Ljava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method protected final synthetic c(Ljava/net/HttpURLConnection;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Lcom/yelp/android/cx/l;->a(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "otpId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "otp"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiException;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->ILLEGAL_RESPONSE:Ljp/line/android/sdk/exception/LineSdkApiError;

    const-string/jumbo v2, "otp is null"

    invoke-direct {v0, v1, v2}, Ljp/line/android/sdk/exception/LineSdkApiException;-><init>(Ljp/line/android/sdk/exception/LineSdkApiError;Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v2, Lcom/yelp/android/db/f;

    invoke-direct {v2, v1, v0}, Lcom/yelp/android/db/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2
    new-instance v0, Ljp/line/android/sdk/exception/LineSdkApiException;

    sget-object v1, Ljp/line/android/sdk/exception/LineSdkApiError;->SERVER_ERROR:Ljp/line/android/sdk/exception/LineSdkApiError;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-static {p1}, Lcom/yelp/android/cx/g;->a(Ljava/net/HttpURLConnection;)Ljp/line/android/sdk/exception/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljp/line/android/sdk/exception/LineSdkApiException;-><init>(Ljp/line/android/sdk/exception/LineSdkApiError;ILjp/line/android/sdk/exception/a;)V

    throw v0
.end method
