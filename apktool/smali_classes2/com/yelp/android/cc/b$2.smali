.class Lcom/yelp/android/cc/b$2;
.super Ljava/lang/Object;
.source "AdapterMessageDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cc/b;->a(Lcom/yelp/android/cc/i;Lcom/yelp/android/database/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/cc/g;

.field final synthetic b:Lcom/yelp/android/cc/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/cc/b;Lcom/yelp/android/cc/g;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/yelp/android/cc/b$2;->b:Lcom/yelp/android/cc/b;

    iput-object p2, p0, Lcom/yelp/android/cc/b$2;->a:Lcom/yelp/android/cc/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cc/b$2;->b:Lcom/yelp/android/cc/b;

    invoke-static {v1}, Lcom/yelp/android/cc/b;->a(Lcom/yelp/android/cc/b;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 56
    iget-object v1, p0, Lcom/yelp/android/cc/b$2;->a:Lcom/yelp/android/cc/g;

    invoke-virtual {v1, v0}, Lcom/yelp/android/cc/g;->a(Lcom/yelp/android/database/l;)V

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method
