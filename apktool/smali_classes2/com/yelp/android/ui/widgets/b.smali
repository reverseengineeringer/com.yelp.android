.class public Lcom/yelp/android/ui/widgets/b;
.super Landroid/widget/RelativeLayout;
.source "ImageTextInSpanView.java"


# instance fields
.field public a:Lcom/yelp/android/ui/widgets/WebImageView;

.field public b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 20
    const v1, 0x7f030208

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 22
    const v0, 0x7f0f00a5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/widgets/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/b;->a:Lcom/yelp/android/ui/widgets/WebImageView;

    .line 23
    const v0, 0x7f0f0174

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/widgets/b;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/widgets/b;->b:Landroid/widget/TextView;

    .line 24
    return-void
.end method
