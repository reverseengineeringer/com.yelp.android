.class public Lcom/yelp/android/ao/i;
.super Ljava/lang/Object;
.source "RequestParams.java"


# static fields
.field private static d:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/ao/j;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lorg/apache/http/HttpEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "UTF-8"

    sput-object v0, Lcom/yelp/android/ao/i;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    .line 68
    invoke-direct {p0}, Lcom/yelp/android/ao/i;->d()V

    .line 69
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 285
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 286
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ao/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 287
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ao/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    .line 289
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    .line 125
    :cond_0
    return-void
.end method

.method public b()Lorg/apache/http/HttpEntity;
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 238
    iget-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    if-nez v0, :cond_7

    .line 239
    iget-object v0, p0, Lcom/yelp/android/ao/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 240
    new-instance v0, Lcom/yelp/android/ao/l;

    invoke-direct {v0}, Lcom/yelp/android/ao/l;-><init>()V

    .line 243
    iget-object v1, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ao/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ao/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 249
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 250
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/yelp/android/ao/l;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ao/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/lit8 v8, v1, -0x1

    .line 258
    iget-object v1, p0, Lcom/yelp/android/ao/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v6, v7

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/yelp/android/ao/j;

    .line 260
    iget-object v2, v4, Lcom/yelp/android/ao/j;->a:Ljava/io/InputStream;

    if-eqz v2, :cond_3

    .line 261
    if-ne v6, v8, :cond_4

    const/4 v5, 0x1

    .line 262
    :goto_3
    iget-object v2, v4, Lcom/yelp/android/ao/j;->c:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 263
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/yelp/android/ao/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/yelp/android/ao/j;->a:Ljava/io/InputStream;

    iget-object v4, v4, Lcom/yelp/android/ao/j;->c:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lcom/yelp/android/ao/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 268
    :cond_3
    :goto_4
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    .line 269
    goto :goto_2

    :cond_4
    move v5, v7

    .line 261
    goto :goto_3

    .line 265
    :cond_5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/yelp/android/ao/j;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v4, Lcom/yelp/android/ao/j;->a:Ljava/io/InputStream;

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/yelp/android/ao/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Z)V

    goto :goto_4

    .line 271
    :cond_6
    iput-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    .line 281
    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;

    return-object v0

    .line 274
    :cond_8
    :try_start_0
    new-instance v0, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/yelp/android/ao/i;->c()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/ao/i;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ao/i;->e:Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_5
.end method

.method protected c()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 295
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ao/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 300
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v6, v2, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 305
    :cond_2
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ao/i;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 201
    const-string/jumbo v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string/jumbo v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ao/i;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 209
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 210
    const-string/jumbo v2, "&"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v0, "="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v0, "FILE"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 217
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ao/i;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 219
    const-string/jumbo v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 222
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-eqz v3, :cond_6

    .line 224
    const-string/jumbo v3, "&"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_6
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 231
    :cond_7
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
