.class Lcom/yelp/android/database/savedsearch/b;
.super Ljava/lang/Object;
.source "AdapterCachedSearch.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/database/savedsearch/i;

.field final synthetic b:Lcom/yelp/android/database/savedsearch/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/database/savedsearch/a;Lcom/yelp/android/database/savedsearch/i;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/b;->b:Lcom/yelp/android/database/savedsearch/a;

    iput-object p2, p0, Lcom/yelp/android/database/savedsearch/b;->a:Lcom/yelp/android/database/savedsearch/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/b;->b:Lcom/yelp/android/database/savedsearch/a;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/a;->a(Lcom/yelp/android/database/savedsearch/a;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 66
    new-instance v1, Lcom/yelp/android/database/z;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/b;->b:Lcom/yelp/android/database/savedsearch/a;

    invoke-static {v2}, Lcom/yelp/android/database/savedsearch/a;->b(Lcom/yelp/android/database/savedsearch/a;)Lcom/yelp/android/database/aa;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/b;->a:Lcom/yelp/android/database/savedsearch/i;

    invoke-virtual {v2, v0, v1}, Lcom/yelp/android/database/savedsearch/i;->a(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 68
    const/4 v0, 0x0

    return-object v0
.end method
