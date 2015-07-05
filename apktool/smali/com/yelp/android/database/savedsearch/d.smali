.class Lcom/yelp/android/database/savedsearch/d;
.super Ljava/lang/Object;
.source "AdapterSavedSearch.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/database/savedsearch/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/database/savedsearch/c;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/d;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 39
    new-instance v0, Lcom/yelp/android/database/savedsearch/m;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/d;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/savedsearch/m;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 41
    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/m;->c()Landroid/database/Cursor;

    move-result-object v0

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 47
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    new-instance v2, Lcom/yelp/android/database/z;

    iget-object v3, p0, Lcom/yelp/android/database/savedsearch/d;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v3}, Lcom/yelp/android/database/savedsearch/c;->b(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    :cond_0
    const-string/jumbo v3, "filter_join_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 54
    const-string/jumbo v3, "filter_id"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 57
    new-instance v4, Lcom/yelp/android/database/savedsearch/k;

    invoke-direct {v4, v0, v3}, Lcom/yelp/android/database/savedsearch/k;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 61
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 62
    return-object v1
.end method
