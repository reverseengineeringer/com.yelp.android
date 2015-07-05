.class public abstract Lcom/yelp/android/database/j;
.super Ljava/lang/Object;
.source "AdapterSavedTerms.java"

# interfaces
.implements Lcom/yelp/android/database/t;


# instance fields
.field private final a:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/AsyncTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

    .line 42
    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/yelp/android/database/ab;
    .locals 5

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/database/ab;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/ab;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yelp/android/database/aa;Ljava/lang/String;)Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 199
    new-instance v0, Lcom/yelp/android/database/k;

    invoke-direct {v0, p0}, Lcom/yelp/android/database/k;-><init>(Lcom/yelp/android/database/aa;)V

    return-object v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 192
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 195
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 66
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 70
    iget-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/database/j;->e(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v2, "Could not purge db for \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 87
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 89
    :goto_0
    return-void

    .line 75
    :cond_0
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x4b

    if-le v1, v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 77
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "= ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 82
    :catch_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 83
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inserting new near term over oldest term in table: "

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 81
    :cond_1
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 87
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_3
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    .line 82
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private c(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 99
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/database/j;->e(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v2, "Failed to add Term \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 110
    :goto_0
    return-void

    .line 103
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 108
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    :goto_1
    :try_start_3
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error inserting new near term into table: "

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
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 104
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 118
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 121
    if-eq v1, v5, :cond_0

    .line 122
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v3, "Trying to delete terms and deleted %d rows"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 137
    :goto_0
    return-void

    .line 126
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/yelp/android/database/j;->e(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 127
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v2, "Was not able to reorder new term %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 130
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :goto_1
    :try_start_4
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v3, "Error moving preexisting near term to top of table"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 131
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method private final e(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 50
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    invoke-direct {p0, p2}, Lcom/yelp/android/database/j;->d(Ljava/lang/String;)V

    .line 61
    :goto_1
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    goto :goto_0

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x4b

    if-ge v0, v1, :cond_2

    .line 57
    invoke-direct {p0, p2}, Lcom/yelp/android/database/j;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :cond_2
    invoke-direct {p0, p2}, Lcom/yelp/android/database/j;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 215
    new-instance v8, Ljava/util/LinkedHashSet;

    invoke-direct {v8}, Ljava/util/LinkedHashSet;-><init>()V

    .line 216
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    aput-object v0, v2, v9

    move-object v0, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 229
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 233
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    .line 234
    iget-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 235
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 236
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 156
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v2, "1"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v3, "Purged %d rows of terms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 165
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error clearing near terms table: "

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

    .line 163
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 159
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method

.method public d()V
    .locals 7

    .prologue
    .line 168
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/database/j;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 172
    const/4 v1, 0x0

    .line 174
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/j;->a:Landroid/os/AsyncTask;

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
    iget-object v1, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/yelp/android/database/j;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " = ?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 186
    invoke-static {v0}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 183
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/yelp/android/database/j;->b:Ljava/lang/String;

    const-string/jumbo v3, "Error Removing the last known saved term from the table: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v1}, Lcom/yelp/android/database/j;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2

    .line 181
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_1
.end method
