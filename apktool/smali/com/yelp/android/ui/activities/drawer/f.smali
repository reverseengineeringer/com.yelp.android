.class Lcom/yelp/android/ui/activities/drawer/f;
.super Landroid/util/Property;
.source "DinoAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/drawer/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/drawer/a;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/yelp/android/ui/activities/drawer/f;->a:Lcom/yelp/android/ui/activities/drawer/a;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/ImageView;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/widget/ImageView;Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 337
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 338
    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 339
    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 328
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/drawer/f;->a(Landroid/widget/ImageView;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 328
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/drawer/f;->a(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    return-void
.end method
