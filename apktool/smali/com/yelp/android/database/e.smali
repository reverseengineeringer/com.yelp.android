.class public Lcom/yelp/android/database/e;
.super Ljava/lang/Object;
.source "CategoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/database/e$b;,
        Lcom/yelp/android/database/e$a;
    }
.end annotation


# static fields
.field static final a:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field b:Lcom/yelp/android/database/e$a;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const-string/jumbo v1, "alias"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "child_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/database/e;->a:[Ljava/lang/String;

    .line 52
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS index_on_category_hierarchy_child_id on %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "category_hierarchy"

    aput-object v2, v1, v3

    const-string/jumbo v2, "category_child_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/e;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/e;->d:Ljava/util/Map;

    .line 71
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/e;->e:Ljava/util/Map;

    .line 72
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/e;->f:Ljava/util/Map;

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/database/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    .line 78
    return-void
.end method

.method static synthetic b(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    return-void
.end method

.method private static final c(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 491
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 492
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/database/e;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;
    .locals 4

    .prologue
    .line 358
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 359
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 360
    new-instance v2, Lcom/yelp/android/serializable/Category;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/Category;->a(I)V

    .line 362
    iget-object v0, p0, Lcom/yelp/android/database/e;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->e()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v0, p0, Lcom/yelp/android/database/e;->e:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    return-object v2
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/yelp/android/database/e;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 305
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 306
    const-string/jumbo v0, "alias=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 307
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/yelp/android/database/e;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    :cond_0
    return-object v0
.end method

.method final varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 328
    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "categories"

    sget-object v2, Lcom/yelp/android/database/e;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 341
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0, v1}, Lcom/yelp/android/database/e;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 350
    :goto_0
    invoke-static {v1}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    move-object v8, v0

    .line 353
    :goto_1
    return-object v8

    .line 345
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 346
    :goto_2
    :try_start_2
    const-string/jumbo v2, "We got interrupted waiting"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 350
    invoke-static {v1}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_1

    .line 347
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 348
    :goto_3
    :try_start_3
    const-string/jumbo v2, "Our Database is broken!"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 350
    invoke-static {v1}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    invoke-static {v1}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 347
    :catch_2
    move-exception v0

    goto :goto_3

    .line 345
    :catch_3
    move-exception v0

    goto :goto_2

    :cond_0
    move-object v0, v8

    goto :goto_0
.end method

.method public a(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 208
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 211
    if-gez p1, :cond_3

    .line 212
    const-string/jumbo v3, "category_hierarchy.category_id IS NULL"

    move-object v4, v8

    .line 217
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "categories JOIN category_hierarchy ON (categories.id=category_hierarchy.category_child_id)"

    sget-object v2, Lcom/yelp/android/database/e;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "categories.\"order\", categories.title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 234
    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p0, v8}, Lcom/yelp/android/database/e;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 237
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    invoke-static {v8}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    .line 255
    :goto_1
    return-object v9

    .line 214
    :cond_3
    const-string/jumbo v3, "category_hierarchy.category_id=?"

    .line 215
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    :try_start_1
    const-string/jumbo v1, "Something bad happened while trying to get our database"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    invoke-static {v8}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    .line 251
    :try_start_2
    const-string/jumbo v1, "No time to load the entire list"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 253
    invoke-static {v8}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    throw v0
.end method

.method public a(Lcom/yelp/android/serializable/Category;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Category;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 259
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 260
    const-string/jumbo v3, "category_child_id = ?"

    .line 261
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 262
    const-string/jumbo v10, "category_id"

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "category_hierarchy"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v2, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 275
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 276
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 277
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 279
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yelp/android/database/e;->b(I)Lcom/yelp/android/serializable/Category;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_1

    .line 281
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 290
    :cond_2
    invoke-static {v2}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    .line 292
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v9

    .line 286
    :goto_1
    :try_start_3
    const-string/jumbo v3, "We got interrupted while looking up parents"

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 290
    invoke-static {v2}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_0

    .line 287
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v9

    .line 288
    :goto_2
    :try_start_4
    const-string/jumbo v3, "Something when very wrong looking up parents"

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 290
    invoke-static {v2}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    invoke-static {v2}, Lcom/yelp/android/database/e;->c(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 287
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    .line 285
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method public a()V
    .locals 2

    .prologue
    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 83
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->g:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_1

    .line 196
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/database/e;->g:Ljava/util/LinkedHashSet;

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/database/e;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 201
    iget-object v0, p0, Lcom/yelp/android/database/e;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    new-instance v0, Lcom/yelp/android/database/e$a;

    iget-object v1, p0, Lcom/yelp/android/database/e;->g:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, p3}, Lcom/yelp/android/database/e$a;-><init>(Ljava/util/Set;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    .line 204
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/e$a;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 205
    return-void

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/e;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0

    .line 188
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method b()Lcom/yelp/android/database/e$b;
    .locals 1

    .prologue
    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    invoke-virtual {v0}, Lcom/yelp/android/database/e$a;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/database/e;->b:Lcom/yelp/android/database/e$a;

    iget-object v0, v0, Lcom/yelp/android/database/e$a;->a:Lcom/yelp/android/database/e$b;

    return-object v0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b(I)Lcom/yelp/android/serializable/Category;
    .locals 4

    .prologue
    .line 296
    iget-object v0, p0, Lcom/yelp/android/database/e;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 297
    if-nez v0, :cond_0

    .line 298
    const-string/jumbo v0, "id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 300
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/yelp/android/database/e;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 317
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    const-string/jumbo v0, "title=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 319
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/yelp/android/database/e;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/yelp/android/database/e;->b()Lcom/yelp/android/database/e$b;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/database/e$b;->a(Lcom/yelp/android/database/e$b;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
