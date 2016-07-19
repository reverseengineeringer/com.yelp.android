.class Lcom/yelp/android/cc/c$2;
.super Ljava/lang/Object;
.source "AdapterMessageTheBusinessDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/k;Lcom/yelp/android/database/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/cc/k;

.field final synthetic b:Lcom/yelp/android/cc/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/cc/c;Lcom/yelp/android/cc/k;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/cc/c$2;->b:Lcom/yelp/android/cc/c;

    iput-object p2, p0, Lcom/yelp/android/cc/c$2;->a:Lcom/yelp/android/cc/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cc/c$2;->b:Lcom/yelp/android/cc/c;

    invoke-static {v1}, Lcom/yelp/android/cc/c;->a(Lcom/yelp/android/cc/c;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 51
    new-instance v1, Lcom/yelp/android/cc/h;

    iget-object v2, p0, Lcom/yelp/android/cc/c$2;->a:Lcom/yelp/android/cc/k;

    invoke-direct {v1, v2}, Lcom/yelp/android/cc/h;-><init>(Lcom/yelp/android/cc/k;)V

    .line 53
    invoke-virtual {v1, v0}, Lcom/yelp/android/cc/h;->a(Lcom/yelp/android/database/l;)V

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method
