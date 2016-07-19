.class Lcom/yelp/android/cc/f;
.super Lcom/yelp/android/cc/d;
.source "DatabaseConversationDraft.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 21
    const-string/jumbo v0, "user_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subject"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "draft"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/cc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/cc/d;)V
    .locals 3

    .prologue
    .line 28
    invoke-virtual {p1}, Lcom/yelp/android/cc/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/d;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/yelp/android/cc/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/cc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static a(Lcom/yelp/android/database/l;Ljava/lang/String;)Lcom/yelp/android/cc/d;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/yelp/android/cc/d;

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-direct {v0, p1, v1, v2}, Lcom/yelp/android/cc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 14
    new-instance v0, Lcom/yelp/android/cc/f;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/f;-><init>(Landroid/database/Cursor;)V

    .line 16
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 17
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/l;)V
    .locals 3

    .prologue
    .line 32
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string/jumbo v1, "subject"

    invoke-virtual {p0}, Lcom/yelp/android/cc/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "draft"

    invoke-virtual {p0}, Lcom/yelp/android/cc/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, "user_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 39
    return-void
.end method
