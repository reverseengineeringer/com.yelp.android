.class Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;
.super Lcom/yelp/android/serializable/AttributeFilter;
.source "DatabaseAttributeFilter.java"


# instance fields
.field private mId:J


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 22
    const-string/jumbo v0, "api_tag"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "localized_label"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->mId:J

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/AttributeFilter;)V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yelp/android/serializable/AttributeFilter;-><init>(Lcom/yelp/android/serializable/AttributeFilter;)V

    .line 18
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->mId:J

    .line 19
    return-void
.end method


# virtual methods
.method public save(Lcom/yelp/android/database/z;Lcom/yelp/android/database/savedsearch/DatabaseFilter;)V
    .locals 4

    .prologue
    .line 29
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 31
    const-string/jumbo v1, "api_tag"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->getAlias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v1, "localized_label"

    invoke-virtual {p0}, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->getLocalizedLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const-string/jumbo v1, "filter_id"

    invoke-virtual {p2}, Lcom/yelp/android/database/savedsearch/DatabaseFilter;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 36
    const-string/jumbo v1, "id"

    iget-wide v2, p0, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/database/savedsearch/DatabaseAttributeFilter;->mId:J

    .line 38
    return-void
.end method
