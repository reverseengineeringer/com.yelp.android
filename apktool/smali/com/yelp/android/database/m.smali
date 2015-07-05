.class public Lcom/yelp/android/database/m;
.super Ljava/lang/Object;
.source "CategoryDatabase.java"


# static fields
.field static final a:[Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field b:Lcom/yelp/android/database/n;

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

    sput-object v0, Lcom/yelp/android/database/m;->a:[Ljava/lang/String;

    .line 48
    const-string/jumbo v0, "CREATE INDEX IF NOT EXISTS index_on_category_hierarchy_child_id on %s (%s)"

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "category_hierarchy"

    aput-object v2, v1, v3

    const-string/jumbo v2, "category_child_id"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/m;->c:Ljava/lang/String;

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

    .prologue
    const/4 v1, 0x1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/m;->d:Ljava/util/Map;

    .line 64
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/m;->e:Ljava/util/Map;

    .line 65
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/m;->f:Ljava/util/Map;

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/database/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    .line 71
    return-void
.end method

.method static synthetic b(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 36
    invoke-static {p0}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    return-void
.end method

.method private static final c(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 451
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 454
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/yelp/android/database/m;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;
    .locals 4

    .prologue
    .line 317
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 318
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    new-instance v2, Lcom/yelp/android/serializable/Category;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v2, v0, v1, v3}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/yelp/android/serializable/Category;->setNumChildren(I)V

    .line 321
    iget-object v0, p0, Lcom/yelp/android/database/m;->d:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcom/yelp/android/database/m;->e:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Category;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    return-object v2
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yelp/android/database/m;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 274
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    const-string/jumbo v0, "alias=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    iget-object v1, p0, Lcom/yelp/android/database/m;->e:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    return-object v0
.end method

.method final varargs a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 296
    .line 299
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "categories"

    sget-object v2, Lcom/yelp/android/database/m;->a:[Ljava/lang/String;

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

    .line 301
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    invoke-virtual {p0, v1}, Lcom/yelp/android/database/m;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 310
    :goto_0
    invoke-static {v1}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    move-object v8, v0

    .line 313
    :goto_1
    return-object v8

    .line 305
    :catch_0
    move-exception v0

    move-object v1, v8

    .line 306
    :goto_2
    :try_start_2
    const-string/jumbo v2, "We got interrupted waiting"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 310
    invoke-static {v1}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    move-object v1, v8

    .line 308
    :goto_3
    :try_start_3
    const-string/jumbo v2, "Our Database is broken!"

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 310
    invoke-static {v1}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    invoke-static {v1}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 307
    :catch_2
    move-exception v0

    goto :goto_3

    .line 305
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

    .line 191
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 194
    if-gez p1, :cond_3

    .line 195
    const-string/jumbo v3, "category_hierarchy.category_id IS NULL"

    move-object v4, v8

    .line 202
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "categories JOIN category_hierarchy ON (categories.id=category_hierarchy.category_child_id)"

    sget-object v2, Lcom/yelp/android/database/m;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "categories.\"order\", categories.title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 208
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->d:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 211
    if-nez v0, :cond_1

    .line 212
    invoke-virtual {p0, v8}, Lcom/yelp/android/database/m;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 214
    :cond_1
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    invoke-static {v8}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    .line 229
    :goto_1
    return-object v9

    .line 197
    :cond_3
    const-string/jumbo v3, "category_hierarchy.category_id=?"

    .line 198
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    :try_start_1
    const-string/jumbo v1, "Something bad happened while trying to get our database"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    invoke-static {v8}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_1

    .line 224
    :catch_1
    move-exception v0

    .line 225
    :try_start_2
    const-string/jumbo v1, "No time to load the entire list"

    invoke-static {p0, v1, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 227
    invoke-static {v8}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

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

    .line 233
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v9

    .line 234
    const-string/jumbo v3, "category_child_id = ?"

    .line 235
    new-array v4, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getDatabaseId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 238
    const-string/jumbo v10, "category_id"

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

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

    .line 244
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 245
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 248
    :cond_0
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yelp/android/database/m;->b(I)Lcom/yelp/android/serializable/Category;

    move-result-object v3

    .line 249
    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    if-nez v3, :cond_0

    .line 259
    :cond_2
    invoke-static {v2}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    .line 261
    :goto_0
    return-object v0

    .line 254
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v9

    .line 255
    :goto_1
    :try_start_3
    const-string/jumbo v3, "We got interrupted while looking up parents"

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 259
    invoke-static {v2}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    move-object v0, v9

    .line 257
    :goto_2
    :try_start_4
    const-string/jumbo v3, "Something when very wrong looking up parents"

    invoke-static {p0, v3, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 259
    invoke-static {v2}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v8

    :goto_3
    invoke-static {v2}, Lcom/yelp/android/database/m;->c(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 256
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v9

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_2

    .line 254
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
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    .line 76
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 79
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

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    if-eqz v0, :cond_0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->g:Ljava/util/LinkedHashSet;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iput-object v0, p0, Lcom/yelp/android/database/m;->g:Ljava/util/LinkedHashSet;

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/database/m;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 183
    iget-object v0, p0, Lcom/yelp/android/database/m;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 185
    new-instance v0, Lcom/yelp/android/database/n;

    iget-object v1, p0, Lcom/yelp/android/database/m;->g:Ljava/util/LinkedHashSet;

    invoke-direct {v0, v1, p3}, Lcom/yelp/android/database/n;-><init>(Ljava/util/Set;Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    .line 186
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/util/Pair;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->b([Ljava/lang/Object;)Lcom/yelp/android/util/aa;

    .line 188
    return-void

    .line 180
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/m;->g:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->clear()V

    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method b()Lcom/yelp/android/database/o;
    .locals 1

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/database/m;->b:Lcom/yelp/android/database/n;

    iget-object v0, v0, Lcom/yelp/android/database/n;->a:Lcom/yelp/android/database/o;

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    goto :goto_0

    .line 150
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public b(I)Lcom/yelp/android/serializable/Category;
    .locals 4

    .prologue
    .line 265
    iget-object v0, p0, Lcom/yelp/android/database/m;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 266
    if-nez v0, :cond_0

    .line 267
    const-string/jumbo v0, "id=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yelp/android/database/m;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Category;

    .line 286
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const-string/jumbo v0, "title=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/yelp/android/database/m;->f:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lcom/yelp/android/database/m;->b()Lcom/yelp/android/database/o;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/database/o;->a(Lcom/yelp/android/database/o;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
