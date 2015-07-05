.class public Lcom/yelp/android/r/f;
.super Ljava/lang/Object;
.source "HttpUrlFetcher.java"

# interfaces
.implements Lcom/yelp/android/r/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/r/c",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/r/i;


# instance fields
.field private final b:Lcom/yelp/android/v/e;

.field private final c:Lcom/yelp/android/r/i;

.field private d:Ljava/net/HttpURLConnection;

.field private e:Ljava/io/InputStream;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/r/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/r/h;-><init>(Lcom/yelp/android/r/g;)V

    sput-object v0, Lcom/yelp/android/r/f;->a:Lcom/yelp/android/r/i;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/v/e;)V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yelp/android/r/f;->a:Lcom/yelp/android/r/i;

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/r/f;-><init>(Lcom/yelp/android/v/e;Lcom/yelp/android/r/i;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/v/e;Lcom/yelp/android/r/i;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/yelp/android/r/f;->b:Lcom/yelp/android/v/e;

    .line 35
    iput-object p2, p0, Lcom/yelp/android/r/f;->c:Lcom/yelp/android/r/i;

    .line 36
    return-void
.end method

.method private a(Ljava/net/URL;ILjava/net/URL;)Ljava/io/InputStream;
    .locals 4

    .prologue
    const/16 v2, 0x9c4

    .line 44
    const/4 v0, 0x5

    if-lt p2, v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Too many (> 5) redirects!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "In re-direct loop"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :catch_0
    move-exception v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/r/f;->c:Lcom/yelp/android/r/i;

    invoke-interface {v0, p1}, Lcom/yelp/android/r/i;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    .line 58
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 65
    iget-boolean v0, p0, Lcom/yelp/android/r/f;->f:Z

    if-eqz v0, :cond_2

    .line 66
    const/4 v0, 0x0

    .line 78
    :goto_0
    return-object v0

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    .line 69
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 70
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/r/f;->e:Ljava/io/InputStream;

    .line 71
    iget-object v0, p0, Lcom/yelp/android/r/f;->e:Ljava/io/InputStream;

    goto :goto_0

    .line 72
    :cond_3
    div-int/lit8 v1, v0, 0x64

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 73
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Received empty or null redirect url"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_4
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 78
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, v1, v0, p1}, Lcom/yelp/android/r/f;->a(Ljava/net/URL;ILjava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_5
    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 81
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to retrieve response code from HttpUrlConnection."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public synthetic a(Lcom/bumptech/glide/Priority;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/yelp/android/r/f;->b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/yelp/android/r/f;->e:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/r/f;->e:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/yelp/android/r/f;->d:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 99
    :cond_1
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b(Lcom/bumptech/glide/Priority;)Ljava/io/InputStream;
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/r/f;->b:Lcom/yelp/android/v/e;

    invoke-virtual {v0}, Lcom/yelp/android/v/e;->a()Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/r/f;->a(Ljava/net/URL;ILjava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/r/f;->b:Lcom/yelp/android/v/e;

    invoke-virtual {v0}, Lcom/yelp/android/v/e;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/r/f;->f:Z

    .line 111
    return-void
.end method
