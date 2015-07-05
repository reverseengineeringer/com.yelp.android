.class public Lcom/adjust/sdk/l;
.super Landroid/os/HandlerThread;
.source "PackageHandler.java"

# interfaces
.implements Lcom/adjust/sdk/g;


# instance fields
.field private final a:Lcom/adjust/sdk/m;

.field private b:Lcom/adjust/sdk/h;

.field private c:Lcom/adjust/sdk/a;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Z

.field private i:Lcom/adjust/sdk/Logger;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/a;Landroid/content/Context;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 49
    const-string/jumbo v0, "Adjust"

    invoke-direct {p0, v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 50
    invoke-virtual {p0, v2}, Lcom/adjust/sdk/l;->setDaemon(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/adjust/sdk/l;->start()V

    .line 52
    new-instance v0, Lcom/adjust/sdk/m;

    invoke-virtual {p0}, Lcom/adjust/sdk/l;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/m;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/l;)V

    iput-object v0, p0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/m;

    .line 53
    invoke-static {}, Lcom/adjust/sdk/f;->a()Lcom/adjust/sdk/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    .line 55
    iput-object p1, p0, Lcom/adjust/sdk/l;->c:Lcom/adjust/sdk/a;

    .line 56
    iput-object p2, p0, Lcom/adjust/sdk/l;->g:Landroid/content/Context;

    .line 57
    iput-boolean p3, p0, Lcom/adjust/sdk/l;->h:Z

    .line 59
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 60
    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 61
    iget-object v1, p0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/m;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/m;->sendMessage(Landroid/os/Message;)Z

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/l;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/adjust/sdk/l;->h()V

    return-void
.end method

.method static synthetic a(Lcom/adjust/sdk/l;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0, p1}, Lcom/adjust/sdk/l;->b(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private b(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "Added package %d (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->b(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0}, Lcom/adjust/sdk/l;->l()V

    .line 188
    return-void
.end method

.method static synthetic b(Lcom/adjust/sdk/l;)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/adjust/sdk/l;->i()V

    return-void
.end method

.method static synthetic c(Lcom/adjust/sdk/l;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/adjust/sdk/l;->j()V

    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 175
    invoke-static {p0}, Lcom/adjust/sdk/f;->a(Lcom/adjust/sdk/g;)Lcom/adjust/sdk/h;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/l;->b:Lcom/adjust/sdk/h;

    .line 177
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 179
    invoke-direct {p0}, Lcom/adjust/sdk/l;->k()V

    .line 180
    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->f:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Package handler is paused"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Package handler is already sending"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 205
    iget-object v1, p0, Lcom/adjust/sdk/l;->b:Lcom/adjust/sdk/h;

    invoke-interface {v1, v0}, Lcom/adjust/sdk/h;->a(Lcom/adjust/sdk/ActivityPackage;)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 209
    iget-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 210
    invoke-direct {p0}, Lcom/adjust/sdk/l;->l()V

    .line 211
    iget-object v0, p0, Lcom/adjust/sdk/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    invoke-direct {p0}, Lcom/adjust/sdk/l;->i()V

    .line 213
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->h:Z

    if-eqz v0, :cond_0

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    .line 252
    :goto_0
    return-void

    .line 222
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/l;->g:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoPackageQueue"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 223
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 224
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 227
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 229
    check-cast v0, Ljava/util/List;

    .line 230
    iget-object v1, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v4, "Package handler read %d packages"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V

    .line 231
    iput-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 244
    :catch_0
    move-exception v0

    .line 245
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Package queue file not found"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->b(Ljava/lang/String;)V

    .line 251
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    goto :goto_0

    .line 233
    :catch_1
    move-exception v0

    .line 234
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to find package queue class"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 242
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 246
    :catch_2
    move-exception v0

    .line 247
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to read package queue file"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 235
    :catch_3
    move-exception v0

    .line 242
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 237
    :catch_4
    move-exception v0

    .line 238
    :try_start_6
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to read package queue object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    .line 239
    :catch_5
    move-exception v0

    .line 240
    :try_start_8
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to cast package queue object"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 242
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_1

    .line 241
    :catchall_0
    move-exception v0

    .line 242
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V

    .line 243
    throw v0
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
.end method

.method private l()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 260
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->h:Z

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 265
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/l;->g:Landroid/content/Context;

    const-string/jumbo v1, "AdjustIoPackageQueue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 266
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "Package handler wrote %d packages"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/adjust/sdk/l;->d:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/NotSerializableException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 275
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    iget-object v1, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v2, "Failed to write packages (%s)"

    new-array v3, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V

    .line 279
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 272
    :catch_1
    move-exception v0

    .line 273
    :try_start_3
    iget-object v0, p0, Lcom/adjust/sdk/l;->i:Lcom/adjust/sdk/Logger;

    const-string/jumbo v1, "Failed to serialize packages"

    invoke-interface {v0, v1}, Lcom/adjust/sdk/Logger;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 275
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    goto :goto_0

    .line 274
    :catchall_0
    move-exception v0

    .line 275
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 276
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 76
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 77
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 78
    iget-object v1, p0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/m;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/m;->sendMessage(Landroid/os/Message;)Z

    .line 79
    return-void
.end method

.method public a(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 68
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 69
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    iget-object v1, p0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/m;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/m;->sendMessage(Landroid/os/Message;)Z

    .line 71
    return-void
.end method

.method public a(Lcom/adjust/sdk/ActivityPackage;Lcom/adjust/sdk/p;)V
    .locals 1

    .prologue
    .line 128
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getActivityKind()Lcom/adjust/sdk/ActivityKind;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/adjust/sdk/p;->a(Lcom/adjust/sdk/ActivityKind;)V

    .line 129
    iget-object v0, p0, Lcom/adjust/sdk/l;->c:Lcom/adjust/sdk/a;

    invoke-virtual {v0, p2}, Lcom/adjust/sdk/a;->a(Lcom/adjust/sdk/p;)V

    .line 130
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 86
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 87
    iget-object v1, p0, Lcom/adjust/sdk/l;->a:Lcom/adjust/sdk/m;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/m;->sendMessage(Landroid/os/Message;)Z

    .line 88
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->h:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/adjust/sdk/l;->b()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/l;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/l;->f:Z

    .line 104
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/l;->f:Z

    .line 110
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->h:Z

    if-eqz v0, :cond_0

    .line 116
    const-string/jumbo v0, "Dropping offline activity."

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "Will retry later."

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/adjust/sdk/l;->h:Z

    return v0
.end method
