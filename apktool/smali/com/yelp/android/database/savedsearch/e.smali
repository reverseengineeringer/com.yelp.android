.class Lcom/yelp/android/database/savedsearch/e;
.super Ljava/lang/Object;
.source "AdapterSavedSearch.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/database/savedsearch/k;

.field final synthetic b:Lcom/yelp/android/database/savedsearch/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/database/savedsearch/c;Lcom/yelp/android/database/savedsearch/k;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/e;->b:Lcom/yelp/android/database/savedsearch/c;

    iput-object p2, p0, Lcom/yelp/android/database/savedsearch/e;->a:Lcom/yelp/android/database/savedsearch/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/e;->b:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 74
    new-instance v1, Lcom/yelp/android/database/z;

    iget-object v2, p0, Lcom/yelp/android/database/savedsearch/e;->b:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v2}, Lcom/yelp/android/database/savedsearch/c;->c(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    new-instance v2, Lcom/yelp/android/database/z;

    iget-object v3, p0, Lcom/yelp/android/database/savedsearch/e;->b:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v3}, Lcom/yelp/android/database/savedsearch/c;->b(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    iget-object v3, p0, Lcom/yelp/android/database/savedsearch/e;->a:Lcom/yelp/android/database/savedsearch/k;

    invoke-virtual {v3, v0, v1, v2}, Lcom/yelp/android/database/savedsearch/k;->a(Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;Lcom/yelp/android/database/z;)V

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method
