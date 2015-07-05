.class final Lcom/yelp/android/database/a;
.super Lcom/yelp/android/database/y;
.source "AdapterNearbyFilters.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/yelp/android/database/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/aa;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/yelp/android/database/AdapterNearbyFilters;->a:Lcom/yelp/android/database/aa;

    return-object v0
.end method

.method public a(IILandroid/database/sqlite/SQLiteDatabase;)V
    .locals 12

    .prologue
    .line 113
    new-instance v0, Lcom/yelp/android/database/AdapterNearbyFilters;

    invoke-direct {v0, p3}, Lcom/yelp/android/database/AdapterNearbyFilters;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    new-instance v1, Lcom/yelp/android/database/z;

    sget-object v2, Lcom/yelp/android/database/AdapterNearbyFilters;->a:Lcom/yelp/android/database/aa;

    invoke-direct {v1, v2, p3}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    invoke-static {}, Lcom/yelp/android/database/savedsearch/c;->a()Lcom/yelp/android/database/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/database/y;->a()Lcom/yelp/android/database/aa;

    move-result-object v2

    .line 119
    new-instance v3, Lcom/yelp/android/database/savedsearch/j;

    invoke-direct {v3}, Lcom/yelp/android/database/savedsearch/j;-><init>()V

    invoke-virtual {v3}, Lcom/yelp/android/database/savedsearch/j;->a()Lcom/yelp/android/database/aa;

    move-result-object v3

    .line 120
    new-instance v4, Lcom/yelp/android/database/savedsearch/h;

    invoke-direct {v4}, Lcom/yelp/android/database/savedsearch/h;-><init>()V

    invoke-virtual {v4}, Lcom/yelp/android/database/savedsearch/h;->a()Lcom/yelp/android/database/aa;

    move-result-object v4

    .line 122
    invoke-virtual {v2, p3}, Lcom/yelp/android/database/aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 123
    invoke-virtual {v3, p3}, Lcom/yelp/android/database/aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 124
    invoke-virtual {v4, p3}, Lcom/yelp/android/database/aa;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 126
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/yelp/android/database/AdapterNearbyFilters;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 129
    new-instance v5, Lcom/yelp/android/database/z;

    invoke-direct {v5, v2, p3}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    new-instance v2, Lcom/yelp/android/database/z;

    invoke-direct {v2, v3, p3}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 131
    new-instance v3, Lcom/yelp/android/database/z;

    invoke-direct {v3, v4, p3}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/database/b;

    .line 133
    new-instance v6, Lcom/yelp/android/database/savedsearch/k;

    iget-object v7, v0, Lcom/yelp/android/database/b;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/yelp/android/database/b;->a:Lcom/yelp/android/serializable/Filter;

    iget v0, v0, Lcom/yelp/android/database/b;->c:I

    int-to-long v10, v0

    invoke-direct {v6, v7, v8, v10, v11}, Lcom/yelp/android/database/savedsearch/k;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Filter;J)V

    .line 135
    invoke-virtual {v6, v5, v2, v3}, Lcom/yelp/android/database/savedsearch/k;->a(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {v1}, Lcom/yelp/android/database/z;->b()V

    .line 139
    return-void
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/yelp/android/database/savedsearch/c;->a()Lcom/yelp/android/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/y;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0xb

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/yelp/android/database/a;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    invoke-static {}, Lcom/yelp/android/database/savedsearch/c;->a()Lcom/yelp/android/database/y;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/y;->b()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
