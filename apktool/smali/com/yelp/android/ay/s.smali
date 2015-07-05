.class Lcom/yelp/android/ay/s;
.super Lcom/yelp/android/database/y;
.source "MessageDraftsHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/database/y;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/database/aa;
    .locals 5

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/database/ab;

    const-string/jumbo v1, "messaging_conversation_message_drafts"

    invoke-direct {v0, v1}, Lcom/yelp/android/database/ab;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "conversation_id"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->PRIMARY_KEY_NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/database/p;

    const-string/jumbo v2, "draft"

    sget-object v3, Lcom/yelp/android/database/ColumnType;->TEXT:Lcom/yelp/android/database/ColumnType;

    sget-object v4, Lcom/yelp/android/database/ColumnModifier;->NOT_NULL:Lcom/yelp/android/database/ColumnModifier;

    invoke-direct {v1, v2, v3, v4}, Lcom/yelp/android/database/p;-><init>(Ljava/lang/String;Lcom/yelp/android/database/ColumnType;Lcom/yelp/android/database/ColumnModifier;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/ab;->a(Lcom/yelp/android/database/p;)Lcom/yelp/android/database/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/ab;->a()Lcom/yelp/android/database/aa;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xd

    return v0
.end method
