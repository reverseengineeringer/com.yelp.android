.class Lcom/yelp/android/cc/g;
.super Lcom/yelp/android/cc/i;
.source "DatabaseMessageDraft.java"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "conversation_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "draft"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cc/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/cc/i;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/yelp/android/cc/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/cc/i;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/cc/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static a(Lcom/yelp/android/database/l;Ljava/lang/String;)Lcom/yelp/android/cc/i;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/yelp/android/cc/i;

    const-string/jumbo v1, ""

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/cc/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0, v1, p1}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Landroid/database/Cursor;->isFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    new-instance v0, Lcom/yelp/android/cc/g;

    invoke-direct {v0, v1}, Lcom/yelp/android/cc/g;-><init>(Landroid/database/Cursor;)V

    .line 18
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 19
    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/database/l;)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 35
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string/jumbo v1, "draft"

    invoke-virtual {p0}, Lcom/yelp/android/cc/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string/jumbo v1, "conversation_id"

    invoke-virtual {p0}, Lcom/yelp/android/cc/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/yelp/android/database/l;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    .line 40
    return-void
.end method
