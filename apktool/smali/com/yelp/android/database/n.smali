.class final Lcom/yelp/android/database/n;
.super Lcom/yelp/android/util/aa;
.source "CategoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/aa",
        "<",
        "Landroid/util/Pair",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/String;",
        "Landroid/database/sqlite/SQLiteDatabase;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/yelp/android/database/o;

.field private final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    .line 95
    iput-object p1, p0, Lcom/yelp/android/database/n;->b:Ljava/util/Set;

    .line 96
    iput-object p2, p0, Lcom/yelp/android/database/n;->d:Ljava/util/Collection;

    .line 97
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/util/Pair;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/sqlite/SQLiteDatabase;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 101
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 102
    aget-object v1, p1, v0

    .line 103
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 104
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 105
    new-instance v9, Lcom/yelp/android/database/o;

    iget-object v2, p0, Lcom/yelp/android/database/n;->d:Ljava/util/Collection;

    invoke-direct {v9, v1, v0, v2}, Lcom/yelp/android/database/o;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    .line 108
    :try_start_0
    invoke-virtual {v9, v1}, Lcom/yelp/android/database/o;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    invoke-virtual {v9}, Lcom/yelp/android/database/o;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 115
    invoke-static {}, Lcom/yelp/android/database/m;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    :try_start_1
    const-string/jumbo v1, "categories"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "title"

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 122
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 124
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/yelp/android/database/n;->publishProgress([Ljava/lang/Object;)V

    .line 125
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 128
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/database/m;->b(Landroid/database/Cursor;)V

    .line 134
    iput-object v9, p0, Lcom/yelp/android/database/n;->a:Lcom/yelp/android/database/o;

    .line 135
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to load database"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 128
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    invoke-static {v1}, Lcom/yelp/android/database/m;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/yelp/android/util/aa;->onProgressUpdate([Ljava/lang/Object;)V

    .line 141
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 142
    iget-object v3, p0, Lcom/yelp/android/database/n;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/n;->a([Landroid/util/Pair;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/n;->a([Ljava/lang/String;)V

    return-void
.end method
