.class Lcom/yelp/android/database/savedsearch/f;
.super Ljava/lang/Object;
.source "AdapterSavedSearch.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/database/savedsearch/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/database/savedsearch/c;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/f;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/f;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/yelp/android/database/z;->a()V

    .line 104
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/f;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->c(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/yelp/android/database/z;->a()V

    .line 105
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/f;->a:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->b(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {v0}, Lcom/yelp/android/database/z;->a()V

    .line 106
    const/4 v0, 0x0

    return-object v0
.end method
