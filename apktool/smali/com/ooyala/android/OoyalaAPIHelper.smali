.class Lcom/ooyala/android/OoyalaAPIHelper;
.super Ljava/lang/Object;
.source "OoyalaAPIHelper.java"


# static fields
.field public static cookies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ooyala/android/OoyalaAPIHelper;->cookies:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static jsonForAPI(Ljava/net/URL;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 29
    const-class v0, Lcom/ooyala/android/OoyalaAPIHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Sending Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .line 34
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v4, 0x2000

    invoke-direct {v0, v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 42
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 43
    const-string/jumbo v4, "Set-Cookie"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {v2, v0}, Ljava/net/URLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    const-class v4, Lcom/ooyala/android/OoyalaAPIHelper;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FOUND COOKIE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    .line 47
    const/4 v4, 0x0

    const-string/jumbo v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 48
    const/4 v4, 0x0

    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 49
    const-string/jumbo v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 50
    sget-object v5, Lcom/ooyala/android/OoyalaAPIHelper;->cookies:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static objectForAPI(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p0, p1, p2}, Lcom/ooyala/android/Utils;->makeURL(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/net/URL;

    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 21
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/ooyala/android/OoyalaAPIHelper;->objectForAPI(Ljava/net/URL;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static objectForAPI(Ljava/net/URL;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/ooyala/android/OoyalaAPIHelper;->jsonForAPI(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ooyala/android/Utils;->objectFromJSON(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
