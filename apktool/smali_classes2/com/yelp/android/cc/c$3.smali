.class Lcom/yelp/android/cc/c$3;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cc/c;->b(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusiness;

.field final synthetic b:Lcom/yelp/android/cc/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/cc/c;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/cc/c$3;->b:Lcom/yelp/android/cc/c;

    iput-object p2, p0, Lcom/yelp/android/cc/c$3;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cc/c$3;->b:Lcom/yelp/android/cc/c;

    invoke-static {v1}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/c;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/cc/c$3;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/database/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method
