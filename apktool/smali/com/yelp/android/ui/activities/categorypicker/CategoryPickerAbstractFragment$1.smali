.class Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;
.super Ljava/lang/Object;
.source "CategoryPickerAbstractFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/categorypicker/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/ui/activities/categorypicker/c$a",
        "<TCategory;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/BizCategory;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCategory;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->A_()V

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->b(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/categorypicker/c;->c(Ljava/lang/Object;)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->d(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->e(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;->a(IZ)V

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$1;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 153
    :cond_0
    return-void
.end method
