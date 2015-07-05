.class Lcom/yelp/android/ay/c;
.super Ljava/lang/Object;
.source "AdapterConversationDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/ay/o;

.field final synthetic b:Lcom/yelp/android/ay/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ay/a;Lcom/yelp/android/ay/o;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ay/c;->b:Lcom/yelp/android/ay/a;

    iput-object p2, p0, Lcom/yelp/android/ay/c;->a:Lcom/yelp/android/ay/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/ay/c;->b:Lcom/yelp/android/ay/a;

    invoke-static {v1}, Lcom/yelp/android/ay/a;->a(Lcom/yelp/android/ay/a;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ay/c;->a:Lcom/yelp/android/ay/o;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ay/o;->a(Lcom/yelp/android/database/z;)V

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
