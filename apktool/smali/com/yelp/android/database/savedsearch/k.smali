.class public Lcom/yelp/android/database/savedsearch/k;
.super Ljava/lang/Object;
.source "SavedSearch.java"


# instance fields
.field private a:Lcom/yelp/android/serializable/Filter;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;

    const-string/jumbo v1, "filter_join_id"

    invoke-direct {v0, p1, p2, v1}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    .line 41
    const-string/jumbo v0, "term"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "saved_search_join_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Filter;)V
    .locals 2

    .prologue
    .line 19
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/yelp/android/database/savedsearch/k;-><init>(Ljava/lang/String;Lcom/yelp/android/serializable/Filter;J)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yelp/android/serializable/Filter;J)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    if-nez p2, :cond_0

    .line 24
    new-instance p2, Lcom/yelp/android/serializable/Filter;

    invoke-direct {p2}, Lcom/yelp/android/serializable/Filter;-><init>()V

    .line 26
    :cond_0
    if-nez p1, :cond_1

    .line 27
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    const v1, 0x7f070123

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 29
    :cond_1
    iput-object p2, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    .line 30
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    .line 31
    iput-wide p3, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/serializable/Filter;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    return-object v0
.end method

.method a(Lcom/yelp/android/database/z;)V
    .locals 4

    .prologue
    .line 79
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 80
    const-string/jumbo v1, "last_accessed_time"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 84
    return-void
.end method

.method public a(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 63
    new-instance v0, Lcom/yelp/android/database/savedsearch/DatabaseFilter;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    invoke-direct {v0, v1}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;-><init>(Lcom/yelp/android/serializable/Filter;)V

    .line 64
    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->save(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 65
    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getId()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    const-string/jumbo v2, "last_accessed_time"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string/jumbo v2, "term"

    iget-object v3, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string/jumbo v2, "filter_id"

    invoke-virtual {v0}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string/jumbo v0, "id"

    iget-wide v2, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2, v1}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iput-wide v4, p0, Lcom/yelp/android/database/savedsearch/k;->c:J

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 115
    if-ne p0, p1, :cond_1

    .line 116
    const/4 v0, 0x1

    .line 128
    :cond_0
    :goto_0
    return v0

    .line 118
    :cond_1
    if-eqz p1, :cond_0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 124
    check-cast p1, Lcom/yelp/android/database/savedsearch/k;

    .line 125
    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    iget-object v2, p1, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Filter;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 106
    .line 108
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x11

    .line 109
    mul-int/lit8 v0, v0, 0x11

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 110
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/database/savedsearch/k;->a:Lcom/yelp/android/serializable/Filter;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Filter;->hashCode()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/k;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
