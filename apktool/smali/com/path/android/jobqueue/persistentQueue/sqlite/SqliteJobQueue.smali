.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;
.super Ljava/lang/Object;
.source "SqliteJobQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/g;


# instance fields
.field a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

.field d:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

.field e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

.field f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

.field private final g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/f;)V
    .locals 8

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-wide p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    .line 41
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "db_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    .line 42
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 43
    new-instance v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "job_holder"

    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v4, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    const/16 v5, 0x9

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    .line 44
    iput-object p5, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

    .line 45
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    .line 46
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    .line 47
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(J)V

    .line 48
    return-void
.end method

.method private a([B)Lcom/path/android/jobqueue/BaseJob;
    .locals 3

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/f;->a([B)Lcom/path/android/jobqueue/BaseJob;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 315
    :goto_0
    return-object v0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string/jumbo v1, "error while deserializing job"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Lcom/path/android/jobqueue/b;
    .locals 12

    .prologue
    .line 292
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a([B)Lcom/path/android/jobqueue/BaseJob;

    move-result-object v5

    .line 293
    if-nez v5, :cond_0

    .line 294
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidBaseJobException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidBaseJobException;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/d;)V

    throw v0

    .line 296
    :cond_0
    new-instance v0, Lcom/path/android/jobqueue/b;

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v4, v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v6, v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v8, v8, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v10, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v10, v10, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct/range {v0 .. v11}, Lcom/path/android/jobqueue/b;-><init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/BaseJob;JJJ)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 243
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ZLjava/util/Collection;Z)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    :cond_0
    const/4 v1, 0x0

    .line 224
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NOT IN(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-static {v2, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    :cond_1
    if-eqz p3, :cond_3

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " GROUP BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    if-eqz v1, :cond_2

    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " HAVING "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_2
    :goto_0
    return-object v0

    .line 233
    :cond_3
    if-eqz v1, :cond_2

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " AND ( "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/b;)V
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 70
    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 71
    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 74
    :cond_1
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 75
    invoke-direct {p0, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e(Lcom/path/android/jobqueue/b;)[B

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 79
    :cond_2
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->e()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 80
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->g()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 81
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->f()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 82
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/b;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 83
    return-void

    .line 82
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 119
    monitor-enter v1

    .line 120
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/Object;)[B
    .locals 5

    .prologue
    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/f;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/f;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 328
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    const-string/jumbo v1, "error while serializing object %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/at/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/path/android/jobqueue/b;)V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->e()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 280
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/b;->b(I)V

    .line 281
    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    invoke-virtual {p1, v2, v3}, Lcom/path/android/jobqueue/b;->a(J)V

    .line 282
    monitor-enter v1

    .line 283
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 285
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 286
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 287
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private e(Lcom/path/android/jobqueue/b;)[B
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->h()Lcom/path/android/jobqueue/BaseJob;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 131
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 132
    monitor-enter v1

    .line 133
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 134
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 135
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v0, v2

    monitor-exit v1

    return v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(ZLjava/util/Collection;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 141
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    invoke-direct {p0, p1, p2, v6}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(ZLjava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT count(*) group_cnt, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "job_holder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT SUM(case WHEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    iget-object v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is null then group_cnt else 1 end) from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v2, v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/String;ZLjava/util/Collection;)V

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 153
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 158
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_0
    return v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 158
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Lcom/path/android/jobqueue/b;)J
    .locals 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 57
    monitor-enter v1

    .line 58
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 59
    invoke-direct {p0, v1, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/b;)V

    .line 60
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v2

    .line 61
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Long;)V

    .line 63
    return-wide v2

    .line 61
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a(Z)Ljava/lang/Long;
    .locals 4

    .prologue
    .line 255
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->f()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 258
    :goto_0
    monitor-enter v0

    .line 260
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 261
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 263
    :goto_1
    return-object v0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->g()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    const/4 v1, 0x0

    :try_start_2
    monitor-exit v0

    move-object v0, v1

    goto :goto_1

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public b(Lcom/path/android/jobqueue/b;)J
    .locals 3

    .prologue
    .line 90
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/path/android/jobqueue/b;)J

    move-result-wide v0

    .line 102
    :goto_0
    return-wide v0

    .line 93
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Lcom/path/android/jobqueue/b;->a(J)V

    .line 94
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 96
    monitor-enter v2

    .line 97
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 98
    invoke-direct {p0, v2, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/b;)V

    .line 99
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 100
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/path/android/jobqueue/b;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/b;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 187
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 188
    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0, p1, p2, v8}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(ZLjava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->DESC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/c;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/c;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v9

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/c;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/c;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v2, v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/String;ZLjava/util/Collection;)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v10, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 201
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidBaseJobException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 204
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/Cursor;)Lcom/path/android/jobqueue/b;

    move-result-object v0

    .line 205
    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d(Lcom/path/android/jobqueue/b;)V
    :try_end_1
    .catch Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidBaseJobException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 209
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 210
    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Long;)V

    .line 211
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/b;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 213
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c(Lcom/path/android/jobqueue/b;)V
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    const-string/jumbo v0, "called remove with null job id."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/at/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/b;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Long;)V

    goto :goto_0
.end method
