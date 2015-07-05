.class Lcom/yelp/android/ui/util/aa;
.super Ljava/lang/Object;
.source "GridViewSizer.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/cu;

.field final synthetic b:Lcom/yelp/android/ui/util/z;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/z;Lcom/yelp/android/ui/util/cu;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/util/aa;->b:Lcom/yelp/android/ui/util/z;

    iput-object p2, p0, Lcom/yelp/android/ui/util/aa;->a:Lcom/yelp/android/ui/util/cu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/util/aa;->b:Lcom/yelp/android/ui/util/z;

    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/ui/util/z;->b(II)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/util/aa;->a:Lcom/yelp/android/ui/util/cu;

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/ui/util/cu;->a(Landroid/view/View;II)V

    .line 90
    return-void
.end method
