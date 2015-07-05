.class Lcom/yelp/android/ui/activities/fb;
.super Ljava/lang/Object;
.source "DinoGridImageAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/cu;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/cu",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/fa;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/fa;I)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yelp/android/ui/activities/fb;->b:Lcom/yelp/android/ui/activities/fa;

    iput p2, p0, Lcom/yelp/android/ui/activities/fb;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 89
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/fb;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 3

    .prologue
    .line 92
    invoke-static {}, Lcom/yelp/android/ui/activities/fa;->a()[I

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/fb;->a:I

    invoke-static {}, Lcom/yelp/android/ui/activities/fa;->a()[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    .line 93
    iget-object v1, p0, Lcom/yelp/android/ui/activities/fb;->b:Lcom/yelp/android/ui/activities/fa;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/fa;->a(Lcom/yelp/android/ui/activities/fa;)Lcom/bumptech/glide/j;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Integer;)Lcom/bumptech/glide/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/d;->c()Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 94
    return-void
.end method
