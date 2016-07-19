.class Lcom/yelp/android/cc/a$2;
.super Ljava/lang/Object;
.source "AdapterConversationDrafts.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cc/a;->a(Lcom/yelp/android/cc/d;Lcom/yelp/android/database/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/cc/f;

.field final synthetic b:Lcom/yelp/android/cc/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/cc/a;Lcom/yelp/android/cc/f;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/cc/a$2;->b:Lcom/yelp/android/cc/a;

    iput-object p2, p0, Lcom/yelp/android/cc/a$2;->a:Lcom/yelp/android/cc/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 54
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cc/a$2;->b:Lcom/yelp/android/cc/a;

    invoke-static {v1}, Lcom/yelp/android/cc/a;->a(Lcom/yelp/android/cc/a;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 55
    iget-object v1, p0, Lcom/yelp/android/cc/a$2;->a:Lcom/yelp/android/cc/f;

    invoke-virtual {v1, v0}, Lcom/yelp/android/cc/f;->a(Lcom/yelp/android/database/l;)V

    .line 56
    const/4 v0, 0x0

    return-object v0
.end method
