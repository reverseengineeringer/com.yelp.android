.class Lcom/yelp/android/ay/q;
.super Lcom/yelp/android/ay/t;
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

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ay/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/ay/t;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/yelp/android/ay/t;-><init>(Lcom/yelp/android/ay/t;)V

    .line 18
    return-void
.end method

.method public static a(Lcom/yelp/android/database/z;Ljava/lang/String;)Lcom/yelp/android/ay/t;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/ay/t;

    const-string/jumbo v1, ""

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ay/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 25
    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    new-instance v0, Lcom/yelp/android/ay/q;

    invoke-direct {v0, v1}, Lcom/yelp/android/ay/q;-><init>(Landroid/database/Cursor;)V

    .line 29
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 30
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/z;)V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ay/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string/jumbo v1, "draft"

    invoke-virtual {p0}, Lcom/yelp/android/ay/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "business_id"

    invoke-virtual {p0}, Lcom/yelp/android/ay/q;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/z;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 41
    return-void
.end method
