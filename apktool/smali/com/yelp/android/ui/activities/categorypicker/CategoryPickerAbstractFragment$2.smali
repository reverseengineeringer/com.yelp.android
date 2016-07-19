.class Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;
.super Ljava/lang/Object;
.source "CategoryPickerAbstractFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->a(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Lcom/yelp/android/ui/activities/categorypicker/b$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->c(Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/categorypicker/b$a;->a(I)V

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$2;->a:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment;->i:Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/categorypicker/CategoryPickerAbstractFragment$a;->a(IZ)V

    .line 163
    return-void
.end method
