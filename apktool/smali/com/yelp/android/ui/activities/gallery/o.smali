.class Lcom/yelp/android/ui/activities/gallery/o;
.super Ljava/lang/Object;
.source "LibraryCursorAdapter.java"


# instance fields
.field a:Landroid/widget/ImageView;

.field b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const v0, 0x7f0c00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/o;->a:Landroid/widget/ImageView;

    .line 153
    const v0, 0x7f0c04d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/gallery/o;->b:Landroid/widget/ImageView;

    .line 154
    return-void
.end method
