.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/e;
.super Ljava/lang/Object;
.source "SqliteJobQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/persistentQueue/sqlite/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([B)Lcom/path/android/jobqueue/BaseJob;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/path/android/jobqueue/BaseJob;",
            ">([B)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 359
    if-eqz p1, :cond_0

    array-length v1, p1

    if-nez v1, :cond_1

    .line 368
    :cond_0
    :goto_0
    return-object v0

    .line 364
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ObjectInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    :try_start_1
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/path/android/jobqueue/BaseJob;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 367
    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v1, :cond_2

    .line 368
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_2
    throw v0

    .line 367
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)[B
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 339
    if-nez p1, :cond_1

    .line 352
    :cond_0
    :goto_0
    return-object v0

    .line 345
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 346
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 347
    invoke-interface {v0, p1}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 349
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 351
    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_2

    .line 352
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_2
    throw v0

    .line 351
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
