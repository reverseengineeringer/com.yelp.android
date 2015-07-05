.class Lcom/yelp/android/ui/panels/u;
.super Ljava/lang/Object;
.source "CategoryPickerAdapter.java"


# instance fields
.field public final a:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const v0, 0x7f0c0211

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yelp/android/ui/panels/u;->a:Landroid/widget/TextView;

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/yelp/android/ui/panels/t;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/panels/u;-><init>(Landroid/view/View;)V

    return-void
.end method
