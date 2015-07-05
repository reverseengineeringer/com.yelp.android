.class public Lcom/adjust/sdk/n;
.super Landroid/os/HandlerThread;
.source "RequestHandler.java"

# interfaces
.implements Lcom/adjust/sdk/h;


# instance fields
.field private a:Lcom/adjust/sdk/o;

.field private b:Lcom/adjust/sdk/g;

.field private c:Lorg/apache/http/client/HttpClient;

.field private d:Lcom/adjust/sdk/Logger;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/g;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 51
    const-string/jumbo v0, "Adjust"

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-virtual {p0, v1}, Lcom/adjust/sdk/n;->setDaemon(Z)V

    .line 53
    invoke-virtual {p0}, Lcom/adjust/sdk/n;->start()V

    .line 55
    invoke-static {}, Lcom/adjust/sdk/f;->a()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    .line 56
    new-instance v0, Lcom/adjust/sdk/o;

    invoke-virtual {p0}, Lcom/adjust/sdk/n;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/o;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/n;)V

    iput-object v0, p0, Lcom/adjust/sdk/n;->a:Lcom/adjust/sdk/o;

    .line 58
    iput-object p1, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    .line 60
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 61
    const v1, 0x11ad1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 62
    iget-object v1, p0, Lcom/adjust/sdk/n;->a:Lcom/adjust/sdk/o;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/o;->sendMessage(Landroid/os/Message;)Z

    .line 64
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    if-eqz p2, :cond_0

    .line 187
    const-string/jumbo v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%s"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 151
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 152
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 153
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 154
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to parse response (%s)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "Failed to parse response"

    goto :goto_0
.end method

.method private a()V
    .locals 2

    .prologue
    const v1, 0xea60

    .line 107
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 108
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 109
    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 110
    invoke-static {v0}, Lcom/adjust/sdk/f;->a(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/n;->c:Lorg/apache/http/client/HttpClient;

    .line 111
    return-void
.end method

.method private a(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 163
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v2

    .line 164
    iget-object v3, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v3}, Lcom/adjust/sdk/g;->f()Ljava/lang/String;

    move-result-object v3

    .line 165
    invoke-direct {p0, p2, p3}, Lcom/adjust/sdk/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    .line 166
    iget-object v5, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    const-string/jumbo v6, "%s. (%s) %s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v0

    aput-object v4, v7, v1

    const/4 v2, 0x2

    aput-object v3, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v2}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 168
    invoke-static {v4}, Lcom/adjust/sdk/p;->b(Ljava/lang/String;)Lcom/adjust/sdk/p;

    move-result-object v2

    .line 169
    iget-object v3, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v3}, Lcom/adjust/sdk/g;->g()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/adjust/sdk/p;->b(Z)V

    .line 170
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v0, p1, v2}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;Lcom/adjust/sdk/p;)V

    .line 171
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->c()V

    .line 172
    return-void

    :cond_0
    move v0, v1

    .line 169
    goto :goto_0
.end method

.method static synthetic a(Lcom/adjust/sdk/n;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/adjust/sdk/n;->a()V

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/n;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/adjust/sdk/n;->b(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private a(Lorg/apache/http/HttpResponse;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 132
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 133
    invoke-direct {p0, p1}, Lcom/adjust/sdk/n;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-static {v1}, Lcom/adjust/sdk/p;->a(Ljava/lang/String;)Lcom/adjust/sdk/p;

    move-result-object v1

    .line 136
    const/16 v2, 0xc8

    if-ne v2, v0, :cond_0

    .line 138
    invoke-virtual {v1, v6}, Lcom/adjust/sdk/p;->a(Z)V

    .line 139
    iget-object v0, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    invoke-virtual {p2}, Lcom/adjust/sdk/ActivityPackage;->getSuccessMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/adjust/sdk/Logger;->d(Ljava/lang/String;)V

    .line 145
    :goto_0
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v0, p2, v1}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;Lcom/adjust/sdk/p;)V

    .line 146
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->b()V

    .line 147
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "%s. (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1}, Lcom/adjust/sdk/p;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adjust/sdk/n;->c(Lcom/adjust/sdk/ActivityPackage;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/adjust/sdk/n;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 117
    invoke-direct {p0, v0, p1}, Lcom/adjust/sdk/n;->a(Lorg/apache/http/HttpResponse;Lcom/adjust/sdk/ActivityPackage;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 129
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    const-string/jumbo v1, "Failed to encode parameters"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/n;->b(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    const-string/jumbo v1, "Client protocol error"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 122
    :catch_2
    move-exception v0

    .line 123
    const-string/jumbo v1, "Request timed out"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 124
    :catch_3
    move-exception v0

    .line 125
    const-string/jumbo v1, "Request failed"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/n;->a(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 126
    :catch_4
    move-exception v0

    .line 127
    const-string/jumbo v1, "Runtime exception"

    invoke-direct {p0, p1, v1, v0}, Lcom/adjust/sdk/n;->b(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-direct {p0, p2, p3}, Lcom/adjust/sdk/n;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/adjust/sdk/n;->d:Lcom/adjust/sdk/Logger;

    const-string/jumbo v3, "%s. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 180
    invoke-static {v1}, Lcom/adjust/sdk/p;->b(Ljava/lang/String;)Lcom/adjust/sdk/p;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v1, p1, v0}, Lcom/adjust/sdk/g;->a(Lcom/adjust/sdk/ActivityPackage;Lcom/adjust/sdk/p;)V

    .line 182
    iget-object v0, p0, Lcom/adjust/sdk/n;->b:Lcom/adjust/sdk/g;

    invoke-interface {v0}, Lcom/adjust/sdk/g;->b()V

    .line 183
    return-void
.end method

.method private c(Lcom/adjust/sdk/ActivityPackage;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 6

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "https://app.adjust.io"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 195
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "User-Agent"

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getUserAgent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string/jumbo v1, "Client-SDK"

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string/jumbo v1, "Accept-Language"

    invoke-virtual {v2, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 209
    invoke-static {v0, v1}, Lcom/adjust/sdk/q;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 210
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "sent_at"

    invoke-direct {v1, v4, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v0, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    .line 214
    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;->setContentType(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 217
    return-object v2

    .line 203
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 204
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .prologue
    .line 68
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 69
    const v1, 0x11ad0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 70
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/adjust/sdk/n;->a:Lcom/adjust/sdk/o;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/o;->sendMessage(Landroid/os/Message;)Z

    .line 72
    return-void
.end method
