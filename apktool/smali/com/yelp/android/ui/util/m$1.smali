.class Lcom/yelp/android/ui/util/m$1;
.super Landroid/os/AsyncTask;
.source "EasyCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/m;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/List",
        "<TFrom;>;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/m;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/m;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/yelp/android/ui/util/m$1;->a:Lcom/yelp/android/ui/util/m;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<TFrom;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    aget-object v1, p1, v0

    .line 53
    iget-object v2, p0, Lcom/yelp/android/ui/util/m$1;->a:Lcom/yelp/android/ui/util/m;

    new-instance v3, Landroid/util/SparseArray;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v2, v3}, Lcom/yelp/android/ui/util/m;->a(Lcom/yelp/android/ui/util/m;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 54
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v2

    .line 55
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 56
    iget-object v3, p0, Lcom/yelp/android/ui/util/m$1;->a:Lcom/yelp/android/ui/util/m;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/yelp/android/ui/util/m;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    iget-object v4, p0, Lcom/yelp/android/ui/util/m$1;->a:Lcom/yelp/android/ui/util/m;

    invoke-static {v4}, Lcom/yelp/android/ui/util/m;->a(Lcom/yelp/android/ui/util/m;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/ui/util/m$1;->a:Lcom/yelp/android/ui/util/m;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/m;->a(Lcom/yelp/android/ui/util/m;Z)Z

    .line 66
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/m$1;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 49
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/m$1;->a(Ljava/lang/Void;)V

    return-void
.end method
