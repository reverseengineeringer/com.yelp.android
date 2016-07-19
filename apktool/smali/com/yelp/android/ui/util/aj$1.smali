.class Lcom/yelp/android/ui/util/aj$1;
.super Ljava/lang/Object;
.source "SectionedAdapter.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/aj;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/yelp/android/ui/util/g;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/yelp/android/ui/util/aj$b",
            "<*>;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/yelp/android/ui/util/aj;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/aj;)V
    .locals 1

    .prologue
    .line 305
    iput-object p1, p0, Lcom/yelp/android/ui/util/aj$1;->b:Lcom/yelp/android/ui/util/aj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$1;->b:Lcom/yelp/android/ui/util/aj;

    invoke-static {v0}, Lcom/yelp/android/ui/util/aj;->a(Lcom/yelp/android/ui/util/aj;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/aj$1;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/ui/util/g;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/aj$b;

    .line 316
    iget-object v0, v0, Lcom/yelp/android/ui/util/aj$b;->a:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/yelp/android/ui/util/g;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/aj$1;->a()Lcom/yelp/android/ui/util/g;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/yelp/android/ui/util/aj$1;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 322
    return-void
.end method
