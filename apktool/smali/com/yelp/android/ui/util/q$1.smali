.class Lcom/yelp/android/ui/util/q$1;
.super Ljava/lang/Object;
.source "GridViewSizer.java"

# interfaces
.implements Lcom/yelp/android/ui/util/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/q;->a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/at$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/at$a;

.field final synthetic b:Lcom/yelp/android/ui/util/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/q;Lcom/yelp/android/ui/util/at$a;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/ui/util/q$1;->b:Lcom/yelp/android/ui/util/q;

    iput-object p2, p0, Lcom/yelp/android/ui/util/q$1;->a:Lcom/yelp/android/ui/util/at$a;

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
    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/util/q$1;->b:Lcom/yelp/android/ui/util/q;

    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/ui/util/q;->b(II)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/util/q$1;->a:Lcom/yelp/android/ui/util/at$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/yelp/android/ui/util/at$a;->a(Landroid/view/View;II)V

    .line 91
    return-void
.end method
