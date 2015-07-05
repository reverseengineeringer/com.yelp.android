.class Lcom/yelp/android/ay/d;
.super Ljava/lang/Object;
.source "AdapterConversationDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/User;

.field final synthetic b:Lcom/yelp/android/ay/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ay/a;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ay/d;->b:Lcom/yelp/android/ay/a;

    iput-object p2, p0, Lcom/yelp/android/ay/d;->a:Lcom/yelp/android/serializable/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/ay/d;->b:Lcom/yelp/android/ay/a;

    invoke-static {v1}, Lcom/yelp/android/ay/a;->a(Lcom/yelp/android/ay/a;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    const-string/jumbo v1, "user_id"

    iget-object v2, p0, Lcom/yelp/android/ay/d;->a:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/database/z;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
