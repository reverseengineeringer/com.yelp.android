.class public final Lcom/yelp/android/ui/activities/talk/m;
.super Ljava/lang/Object;
.source "ButtonAdapter.java"


# instance fields
.field final a:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const v0, 0x7f0c043e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/talk/m;->a:Landroid/widget/Button;

    .line 109
    return-void
.end method
