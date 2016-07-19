.class final Lcom/yelp/android/ui/activities/businesspage/f$a;
.super Ljava/lang/Object;
.source "HealthDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/businesspage/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Lcom/yelp/android/webimageview/WebImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const v0, 0x7f0f0233

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f$a;->a:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0f0234

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f$a;->b:Landroid/widget/TextView;

    .line 51
    const v0, 0x7f0f0232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/f$a;->c:Lcom/yelp/android/webimageview/WebImageView;

    .line 52
    return-void
.end method
