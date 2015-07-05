.class public Lcom/yelp/android/database/savedsearch/m;
.super Lcom/yelp/android/database/z;
.source "SavedSearchTable.java"


# direct methods
.method public constructor <init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    return-void
.end method


# virtual methods
.method public c()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 30
    const-string/jumbo v0, "SELECT S.%s AS %s, S.%s, S.%s, F.%s AS %s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s, F.%s FROM %s AS S JOIN %s AS F WHERE S.%s= F.%s ORDER BY S.%s DESC"

    .line 34
    const/16 v1, 0x16

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "saved_search_join_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, "term"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string/jumbo v3, "filter_id"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, "id"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "filter_join_id"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "one_dollar"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "two_dollar"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "three_dollar"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "four_dollar"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "open"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "active_deal"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "open_time"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "distance_label"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "distance_radius"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "sort"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "hot_new"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    iget-object v3, p0, Lcom/yelp/android/database/savedsearch/m;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "Filter"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "filter_id"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "last_accessed_time"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/m;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
