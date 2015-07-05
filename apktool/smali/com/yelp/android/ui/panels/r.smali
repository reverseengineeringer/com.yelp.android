.class Lcom/yelp/android/ui/panels/r;
.super Ljava/lang/Object;
.source "BusinessCategorySuggestAdapter.java"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const v0, 0x7f0c01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/r;->a:Landroid/widget/TextView;

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/panels/q;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/r;-><init>(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/panels/r;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/ui/panels/r;->a:Landroid/widget/TextView;

    return-object v0
.end method
