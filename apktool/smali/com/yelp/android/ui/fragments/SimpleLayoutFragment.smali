.class public Lcom/yelp/android/ui/fragments/SimpleLayoutFragment;
.super Lcom/yelp/android/ui/activities/support/YelpFragment;
.source "SimpleLayoutFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpFragment;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .prologue
    .line 20
    new-instance v0, Lcom/yelp/android/ui/fragments/SimpleLayoutFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/fragments/SimpleLayoutFragment;-><init>()V

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    const-string/jumbo v2, "layout_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 24
    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/yelp/android/ui/fragments/SimpleLayoutFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "layout_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
