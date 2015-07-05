.class public final Lcom/yelp/android/ui/activities/ej;
.super Ljava/lang/Object;
.source "CategoryAdapter.java"


# instance fields
.field public final a:Landroid/widget/CheckedTextView;

.field public final b:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const v0, 0x7f0c0084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ej;->a:Landroid/widget/CheckedTextView;

    .line 68
    const v0, 0x7f0c0217

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ej;->b:Landroid/widget/ImageView;

    .line 69
    return-void
.end method
