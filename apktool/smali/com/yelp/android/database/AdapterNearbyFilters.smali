.class public Lcom/yelp/android/database/AdapterNearbyFilters;
.super Ljava/lang/Object;
.source "AdapterNearbyFilters.java"


# static fields
.field public static final a:Lcom/yelp/android/database/aa;


# instance fields
.field private b:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<**",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 51
    new-instance v0, Lcom/yelp/android/database/ab;

    const-string/jumbo v1, "saved_nearby"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/ab;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "term"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "filter_exists"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "prices"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "open"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "radius"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "radius_label"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "sort_ordinal"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "attributes"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/ab;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/AdapterNearbyFilters;->a:Lcom/yelp/android/database/aa;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->c:Landroid/database/sqlite/SQLiteDatabase;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->b:Landroid/os/AsyncTask;

    .line 81
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
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->b:Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method public static a()Lcom/yelp/android/database/y;
    .locals 1

    .prologue
    .line 84
    new-instance v0, Lcom/yelp/android/database/a;

    invoke-direct {v0}, Lcom/yelp/android/database/a;-><init>()V

    return-object v0
.end method

.method private b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->b:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :goto_0
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    const-string/jumbo v1, "AdapterNearbySearch"

    const-string/jumbo v2, "Failed to aquire database."

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    const/4 v0, 0x0

    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/AdapterNearbyFilters;->c:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/database/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 160
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 162
    invoke-direct {p0}, Lcom/yelp/android/database/AdapterNearbyFilters;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    move-object v0, v8

    .line 176
    :goto_0
    return-object v0

    .line 167
    :cond_0
    const-string/jumbo v1, "saved_nearby"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-static {p1, v0}, Lcom/yelp/android/database/b;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/yelp/android/database/b;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-static {p1, v0}, Lcom/yelp/android/database/b;->a(Landroid/content/Context;Landroid/database/Cursor;)Lcom/yelp/android/database/b;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 175
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 176
    goto :goto_0
.end method
