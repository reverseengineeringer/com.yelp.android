.class public Lcom/yelp/android/ao/f;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/yelp/android/ao/g;

    invoke-direct {v0, p0}, Lcom/yelp/android/ao/g;-><init>(Lcom/yelp/android/ao/f;)V

    iput-object v0, p0, Lcom/yelp/android/ao/f;->a:Landroid/os/Handler;

    .line 93
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1

    .prologue
    .line 225
    .line 226
    iget-object v0, p0, Lcom/yelp/android/ao/f;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/yelp/android/ao/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 229
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 230
    iput p1, v0, Landroid/os/Message;->what:I

    .line 231
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 133
    invoke-virtual {p0, p2}, Lcom/yelp/android/ao/f;->a(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public a(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0, p1, p3}, Lcom/yelp/android/ao/f;->a(ILjava/lang/String;)V

    .line 124
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 214
    :goto_0
    return-void

    .line 200
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 201
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v0, v3

    check-cast v1, [Lorg/apache/http/Header;

    check-cast v1, [Lorg/apache/http/Header;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v1, v0}, Lcom/yelp/android/ao/f;->c(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 205
    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Throwable;

    aget-object v0, v0, v3

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/yelp/android/ao/f;->c(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 208
    :pswitch_2
    invoke-virtual {p0}, Lcom/yelp/android/ao/f;->a()V

    goto :goto_0

    .line 211
    :pswitch_3
    invoke-virtual {p0}, Lcom/yelp/android/ao/f;->b()V

    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lcom/yelp/android/ao/f;->a(Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method protected a(Ljava/lang/Throwable;[B)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ao/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ao/f;->b(Landroid/os/Message;)V

    .line 169
    return-void
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    .line 242
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_0

    .line 244
    new-instance v2, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v2, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 245
    const-string/jumbo v0, "UTF-8"

    invoke-static {v2, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    :cond_0
    :goto_0
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_1

    .line 252
    new-instance v0, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ao/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 256
    :goto_1
    return-void

    .line 247
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 248
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ao/f;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    invoke-virtual {p0, v0, v2, v1}, Lcom/yelp/android/ao/f;->b(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b()V
    .locals 0

    .prologue
    .line 108
    return-void
.end method

.method protected b(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ao/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ao/f;->b(Landroid/os/Message;)V

    .line 161
    return-void
.end method

.method protected b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/yelp/android/ao/f;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ao/f;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 222
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yelp/android/ao/f;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    aput-object p2, v0, v2

    invoke-virtual {p0, v2, v0}, Lcom/yelp/android/ao/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ao/f;->b(Landroid/os/Message;)V

    .line 165
    return-void
.end method

.method protected c()V
    .locals 2

    .prologue
    .line 172
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ao/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ao/f;->b(Landroid/os/Message;)V

    .line 173
    return-void
.end method

.method protected c(I[Lorg/apache/http/Header;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 185
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ao/f;->a(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ao/f;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ao/f;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ao/f;->b(Landroid/os/Message;)V

    .line 177
    return-void
.end method
