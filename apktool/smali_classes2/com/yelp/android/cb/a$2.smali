.class Lcom/yelp/android/cb/a$2;
.super Ljava/lang/Object;
.source "AdapterInAppNotification.java"

# interfaces
.implements Lcom/yelp/android/database/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/cb/a;->a(Lcom/yelp/android/serializable/InAppNotification;Lcom/yelp/android/database/h$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/InAppNotification;

.field final synthetic b:Lcom/yelp/android/cb/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/cb/a;Lcom/yelp/android/serializable/InAppNotification;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/cb/a$2;->b:Lcom/yelp/android/cb/a;

    iput-object p2, p0, Lcom/yelp/android/cb/a$2;->a:Lcom/yelp/android/serializable/InAppNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Lcom/yelp/android/database/l;

    iget-object v1, p0, Lcom/yelp/android/cb/a$2;->b:Lcom/yelp/android/cb/a;

    invoke-static {v1}, Lcom/yelp/android/cb/a;->a(Lcom/yelp/android/cb/a;)Lcom/yelp/android/database/m;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/database/l;-><init>(Lcom/yelp/android/database/m;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 72
    iget-object v1, p0, Lcom/yelp/android/cb/a$2;->a:Lcom/yelp/android/serializable/InAppNotification;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/InAppNotification;->b(Lcom/yelp/android/database/l;)V

    .line 73
    const/4 v0, 0x0

    return-object v0
.end method
