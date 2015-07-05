.class Lcom/yelp/android/ui/util/bt;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/yelp/android/ui/util/j;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/yelp/android/ui/util/bv",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yelp/android/ui/util/bs;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/bs;)V
    .locals 1

    .prologue
    .line 287
    iput-object p1, p0, Lcom/yelp/android/ui/util/bt;->b:Lcom/yelp/android/ui/util/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/util/bt;->b:Lcom/yelp/android/ui/util/bs;

    invoke-static {v0}, Lcom/yelp/android/ui/util/bs;->a(Lcom/yelp/android/ui/util/bs;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/bt;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/j;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/util/bt;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/bv;

    .line 298
    iget-object v0, v0, Lcom/yelp/android/ui/util/bv;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/j;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/util/bt;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/bt;->a()Lcom/yelp/android/ui/util/j;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/yelp/android/ui/util/bt;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 304
    return-void
.end method
