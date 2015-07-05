.class Lcom/yelp/android/ui/activities/gallery/l;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"

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
.field final synthetic a:Landroid/net/Uri;

.field final synthetic b:Lcom/yelp/android/ui/activities/gallery/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/gallery/k;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/yelp/android/ui/activities/gallery/l;->b:Lcom/yelp/android/ui/activities/gallery/k;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/gallery/l;->a:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/gallery/l;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/gallery/l;->b:Lcom/yelp/android/ui/activities/gallery/k;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/gallery/k;->a(Lcom/yelp/android/ui/activities/gallery/k;)Lcom/bumptech/glide/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/j;->g()Lcom/bumptech/glide/d;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/gallery/l;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/d;->a(Ljava/lang/Object;)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p2, p2}, Lcom/bumptech/glide/c;->a(II)Lcom/bumptech/glide/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Landroid/widget/ImageView;)Lcom/yelp/android/ag/j;

    .line 111
    return-void
.end method
