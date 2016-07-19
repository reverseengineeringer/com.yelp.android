.class Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;
.super Lcom/yelp/android/ui/util/w;
.source "PhotoChrome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 594
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->a(Ljava/util/List;)V

    .line 595
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->a:Landroid/view/LayoutInflater;

    .line 596
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 600
    if-nez p2, :cond_0

    .line 601
    iget-object v0, p0, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030010

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 605
    :cond_0
    const v0, 0x7f0f00a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 606
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$c;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;->a(Lcom/yelp/android/ui/activities/photoviewer/PhotoChrome$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 610
    const/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 611
    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 612
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 613
    return-object p2
.end method
