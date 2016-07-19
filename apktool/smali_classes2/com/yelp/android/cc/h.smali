.class Lcom/yelp/android/cc/h;
.super Lcom/yelp/android/cc/k;
.source "DatabaseMessageTheBusinessDraft.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 11
    const-string/jumbo v0, "business_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "draft"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cc/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/cc/k;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/yelp/android/cc/k;-><init>(Lcom/yelp/android/cc/k;)V

    .line 20
    return-void
.end method

.method public static a(Lcom/yelp/android/database/l;Ljava/lang/String;)Lcom/yelp/android/cc/k;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/cc/k;

    const-string/jumbo v1, ""

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/cc/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    new-instance v0, Lcom/yelp/android/cc/h;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/h;-><init>(Landroid/database/Cursor;)V

    .line 31
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 32
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/l;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 38
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "draft"

    invoke-virtual {p0}, Lcom/yelp/android/cc/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/h;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 43
    return-void
.end method
