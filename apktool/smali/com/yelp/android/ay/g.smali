.class Lcom/yelp/android/ay/g;
.super Ljava/lang/Object;
.source "AdapterMessageDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/ay/p;

.field final synthetic b:Lcom/yelp/android/ay/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ay/e;Lcom/yelp/android/ay/p;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ay/g;->b:Lcom/yelp/android/ay/e;

    iput-object p2, p0, Lcom/yelp/android/ay/g;->a:Lcom/yelp/android/ay/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/ay/g;->b:Lcom/yelp/android/ay/e;

    invoke-static {v1}, Lcom/yelp/android/ay/e;->a(Lcom/yelp/android/ay/e;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 50
    iget-object v1, p0, Lcom/yelp/android/ay/g;->a:Lcom/yelp/android/ay/p;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ay/p;->a(Lcom/yelp/android/database/z;)V

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method
