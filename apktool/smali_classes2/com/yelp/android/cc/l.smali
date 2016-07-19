.class Lcom/yelp/android/cc/l;
.super Lcom/yelp/android/database/i;
.source "MessageTheBusinessDraftsHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/database/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/m;
    .locals 5

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/database/n;

    const-string/jumbo v1, "messaging_message_to_business_drafts"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/n;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "business_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/f;

    const-string/jumbo v2, "draft"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/f;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/n;->a(Lcom/yelp/android/database/f;)Lcom/yelp/android/database/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/n;->a()Lcom/yelp/android/database/m;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0xf

    return v0
.end method
