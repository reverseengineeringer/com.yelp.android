.class public Lcom/comscore/metrics/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z


# instance fields
.field protected b:Ljava/net/URL;

.field protected c:Ljava/net/Proxy;

.field private d:Lcom/yelp/android/al/b;

.field private e:Lcom/comscore/analytics/a;

.field private f:Lcom/comscore/utils/m;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/comscore/metrics/a;->a:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/comscore/analytics/a;Lcom/yelp/android/al/b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {p1}, Lcom/comscore/analytics/a;->r()Lcom/comscore/utils/m;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/a;->f:Lcom/comscore/utils/m;

    iput-object p2, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    invoke-virtual {p0}, Lcom/comscore/metrics/a;->a()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/a;->b:Ljava/net/URL;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/net/Proxy;
    .locals 4

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move-object p0, v1

    :goto_0
    new-instance v1, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, p0, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v1, v2, v3}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    return-object v1

    :cond_0
    const/16 v0, 0x50

    goto :goto_0
.end method

.method private f()Z
    .locals 1

    invoke-direct {p0}, Lcom/comscore/metrics/a;->g()V

    invoke-virtual {p0}, Lcom/comscore/metrics/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    :cond_0
    return v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->ac()Lcom/comscore/utils/TransmissionMode;

    move-result-object v0

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->DEFAULT:Lcom/comscore/utils/TransmissionMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/comscore/utils/TransmissionMode;->WIFIONLY:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/comscore/utils/TransmissionMode;->PIGGYBACK:Lcom/comscore/utils/TransmissionMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->p()Lcom/comscore/utils/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/utils/j;->f()Z

    :cond_2
    return-void
.end method

.method private h()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Measurement was not transmitted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    iget-object v2, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v2}, Lcom/comscore/analytics/a;->ag()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/al/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->p()Lcom/comscore/utils/j;

    move-result-object v0

    iget-object v1, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    invoke-virtual {v0, v1}, Lcom/comscore/utils/j;->a(Lcom/yelp/android/al/b;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3

    iget-object v0, p0, Lcom/comscore/metrics/a;->c:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/comscore/metrics/a;->c:Ljava/net/Proxy;

    invoke-virtual {p1, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    :goto_0
    const-string/jumbo v1, "Connection"

    const-string/jumbo v2, "Close"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    goto :goto_0
.end method

.method public a()Ljava/net/URL;
    .locals 1

    iget-object v0, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    invoke-virtual {v0}, Lcom/yelp/android/al/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/comscore/metrics/a;->a(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/net/URL;
    .locals 7

    const/16 v6, 0x1000

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/comscore/metrics/a;->d()Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    iget-object v1, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->ag()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/al/b;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v6, :cond_1

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    const/16 v0, 0xff8

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v0, ""

    add-int/lit8 v0, v2, 0x1

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "+"

    const-string/jumbo v4, "%20"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&ns_cut="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_0

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    :try_start_1
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "0"

    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v0, 0x0

    goto :goto_3

    :cond_0
    move-object v1, v0

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method protected a(Ljava/net/URL;ILjava/lang/String;)Ljava/net/URL;
    .locals 4

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    move-object p1, v0

    :goto_0
    return-object p1

    :pswitch_1
    if-nez p3, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x131

    if-ne p2, v1, :cond_3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    const-string/jumbo v1, "//"

    invoke-virtual {p3, v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0x2

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/comscore/metrics/a;->b(Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/metrics/a;->c:Ljava/net/Proxy;

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1, p3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v0

    goto :goto_0

    :cond_4
    move-object p1, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v1}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v2}, Lcom/comscore/utils/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v3}, Lcom/comscore/analytics/a;->ab()Lcom/comscore/utils/TransmissionMode;

    move-result-object v3

    iget-object v4, p0, Lcom/comscore/metrics/a;->f:Lcom/comscore/utils/m;

    const-string/jumbo v5, "lastMeasurementProcessedTimestamp"

    invoke-static {}, Lcom/comscore/utils/h;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/comscore/utils/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v4, Lcom/comscore/metrics/b;->a:[I

    invoke-virtual {v3}, Lcom/comscore/utils/TransmissionMode;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    goto :goto_0

    :pswitch_2
    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/comscore/metrics/a;->d()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/comscore/metrics/a;->f()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    goto :goto_0

    :pswitch_3
    if-eqz v2, :cond_2

    invoke-static {}, Lcom/comscore/utils/e;->b()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1}, Lcom/comscore/utils/e;->d(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/comscore/metrics/a;->f()Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    goto :goto_0

    :pswitch_4
    if-eqz v2, :cond_4

    invoke-static {}, Lcom/comscore/utils/e;->b()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v1}, Lcom/comscore/utils/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-direct {p0}, Lcom/comscore/metrics/a;->f()Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/comscore/metrics/a;->h()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected c()Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/metrics/a;->b:Ljava/net/URL;

    invoke-virtual {p0}, Lcom/comscore/metrics/a;->e()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/comscore/metrics/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    :cond_0
    const-string/jumbo v3, "Content-Type"

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_1

    invoke-static {v3}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v4}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    const/16 v3, 0xcc

    if-ne v0, v3, :cond_3

    invoke-static {v4}, Lcom/comscore/utils/n;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->u()Lcom/comscore/applications/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/comscore/applications/d;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move v0, v2

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    :goto_0
    return v0

    :cond_5
    move v3, v2

    move-object v5, v0

    move v0, v2

    :goto_1
    if-eqz v5, :cond_0

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    :try_start_2
    invoke-virtual {p0, v5}, Lcom/comscore/metrics/a;->a(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string/jumbo v0, "Location"

    invoke-virtual {v1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v5, v4, v0}, Lcom/comscore/metrics/a;->a(Ljava/net/URL;ILjava/lang/String;)Ljava/net/URL;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    :goto_2
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception sending measurement:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/comscore/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/comscore/utils/c;->a(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v0

    move v0, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public d()Ljava/lang/Boolean;
    .locals 5

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/comscore/metrics/a;->e:Lcom/comscore/analytics/a;

    invoke-virtual {v0}, Lcom/comscore/analytics/a;->N()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/comscore/utils/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v0, "emu"

    :goto_0
    iget-object v3, p0, Lcom/comscore/metrics/a;->d:Lcom/yelp/android/al/b;

    const-string/jumbo v4, "ns_radio"

    invoke-virtual {v3, v4, v0}, Lcom/yelp/android/al/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/comscore/utils/e;->b(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/comscore/utils/e;->c(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v0, "wwan"

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/comscore/utils/e;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v0, "bth"

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/comscore/utils/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "eth"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "unknown"
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected e()Z
    .locals 1

    sget-boolean v0, Lcom/comscore/metrics/a;->a:Z

    return v0
.end method
