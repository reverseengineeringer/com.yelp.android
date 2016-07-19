.class public Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;
.super Ljava/lang/Object;
.source "SqliteJobQueue.java"

# interfaces
.implements Lcom/path/android/jobqueue/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$1;,
        Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;,
        Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$a;,
        Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;
    }
.end annotation


# instance fields
.field a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

.field b:Landroid/database/sqlite/SQLiteDatabase;

.field c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

.field d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

.field e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

.field f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

.field g:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

.field h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final i:J


# direct methods
.method public constructor <init>(Landroid/content/Context;JLjava/lang/String;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;Z)V
    .locals 10

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->h:Ljava/util/Set;

    .line 47
    iput-wide p2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

    .line 48
    new-instance v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    if-eqz p6, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, p1, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    .line 49
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/a;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 50
    new-instance v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v3, "job_holder"

    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v4, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    const/16 v5, 0x9

    const-string/jumbo v6, "job_holder_tags"

    const/4 v7, 0x3

    move-wide v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJ)V

    iput-object v1, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    .line 52
    iput-object p5, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    .line 53
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    .line 54
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    .line 55
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-direct {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;-><init>()V

    iput-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    .line 56
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-virtual {v0, v2, v3}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(J)V

    .line 57
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "db_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a([B)Lcom/path/android/jobqueue/Job;
    .locals 3

    .prologue
    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;->a([B)Lcom/path/android/jobqueue/Job;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 428
    :goto_0
    return-object v0

    .line 425
    :catch_0
    move-exception v0

    .line 426
    const-string/jumbo v1, "error while deserializing job"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/database/Cursor;)Lcom/path/android/jobqueue/a;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;
        }
    .end annotation

    .prologue
    .line 405
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a([B)Lcom/path/android/jobqueue/Job;

    move-result-object v5

    .line 406
    if-nez v5, :cond_0

    .line 407
    new-instance v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$1;)V

    throw v0

    .line 409
    :cond_0
    new-instance v0, Lcom/path/android/jobqueue/a;

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v4, v4, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v6, v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    sget-object v8, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v8, v8, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    sget-object v10, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v10, v10, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct/range {v0 .. v11}, Lcom/path/android/jobqueue/a;-><init>(Ljava/lang/Long;ILjava/lang/String;ILcom/path/android/jobqueue/Job;JJJ)V

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
    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " <= ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    const/4 v1, 0x0

    .line 321
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " IS NULL OR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " NOT IN(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\',\'"

    invoke-static {v2, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_1
    if-eqz p3, :cond_3

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " GROUP BY "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v2, v2, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    if-eqz v1, :cond_2

    .line 329
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

    .line 334
    :cond_2
    :goto_0
    return-object v0

    .line 331
    :cond_3
    if-eqz v1, :cond_2

    .line 332
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

.method private a(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;)V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->k:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p2, p3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 104
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->l:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, p4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 105
    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/a;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 111
    :cond_0
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->c()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 112
    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 113
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 115
    :cond_1
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    invoke-direct {p0, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f(Lcom/path/android/jobqueue/a;)[B

    move-result-object v0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    sget-object v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v1, v1, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindBlob(I[B)V

    .line 120
    :cond_2
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->e()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->g()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->h:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->f()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    sget-object v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->i:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget v0, v0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->c:I

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p2}, Lcom/path/android/jobqueue/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x1

    :goto_0
    invoke-virtual {p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    return-void

    .line 123
    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/Long;)V
    .locals 4

    .prologue
    .line 160
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->e()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 162
    monitor-enter v1

    .line 163
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 165
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 166
    monitor-exit v1

    .line 167
    return-void

    .line 166
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
    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;

    invoke-interface {v0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$b;->a(Ljava/lang/Object;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 441
    :goto_0
    return-object v0

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const-string/jumbo v1, "error while serializing object %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/bp/b;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private d(Lcom/path/android/jobqueue/a;)J
    .locals 6

    .prologue
    .line 79
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 82
    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 85
    :try_start_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 86
    invoke-direct {p0, v1, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/a;)V

    .line 87
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v4

    .line 88
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 90
    invoke-direct {p0, v2, v4, v5, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;JLjava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 95
    :catchall_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 97
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 93
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    :try_start_4
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 97
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/a;->a(Ljava/lang/Long;)V

    .line 99
    return-wide v4
.end method

.method private e(Lcom/path/android/jobqueue/a;)V
    .locals 4

    .prologue
    .line 392
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->f()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 393
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->d()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/path/android/jobqueue/a;->c(I)V

    .line 394
    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

    invoke-virtual {p1, v2, v3}, Lcom/path/android/jobqueue/a;->b(J)V

    .line 395
    monitor-enter v1

    .line 396
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 397
    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->d()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 398
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 399
    const/4 v0, 0x3

    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 400
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 401
    monitor-exit v1

    .line 402
    return-void

    .line 401
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private f(Lcom/path/android/jobqueue/a;)[B
    .locals 1

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->h()Lcom/path/android/jobqueue/Job;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 175
    monitor-enter v1

    .line 176
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 177
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 178
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    long-to-int v0, v2

    monitor-exit v1

    return v0

    .line 179
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

    .line 184
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 185
    if-nez v0, :cond_0

    .line 186
    invoke-direct {p0, p1, p2, v6}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(ZLjava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT count(*) group_cnt, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

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

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SELECT SUM(case WHEN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    iget-object v3, v3, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;->a:Ljava/lang/String;

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

    .line 192
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v2, v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/String;ZLjava/util/Collection;)V

    .line 194
    :cond_0
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

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

    .line 196
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move v0, v1

    :goto_0
    return v0

    .line 199
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 201
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public a(Lcom/path/android/jobqueue/a;)J
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->d(Lcom/path/android/jobqueue/a;)J

    move-result-wide v0

    .line 75
    :goto_0
    return-wide v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 69
    monitor-enter v2

    .line 70
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 71
    invoke-direct {p0, v2, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/a;)V

    .line 72
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 73
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/path/android/jobqueue/a;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(Lcom/path/android/jobqueue/a;)J
    .locals 3

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Lcom/path/android/jobqueue/a;)J

    move-result-wide v0

    .line 144
    :goto_0
    return-wide v0

    .line 135
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    invoke-virtual {p1, v0, v1}, Lcom/path/android/jobqueue/a;->b(J)V

    .line 136
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->d()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 138
    monitor-enter v2

    .line 139
    :try_start_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 140
    invoke-direct {p0, v2, p1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/sqlite/SQLiteStatement;Lcom/path/android/jobqueue/a;)V

    .line 141
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 142
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/path/android/jobqueue/a;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/path/android/jobqueue/a;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 279
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    .line 281
    invoke-direct {p0, p1, p2, v8}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(ZLjava/util/Collection;Z)Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->b:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->DESC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v8

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v9

    new-instance v5, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;

    sget-object v6, Lcom/path/android/jobqueue/persistentQueue/sqlite/a;->a:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;

    sget-object v7, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;->ASC:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;

    invoke-direct {v5, v6, v7}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;-><init>(Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$b;Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order$Type;)V

    aput-object v5, v4, v10

    invoke-virtual {v2, v0, v3, v4}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(Ljava/lang/String;Ljava/lang/Integer;[Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper$Order;)Ljava/lang/String;

    move-result-object v0

    .line 291
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->f:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v2, v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/String;ZLjava/util/Collection;)V

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-array v3, v10, [Ljava/lang/String;

    iget-wide v4, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->i:J

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

    .line 297
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    :goto_0
    return-object v0

    .line 300
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Landroid/database/Cursor;)Lcom/path/android/jobqueue/a;

    move-result-object v0

    .line 301
    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->e(Lcom/path/android/jobqueue/a;)V
    :try_end_1
    .catch Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 305
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 306
    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Long;)V

    .line 307
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b(ZLjava/util/Collection;)Lcom/path/android/jobqueue/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 309
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c(ZLjava/util/Collection;)Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 342
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 343
    :goto_0
    if-nez v0, :cond_2

    .line 344
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->g()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 347
    :goto_1
    monitor-enter v0

    .line 349
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V

    .line 350
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

    .line 368
    :goto_2
    return-object v0

    :cond_0
    move v0, v2

    .line 342
    goto :goto_0

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->h()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    goto :goto_1

    .line 351
    :catch_0
    move-exception v2

    .line 352
    :try_start_2
    monitor-exit v0

    move-object v0, v1

    goto :goto_2

    .line 354
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 357
    if-nez v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->c:Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;

    invoke-virtual {v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqlHelper;->a(ZLjava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 359
    iget-object v3, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->g:Lcom/path/android/jobqueue/persistentQueue/sqlite/b;

    invoke-virtual {v3, v0, p1, p2}, Lcom/path/android/jobqueue/persistentQueue/sqlite/b;->a(Ljava/lang/String;ZLjava/util/Collection;)V

    .line 361
    :cond_3
    iget-object v3, p0, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 363
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    if-nez v0, :cond_4

    .line 368
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_2

    .line 366
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 368
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public c(Lcom/path/android/jobqueue/a;)V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    .line 153
    const-string/jumbo v0, "called remove with null job id."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yelp/android/bp/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Lcom/path/android/jobqueue/a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/path/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue;->a(Ljava/lang/Long;)V

    goto :goto_0
.end method
