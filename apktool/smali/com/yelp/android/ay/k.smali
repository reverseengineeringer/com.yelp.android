.class Lcom/yelp/android/ay/k;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/ay/t;

.field final synthetic b:Lcom/yelp/android/ay/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ay/i;Lcom/yelp/android/ay/t;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/ay/k;->b:Lcom/yelp/android/ay/i;

    iput-object p2, p0, Lcom/yelp/android/ay/k;->a:Lcom/yelp/android/ay/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/ay/k;->b:Lcom/yelp/android/ay/i;

    invoke-static {v1}, Lcom/yelp/android/ay/i;->a(Lcom/yelp/android/ay/i;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    new-instance v1, Lcom/yelp/android/ay/q;

    iget-object v2, p0, Lcom/yelp/android/ay/k;->a:Lcom/yelp/android/ay/t;

    invoke-direct {v1, v2}, Lcom/yelp/android/ay/q;-><init>(Lcom/yelp/android/ay/t;)V

    .line 48
    invoke-virtual {v1, v0}, Lcom/yelp/android/ay/q;->a(Lcom/yelp/android/database/z;)V

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method
