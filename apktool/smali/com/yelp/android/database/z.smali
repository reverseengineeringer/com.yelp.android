.class public Lcom/yelp/android/database/z;
.super Ljava/lang/Object;
.source "Table.java"


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/z;->a(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 15
    invoke-virtual {p1}, Lcom/yelp/android/database/aa;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 17
    return-void
.end method

.method private a(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 21
    if-nez p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You tried to create a new Table instance with a null tableDescriptor parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/database/aa;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You tried to create a new Table instance with a tableDescriptor without a name."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_1
    if-nez p2, :cond_2

    .line 30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You attempted to create a new Table instance with a null database parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_2
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "You attempted to create a new Table instance with a closed database parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_3
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SELECT * FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " WHERE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)J
    .locals 3

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/z;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 75
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 76
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/database/z;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p0, p3}, Lcom/yelp/android/database/z;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/database/z;->b:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/yelp/android/database/z;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/z;->d(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 101
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 102
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 103
    return v0

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
