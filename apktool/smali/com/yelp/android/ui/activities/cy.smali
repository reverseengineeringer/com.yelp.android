.class final Lcom/yelp/android/ui/activities/cy;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"


# instance fields
.field final a:Landroid/widget/ImageView;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/TextView;

.field final d:Landroid/view/View;

.field final synthetic e:Lcom/yelp/android/ui/activities/cv;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/cv;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 430
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cy;->e:Lcom/yelp/android/ui/activities/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    const v0, 0x7f0c00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cy;->a:Landroid/widget/ImageView;

    .line 432
    const v0, 0x7f0c045c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cy;->c:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f0c045b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cy;->d:Landroid/view/View;

    .line 434
    const v0, 0x7f0c04d0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/cy;->b:Landroid/widget/ImageView;

    .line 435
    return-void
.end method
