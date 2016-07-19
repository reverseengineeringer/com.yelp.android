.class public Lcom/yelp/android/database/b;
.super Ljava/lang/Object;
.source "AdapterRecentlyViewedBusinesses.java"

# interfaces
.implements Lcom/yelp/android/database/g$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/database/b$c;,
        Lcom/yelp/android/database/b$b;,
        Lcom/yelp/android/database/b$a;,
        Lcom/yelp/android/database/b$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/yelp/android/database/m;


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

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 40
    new-instance v0, Lcom/yelp/android/database/n;

    const-string/jumbo v1, "recently_viewed_businesses"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/n;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->INTEGER:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_AUTOINCREMENT:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "business_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "business_json"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "yelp_request_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "path_business_image"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    const-string/jumbo v1, "business_id_idx"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "business_id"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/database/n;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/yelp/android/database/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    sput-object v0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/database/m;

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
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    .line 68
    return-void
.end method

.method static synthetic a(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 2

    .prologue
    .line 28
    invoke-static {p0}, Lcom/yelp/android/database/b;->b(Landroid/database/sqlite/SQLiteStatement;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 393
    const/4 v1, 0x0

    .line 395
    :try_start_0
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    new-instance v2, Lorg/json/JSONObject;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    const/4 v1, 0x1

    :try_start_1
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :goto_0
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 398
    :goto_1
    const-string/jumbo v2, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v3, "Error deserializing last viewed business from recents table."

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 397
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 178
    const-string/jumbo v1, "recently_viewed_businesses"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "business_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string/jumbo v8, "1"

    move-object v0, p0

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-object v5

    .line 200
    :cond_1
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    :try_start_1
    const-string/jumbo v2, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v3, "Error deleting existing business entry from recents."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    invoke-static {v2, v3, v4}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 200
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method private static b(Landroid/database/sqlite/SQLiteStatement;)J
    .locals 5

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 326
    :goto_0
    return-wide v0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "Error executing query for recents table."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 326
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static b(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 207
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 208
    const-string/jumbo v0, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v0, "business_json"

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpBusiness;->n()Ljava/lang/String;

    move-result-object v0

    .line 212
    if-nez v0, :cond_0

    .line 213
    const-string/jumbo v0, ""

    .line 215
    :cond_0
    const-string/jumbo v2, "yelp_request_id"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string/jumbo v0, "path_business_image"

    const-string/jumbo v2, "path.to.image"

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object v1
.end method

.method private declared-synchronized b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/yelp/android/database/b;->b()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_0
    :try_start_1
    const-string/jumbo v0, "SELECT COUNT(*) FROM recently_viewed_businesses"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/b;->d:Landroid/database/sqlite/SQLiteStatement;

    .line 89
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 91
    const-string/jumbo v1, "recently_viewed_businesses"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v3, "business_json"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "yelp_request_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "_id DESC"

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_3

    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 102
    invoke-direct {p0, v0}, Lcom/yelp/android/database/b;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-direct {p0, v0}, Lcom/yelp/android/database/b;->a(Landroid/database/Cursor;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_1

    .line 109
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 113
    :cond_2
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_3
    iput-object v8, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static d()Lcom/yelp/android/database/i;
    .locals 1

    .prologue
    .line 406
    new-instance v0, Lcom/yelp/android/database/b$1;

    invoke-direct {v0}, Lcom/yelp/android/database/b$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 431
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    .line 433
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 434
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Offer;)V

    goto :goto_0

    .line 439
    :cond_1
    new-instance v0, Lcom/yelp/android/database/b$c;

    iget-object v1, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/b$c;-><init>(Landroid/os/AsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0, v0}, Lcom/yelp/android/database/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    :goto_0
    return-object v0

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "AdapterRecentlyViewedBusinesses"

    const-string/jumbo v2, "There were issues getting the database open"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/yelp/android/database/b;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 428
    return-void
.end method

.method public a(Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 131
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    .line 132
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    .line 134
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_1
    new-instance v0, Lcom/yelp/android/database/b$d;

    iget-object v1, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/b$d;-><init>(Landroid/os/AsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/serializable/YelpBusiness;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b$d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 140
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/yelp/android/serializable/YelpBusiness;)Landroid/os/AsyncTask;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Lcom/yelp/android/serializable/YelpBusiness;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 227
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    .line 228
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 230
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    .line 231
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    :cond_2
    new-instance v0, Lcom/yelp/android/database/b$a;

    iget-object v1, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    iget-object v3, p0, Lcom/yelp/android/database/b;->d:Landroid/database/sqlite/SQLiteStatement;

    invoke-direct {v0, v1, v3}, Lcom/yelp/android/database/b$a;-><init>(Landroid/os/AsyncTask;Landroid/database/sqlite/SQLiteStatement;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yelp/android/serializable/YelpBusiness;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0

    .line 230
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/yelp/android/database/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 334
    :cond_0
    new-instance v0, Lcom/yelp/android/database/b$b;

    iget-object v1, p0, Lcom/yelp/android/database/b;->b:Landroid/os/AsyncTask;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/b$b;-><init>(Landroid/os/AsyncTask;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b$b;->b([Ljava/lang/Object;)Lcom/yelp/android/util/q;

    .line 335
    return-void
.end method
