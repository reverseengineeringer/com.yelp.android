.class Lcom/yelp/android/database/savedsearch/g;
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
    .line 114
    iput-object p1, p0, Lcom/yelp/android/database/savedsearch/g;->b:Lcom/yelp/android/database/savedsearch/c;

    iput-object p2, p0, Lcom/yelp/android/database/savedsearch/g;->a:Lcom/yelp/android/database/savedsearch/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/g;->b:Lcom/yelp/android/database/savedsearch/c;

    invoke-static {v1}, Lcom/yelp/android/database/savedsearch/c;->a(Lcom/yelp/android/database/savedsearch/c;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 118
    iget-object v1, p0, Lcom/yelp/android/database/savedsearch/g;->a:Lcom/yelp/android/database/savedsearch/k;

    invoke-virtual {v1, v0}, Lcom/yelp/android/database/savedsearch/k;->a(Lcom/yelp/android/database/z;)V

    .line 119
    const/4 v0, 0x0

    return-object v0
.end method
