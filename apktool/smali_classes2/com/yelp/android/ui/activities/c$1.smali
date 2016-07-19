.class Lcom/yelp/android/ui/activities/c$1;
.super Ljava/lang/Object;
.source "DinoGridImageAdapter.java"

# interfaces
.implements Lcom/yelp/android/ui/util/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/util/at$a",
        "<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/yelp/android/ui/activities/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/c;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/c$1;->b:Lcom/yelp/android/ui/activities/c;

    iput p2, p0, Lcom/yelp/android/ui/activities/c$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 83
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/c$1;->a(Landroid/widget/ImageView;II)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;II)V
    .locals 3

    .prologue
    .line 86
    invoke-static {}, Lcom/yelp/android/ui/activities/c;->a()[I

    move-result-object v0

    iget v1, p0, Lcom/yelp/android/ui/activities/c$1;->a:I

    invoke-static {}, Lcom/yelp/android/ui/activities/c;->a()[I

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v1, v2

    aget v0, v0, v1

    .line 87
    iget-object v1, p0, Lcom/yelp/android/ui/activities/c$1;->b:Lcom/yelp/android/ui/activities/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/c;->b(Lcom/yelp/android/ui/activities/c;)Lcom/yelp/android/ui/util/t;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/c$1;->b:Lcom/yelp/android/ui/activities/c;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/c;->a(Lcom/yelp/android/ui/activities/c;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/t;->a(Landroid/net/Uri;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/yelp/android/ui/util/u$a;->a(II)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 91
    return-void
.end method
