.class public Lcom/yelp/android/ax/a;
.super Ljava/lang/Object;
.source "AdapterBusinessSearch.java"

# interfaces
.implements Lcom/yelp/android/database/t;


# static fields
.field public static final a:Lcom/yelp/android/database/aa;


# instance fields
.field private final b:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/database/sqlite/SQLiteStatement;

.field private d:Landroid/database/sqlite/SQLiteStatement;

.field private e:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/database/ab;

    const-string/jumbo v1, "business_search"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/ab;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "url_descriptor"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "raw_response"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    const-string/jumbo v1, "descriptor_idx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "url_descriptor"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/database/ab;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/database/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/ab;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/ax/a;->a:Lcom/yelp/android/database/aa;

    return-void
.end method

.method public constructor <init>(Landroid/os/AsyncTask;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    .line 54
    return-void
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 268
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 271
    :cond_0
    return-void
.end method

.method public static e()Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/yelp/android/ax/b;

    invoke-direct {v0}, Lcom/yelp/android/ax/b;-><init>()V

    return-object v0
.end method

.method private f()V
    .locals 13

    .prologue
    const/4 v9, -0x1

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    .line 103
    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const-string/jumbo v2, "business_search"

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v10

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    move-object v8, v4

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v3, v2

    .line 131
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 133
    if-eq v3, v9, :cond_0

    .line 135
    :try_start_2
    iget-object v2, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    .line 136
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 137
    const-string/jumbo v2, "business_search"

    const-string/jumbo v4, "_id = ? "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-virtual {v1, v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 140
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 146
    invoke-static {v1}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 154
    :cond_0
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    const-string/jumbo v2, "AdapterBusinessSearch"

    const-string/jumbo v3, "Issues removing old entry"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    :catch_1
    move-exception v2

    .line 126
    const-string/jumbo v3, "AdapterBusinessSearch"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error finding oldest row in business search cache: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v11, [Ljava/lang/Object;

    aput-object v2, v6, v10

    invoke-static {v3, v5, v6}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v3, v9

    goto :goto_0

    .line 141
    :catch_2
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 142
    :try_start_3
    const-string/jumbo v3, "AdapterBusinessSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error deleting oldest row in business search cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v5}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    invoke-static {v2}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_2
    invoke-static {v2}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v1

    .line 151
    :cond_2
    const-string/jumbo v1, "AdapterBusinessSearch"

    const-string/jumbo v2, "Error deleting oldest row in business search cache, cursor is null."

    new-array v3, v10, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 146
    :catchall_1
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method public a()J
    .locals 5

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->c:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 159
    const-wide/16 v0, -0x1

    .line 168
    :goto_0
    return-wide v0

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->c:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string/jumbo v1, "AdapterBusinessSearch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error executing row count in business search cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->d:Landroid/database/sqlite/SQLiteStatement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-object v1

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yelp/android/ax/a;->d:Landroid/database/sqlite/SQLiteStatement;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ax/a;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 92
    const-string/jumbo v4, "AdapterBusinessSearch"

    const-string/jumbo v5, "Time to retrieve previous search %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v4, v5, v6}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/yelp/android/ax/a;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->clearBindings()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v1, v0

    .line 99
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 96
    goto :goto_1

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    .prologue
    .line 244
    const-string/jumbo v0, "SELECT COUNT(*) FROM business_search"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ax/a;->c:Landroid/database/sqlite/SQLiteStatement;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string/jumbo v1, "raw_response"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    const-string/jumbo v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    const-string/jumbo v1, "business_search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const-string/jumbo v1, " WHERE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    const-string/jumbo v1, "url_descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string/jumbo v1, " = ? LIMIT 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ax/a;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string/jumbo v1, "url_descriptor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string/jumbo v1, "business_search"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string/jumbo v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    const-string/jumbo v1, " DESC LIMIT 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ax/a;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 265
    return-void
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/yelp/android/ax/a;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/yelp/android/ax/a;->f()V

    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 64
    const-string/jumbo v0, "url_descriptor"

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/BusinessSearchRequest;->getCacheDescriptor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v0, "raw_response"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 71
    const-string/jumbo v1, "business_search"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 72
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    invoke-static {v0}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 79
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    :goto_2
    :try_start_2
    const-string/jumbo v2, "AdapterBusinessSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inserting business search to cache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-static {v1}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 73
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2
.end method

.method public b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 172
    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 176
    const-string/jumbo v1, "business_search"

    const-string/jumbo v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 177
    const-string/jumbo v2, "AdapterBusinessSearch"

    const-string/jumbo v3, "Deleted %d rows from the BusinessSearch Table."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    invoke-static {v0}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 186
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    .line 181
    :goto_1
    :try_start_2
    const-string/jumbo v2, "AdapterBusinessSearch"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error clearing business search table: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    invoke-static {v1}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/yelp/android/ax/a;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 180
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0x1f4

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 191
    const-string/jumbo v0, "SELECT "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v0, "url_descriptor"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string/jumbo v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string/jumbo v0, "FROM "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string/jumbo v0, "business_search"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    const-string/jumbo v0, "Biz Search Cache:\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ax/a;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_1

    .line 211
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string/jumbo v0, "---------------------------------------------\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string/jumbo v0, "---------------------------------------------\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    const-string/jumbo v3, "AdapterBusinessSearch"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error selecting cache record from db: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 225
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 228
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 203
    :catch_1
    move-exception v0

    .line 204
    const-string/jumbo v1, "AdapterBusinessSearch"

    const-string/jumbo v2, "Could not open database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    iget-object v1, p0, Lcom/yelp/android/ax/a;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    .line 238
    :goto_0
    return-object v0

    .line 236
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/ax/a;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method
