.class final Lcom/yelp/android/database/e$a;
.super Lcom/yelp/android/util/q;
.source "CategoryDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/database/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
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
.field a:Lcom/yelp/android/database/e$b;

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
    .line 101
    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/yelp/android/database/e$a;->b:Ljava/util/Set;

    .line 103
    iput-object p2, p0, Lcom/yelp/android/database/e$a;->d:Ljava/util/Collection;

    .line 104
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

    .line 108
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 109
    aget-object v1, p1, v0

    .line 110
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 111
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/content/Context;

    .line 112
    new-instance v9, Lcom/yelp/android/database/e$b;

    iget-object v2, p0, Lcom/yelp/android/database/e$a;->d:Ljava/util/Collection;

    invoke-direct {v9, v1, v0, v2}, Lcom/yelp/android/database/e$b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;)V

    .line 115
    :try_start_0
    invoke-virtual {v9, v1}, Lcom/yelp/android/database/e$b;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    invoke-virtual {v9}, Lcom/yelp/android/database/e$b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/yelp/android/database/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
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

    .line 135
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 137
    :cond_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v2}, Lcom/yelp/android/database/e$a;->publishProgress([Ljava/lang/Object;)V

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    .line 141
    :cond_1
    invoke-static {v1}, Lcom/yelp/android/database/e;->b(Landroid/database/Cursor;)V

    .line 149
    iput-object v9, p0, Lcom/yelp/android/database/e$a;->a:Lcom/yelp/android/database/e$b;

    .line 150
    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Unable to load database"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 141
    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_0
    invoke-static {v1}, Lcom/yelp/android/database/e;->b(Landroid/database/Cursor;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 155
    invoke-super {p0, p1}, Lcom/yelp/android/util/q;->onProgressUpdate([Ljava/lang/Object;)V

    .line 156
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 157
    iget-object v3, p0, Lcom/yelp/android/database/e$a;->b:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/e$a;->a([Landroid/util/Pair;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/database/e$a;->a([Ljava/lang/String;)V

    return-void
.end method
