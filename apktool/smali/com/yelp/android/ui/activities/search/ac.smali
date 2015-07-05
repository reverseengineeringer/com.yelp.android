.class Lcom/yelp/android/ui/activities/search/ac;
.super Ljava/lang/Object;
.source "SearchLocationAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const v0, 0x7f0c040d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/search/ac;->a:Landroid/widget/TextView;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/search/ac;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/ac;->a:Landroid/widget/TextView;

    return-object v0
.end method
