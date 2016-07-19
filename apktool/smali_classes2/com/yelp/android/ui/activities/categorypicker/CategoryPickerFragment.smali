.class public Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;
.super Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
.source "CategoryPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;-><init>()V

    return-void
.end method

.method public static d(Ljava/util/ArrayList;)Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)",
            "Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;"
        }
    .end annotation

    .prologue
    .line 14
    new-instance v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;-><init>()V

    .line 15
    invoke-static {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->b(Ljava/util/ArrayList;)Landroid/os/Bundle;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    return-object v0
.end method


# virtual methods
.method protected a(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1}, Lcom/yelp/android/ui/activities/categorypicker/e;->a(Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 27
    return-void
.end method

.method protected c()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f10000d

    return v0
.end method

.method protected d()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0f0607

    return v0
.end method
