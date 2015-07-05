.class Lcom/yelp/android/ay/j;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/v;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/ay/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ay/i;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/yelp/android/ay/j;->b:Lcom/yelp/android/ay/i;

    iput-object p2, p0, Lcom/yelp/android/ay/j;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Lcom/yelp/android/database/z;

    iget-object v1, p0, Lcom/yelp/android/ay/j;->b:Lcom/yelp/android/ay/i;

    invoke-static {v1}, Lcom/yelp/android/ay/i;->a(Lcom/yelp/android/ay/i;)Lcom/yelp/android/database/aa;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/z;-><init>(Lcom/yelp/android/database/aa;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 35
    iget-object v1, p0, Lcom/yelp/android/ay/j;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ay/q;->a(Lcom/yelp/android/database/z;Ljava/lang/String;)Lcom/yelp/android/ay/t;

    move-result-object v0

    return-object v0
.end method
