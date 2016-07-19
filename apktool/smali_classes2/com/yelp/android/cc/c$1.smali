.class Lcom/yelp/android/cc/c$1;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/database/h$b;)V
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
    .line 32
    iput-object p1, p0, Lcom/yelp/android/cc/c$1;->b:Lcom/yelp/android/cc/c;

    iput-object p2, p0, Lcom/yelp/android/cc/c$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cc/c$1;->b:Lcom/yelp/android/cc/c;

    invoke-static {v1}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/c;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 36
    iget-object v1, p0, Lcom/yelp/android/cc/c$1;->a:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/cc/h;->a(Lcom/yelp/android/database/l;Ljava/lang/String;)Lcom/yelp/android/cc/k;

    move-result-object v0

    return-object v0
.end method
