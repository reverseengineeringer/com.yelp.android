.class public Lcom/yelp/android/ui/util/aw;
.super Ljava/lang/Object;
.source "YelpImageViewBinder.java"

# interfaces
.implements Landroid/widget/SimpleAdapter$ViewBinder;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/yelp/android/ui/util/aw;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 34
    instance-of v1, p1, Lcom/yelp/android/ui/widgets/WebImageView;

    if-eqz v1, :cond_0

    .line 35
    check-cast p1, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 36
    iget v1, p0, Lcom/yelp/android/ui/util/aw;->a:I

    invoke-virtual {p1, p3, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 47
    :goto_0
    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 41
    check-cast p1, Landroid/widget/ImageView;

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result v1

    float-to-double v2, v1

    invoke-static {p1, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    goto :goto_0

    .line 43
    :cond_1
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_2

    instance-of v1, p2, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    .line 44
    check-cast p1, Landroid/widget/TextView;

    check-cast p2, Landroid/text/Spanned;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
